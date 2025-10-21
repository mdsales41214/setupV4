 
<?php
/**
 * Helper Functions
 * energievergelijken.trade
 * 
 * Global utility functions for sanitization, formatting, and common operations
 */

declare(strict_types=1);

/**
 * Sanitize string input
 */
function sanitize_string(string $input): string
{
    $input = trim($input);
    $input = stripslashes($input);
    return htmlspecialchars($input, ENT_QUOTES | ENT_HTML5, 'UTF-8');
}

/**
 * Sanitize email
 */
function sanitize_email(string $email): string
{
    return filter_var(trim($email), FILTER_SANITIZE_EMAIL);
}

/**
 * Validate email
 */
function is_valid_email(string $email): bool
{
    return filter_var($email, FILTER_VALIDATE_EMAIL) !== false;
}

/**
 * Sanitize URL
 */
function sanitize_url(string $url): string
{
    return filter_var(trim($url), FILTER_SANITIZE_URL);
}

/**
 * Validate Dutch postal code
 */
function is_valid_postcode(string $postcode): bool
{
    $postcode = strtoupper(str_replace(' ', '', $postcode));
    return preg_match('/^[1-9][0-9]{3}[A-Z]{2}$/', $postcode) === 1;
}

/**
 * Format Dutch postal code
 */
function format_postcode(string $postcode): string
{
    $postcode = strtoupper(str_replace(' ', '', $postcode));
    if (strlen($postcode) === 6) {
        return substr($postcode, 0, 4) . ' ' . substr($postcode, 4);
    }
    return $postcode;
}

/**
 * Validate Dutch phone number
 */
function is_valid_phone(string $phone): bool
{
    $phone = preg_replace('/[^0-9+]/', '', $phone);
    return preg_match('/^(\+31|0)[1-9][0-9]{8}$/', $phone) === 1;
}

/**
 * Format currency (EUR)
 */
function format_currency(float $amount, bool $includeSymbol = true): string
{
    $formatted = number_format($amount, 2, ',', '.');
    return $includeSymbol ? '€ ' . $formatted : $formatted;
}

/**
 * Format date (Dutch)
 */
function format_date(string $date, string $format = 'd F Y'): string
{
    $months = [
        'January' => 'januari', 'February' => 'februari', 'March' => 'maart',
        'April' => 'april', 'May' => 'mei', 'June' => 'juni',
        'July' => 'juli', 'August' => 'augustus', 'September' => 'september',
        'October' => 'oktober', 'November' => 'november', 'December' => 'december'
    ];

    $formatted = date($format, strtotime($date));
    return str_replace(array_keys($months), array_values($months), $formatted);
}

/**
 * Truncate text
 */
function truncate_text(string $text, int $length = 150, string $suffix = '...'): string
{
    if (mb_strlen($text) <= $length) {
        return $text;
    }

    $truncated = mb_substr($text, 0, $length);
    $lastSpace = mb_strrpos($truncated, ' ');

    if ($lastSpace !== false) {
        $truncated = mb_substr($truncated, 0, $lastSpace);
    }

    return $truncated . $suffix;
}

/**
 * Generate CSRF token
 */
function generate_csrf_token(): string
{
    if (empty($_SESSION[CSRF_TOKEN_NAME])) {
        $_SESSION[CSRF_TOKEN_NAME] = bin2hex(random_bytes(32));
    }
    return $_SESSION[CSRF_TOKEN_NAME];
}

/**
 * Validate CSRF token
 */
function validate_csrf_token(string $token): bool
{
    return isset($_SESSION[CSRF_TOKEN_NAME]) && hash_equals($_SESSION[CSRF_TOKEN_NAME], $token);
}

/**
 * Get CSRF input field
 */
function csrf_field(): string
{
    $token = generate_csrf_token();
    return sprintf('<input type="hidden" name="%s" value="%s">', CSRF_TOKEN_NAME, $token);
}

/**
 * Redirect helper
 */
function redirect(string $url, int $statusCode = 302): void
{
    header('Location: ' . $url, true, $statusCode);
    exit;
}

/**
 * Get current URL
 */
function current_url(): string
{
    $protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'https' : 'http';
    return $protocol . '://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
}

/**
 * Check if request is AJAX
 */
function is_ajax_request(): bool
{
    return isset($_SERVER['HTTP_X_REQUESTED_WITH']) && 
           strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) === 'xmlhttprequest';
}

/**
 * Get client IP address
 */
function get_client_ip(): string
{
    $headers = [
        'HTTP_CLIENT_IP',
        'HTTP_X_FORWARDED_FOR',
        'HTTP_X_FORWARDED',
        'HTTP_X_CLUSTER_CLIENT_IP',
        'HTTP_FORWARDED_FOR',
        'HTTP_FORWARDED',
        'REMOTE_ADDR'
    ];

    foreach ($headers as $header) {
        if (isset($_SERVER[$header])) {
            $ip = $_SERVER[$header];
            if (filter_var($ip, FILTER_VALIDATE_IP)) {
                return $ip;
            }
        }
    }

    return $_SERVER['REMOTE_ADDR'] ?? '0.0.0.0';
}

/**
 * Calculate energy savings
 */
function calculate_savings(float $currentPrice, float $newPrice, float $yearlyUsage): float
{
    return ($currentPrice - $newPrice) * $yearlyUsage;
}

/**
 * Format energy usage
 */
function format_usage(int $kwh): string
{
    return number_format($kwh, 0, ',', '.') . ' kWh';
}

/**
 * Get energy label color
 */
function get_energy_label_color(string $label): string
{
    $colors = [
        'A+++' => '#00a651',
        'A++' => '#4caf50',
        'A+' => '#8bc34a',
        'A' => '#cddc39',
        'B' => '#ffeb3b',
        'C' => '#ffc107',
        'D' => '#ff9800',
        'E' => '#ff5722',
        'F' => '#f44336',
        'G' => '#d32f2f'
    ];

    return $colors[strtoupper($label)] ?? '#757575';
}

/**
 * Track Daisycon conversion
 */
function track_daisycon_conversion(string $type, float $value, string $orderId): void
{
    if (!DAISYCON_TRACKING_ENABLED) {
        return;
    }

    $params = [
        'program_id' => $_ENV['DAISYCON_PUBLISHER_ID'],
        'order_id' => $orderId,
        'amount' => $value,
        'currency' => 'EUR',
        'type' => $type // 'energy' or 'gas'
    ];

    // This will be called from the template for pixel tracking
    $_SESSION['daisycon_conversion'] = $params;
}

/**
 * Simple cache implementation
 */
function cache_get(string $key)
{
    if (!CACHE_ENABLED) {
        return null;
    }

    $cacheFile = CACHE_PATH . '/' . CACHE_PREFIX . md5($key) . '.cache';

    if (!file_exists($cacheFile)) {
        return null;
    }

    $data = unserialize(file_get_contents($cacheFile));

    if ($data['expires'] < time()) {
        unlink($cacheFile);
        return null;
    }

    return $data['value'];
}

/**
 * Cache set
 */
function cache_set(string $key, $value, int $ttl = null): void
{
    if (!CACHE_ENABLED) {
        return;
    }

    $ttl = $ttl ?? CACHE_DEFAULT_TTL;
    $cacheFile = CACHE_PATH . '/' . CACHE_PREFIX . md5($key) . '.cache';

    $data = [
        'expires' => time() + $ttl,
        'value' => $value
    ];

    if (!is_dir(CACHE_PATH)) {
        mkdir(CACHE_PATH, 0755, true);
    }

    file_put_contents($cacheFile, serialize($data));
}