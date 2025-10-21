 
<?php
/**
 * CSRF Protection
 * energievergelijken.trade
 * 
 * Cross-Site Request Forgery token generation and validation
 */

declare(strict_types=1);

class CSRF
{
    private const TOKEN_LENGTH = 32;
    private const TOKEN_LIFETIME = 3600; // 1 hour

    /**
     * Generate CSRF token
     */
    public static function generate_token(): string
    {
        if (!isset($_SESSION['csrf_tokens'])) {
            $_SESSION['csrf_tokens'] = [];
        }

        // Clean old tokens
        self::clean_old_tokens();

        // Generate new token
        $token = bin2hex(random_bytes(self::TOKEN_LENGTH));
        
        $_SESSION['csrf_tokens'][$token] = [
            'created' => time(),
            'used' => false
        ];

        return $token;
    }

    /**
     * Validate CSRF token
     */
    public static function validate_token(string $token): bool
    {
        if (!isset($_SESSION['csrf_tokens'][$token])) {
            return false;
        }

        $token_data = $_SESSION['csrf_tokens'][$token];

        // Check if token is expired
        if ((time() - $token_data['created']) > self::TOKEN_LIFETIME) {
            unset($_SESSION['csrf_tokens'][$token]);
            return false;
        }

        // Check if token was already used (prevent replay attacks)
        if ($token_data['used']) {
            return false;
        }

        // Mark token as used
        $_SESSION['csrf_tokens'][$token]['used'] = true;

        return true;
    }

    /**
     * Get token from request
     */
    public static function get_token_from_request(): ?string
    {
        // Check POST data
        if (isset($_POST[CSRF_TOKEN_NAME])) {
            return $_POST[CSRF_TOKEN_NAME];
        }

        // Check headers (for AJAX requests)
        if (isset($_SERVER['HTTP_X_CSRF_TOKEN'])) {
            return $_SERVER['HTTP_X_CSRF_TOKEN'];
        }

        return null;
    }

    /**
     * Verify request has valid CSRF token
     */
    public static function verify_request(): bool
    {
        $token = self::get_token_from_request();

        if ($token === null) {
            return false;
        }

        return self::validate_token($token);
    }

    /**
     * Clean old/expired tokens
     */
    private static function clean_old_tokens(): void
    {
        if (!isset($_SESSION['csrf_tokens'])) {
            return;
        }

        $current_time = time();

        foreach ($_SESSION['csrf_tokens'] as $token => $data) {
            if (($current_time - $data['created']) > self::TOKEN_LIFETIME) {
                unset($_SESSION['csrf_tokens'][$token]);
            }
        }
    }

    /**
     * Generate HTML hidden input field
     */
    public static function field(): string
    {
        $token = self::generate_token();
        return sprintf(
            '<input type="hidden" name="%s" value="%s">',
            CSRF_TOKEN_NAME,
            htmlspecialchars($token, ENT_QUOTES)
        );
    }

    /**
     * Get token for AJAX requests
     */
    public static function get_ajax_token(): string
    {
        return self::generate_token();
    }

    /**
     * Protect form submission
     */
    public static function protect_form(): void
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            if (!self::verify_request()) {
                http_response_code(403);
                die('CSRF token validation failed. Please refresh the page and try again.');
            }
        }
    }
}