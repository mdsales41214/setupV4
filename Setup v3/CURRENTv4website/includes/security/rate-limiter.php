 
<?php
/**
 * Rate Limiter
 * energievergelijken.trade
 * 
 * Prevent brute force attacks and API abuse
 */

declare(strict_types=1);

class RateLimiter
{
    private const CACHE_PREFIX = 'rate_limit_';

    /**
     * Check if rate limit is exceeded
     */
    public static function is_limited(string $key, int $max_requests, int $window_seconds): bool
    {
        $cache_key = self::CACHE_PREFIX . md5($key);
        $current_time = time();

        // Get current request data
        $data = cache_get($cache_key) ?? [
            'count' => 0,
            'reset_time' => $current_time + $window_seconds
        ];

        // Reset if window expired
        if ($current_time >= $data['reset_time']) {
            $data = [
                'count' => 0,
                'reset_time' => $current_time + $window_seconds
            ];
        }

        // Increment count
        $data['count']++;

        // Save back to cache
        cache_set($cache_key, $data, $window_seconds);

        // Check if limit exceeded
        return $data['count'] > $max_requests;
    }

    /**
     * Rate limit by IP address
     */
    public static function limit_by_ip(int $max_requests = null, int $window = null): bool
    {
        $max_requests = $max_requests ?? RATE_LIMIT_REQUESTS;
        $window = $window ?? RATE_LIMIT_WINDOW;
        
        $ip = get_client_ip();
        return self::is_limited("ip_{$ip}", $max_requests, $window);
    }

    /**
     * Rate limit form submissions
     */
    public static function limit_form(string $form_name): bool
    {
        $ip = get_client_ip();
        $key = "form_{$form_name}_{$ip}";
        
        return self::is_limited(
            $key,
            RATE_LIMIT_FORM_REQUESTS,
            RATE_LIMIT_FORM_WINDOW
        );
    }

    /**
     * Rate limit API endpoints
     */
    public static function limit_api(string $endpoint, string $identifier): bool
    {
        $key = "api_{$endpoint}_{$identifier}";
        return self::is_limited($key, 60, 60); // 60 requests per minute
    }

    /**
     * Get remaining attempts
     */
    public static function get_remaining(string $key, int $max_requests, int $window_seconds): int
    {
        $cache_key = self::CACHE_PREFIX . md5($key);
        $data = cache_get($cache_key);

        if (!$data) {
            return $max_requests;
        }

        $remaining = $max_requests - $data['count'];
        return max(0, $remaining);
    }

    /**
     * Get reset time
     */
    public static function get_reset_time(string $key): ?int
    {
        $cache_key = self::CACHE_PREFIX . md5($key);
        $data = cache_get($cache_key);

        return $data['reset_time'] ?? null;
    }

    /**
     * Block request if rate limited
     */
    public static function protect(string $key, int $max_requests, int $window_seconds): void
    {
        if (self::is_limited($key, $max_requests, $window_seconds)) {
            $reset_time = self::get_reset_time($key);
            $wait_seconds = $reset_time ? $reset_time - time() : $window_seconds;

            http_response_code(429);
            header('Retry-After: ' . $wait_seconds);
            
            die(json_encode([
                'error' => 'Te veel verzoeken. Probeer het later opnieuw.',
                'retry_after' => $wait_seconds
            ]));
        }
    }

    /**
     * Clear rate limit for a key
     */
    public static function clear(string $key): void
    {
        $cache_key = self::CACHE_PREFIX . md5($key);
        cache_set($cache_key, null, 1);
    }
}