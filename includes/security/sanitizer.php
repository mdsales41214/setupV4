 
<?php
/**
 * Input/Output Sanitizer
 * energievergelijken.trade
 * 
 * Centralized sanitization functions for all user input and output
 */

declare(strict_types=1);

class Sanitizer
{
    /**
     * Sanitize string for output (HTML context)
     */
    public static function html(string $input): string
    {
        return htmlspecialchars($input, ENT_QUOTES | ENT_HTML5, 'UTF-8');
    }

    /**
     * Sanitize for HTML attribute
     */
    public static function attribute(string $input): string
    {
        return htmlspecialchars($input, ENT_QUOTES | ENT_HTML5, 'UTF-8');
    }

    /**
     * Sanitize for JavaScript context
     */
    public static function javascript(string $input): string
    {
        return json_encode($input, JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT);
    }

    /**
     * Sanitize for URL parameter
     */
    public static function url(string $input): string
    {
        return urlencode($input);
    }

    /**
     * Sanitize email
     */
    public static function email(string $email): string
    {
        $email = filter_var(trim($email), FILTER_SANITIZE_EMAIL);
        return strtolower($email);
    }

    /**
     * Sanitize phone number (Dutch format)
     */
    public static function phone(string $phone): string
    {
        // Remove all non-numeric characters except +
        return preg_replace('/[^0-9+]/', '', $phone);
    }

    /**
     * Sanitize postcode (Dutch format)
     */
    public static function postcode(string $postcode): string
    {
        $postcode = strtoupper(str_replace(' ', '', $postcode));
        
        if (preg_match('/^([1-9][0-9]{3})([A-Z]{2})$/', $postcode, $matches)) {
            return $matches[1] . ' ' . $matches[2];
        }
        
        return $postcode;
    }

    /**
     * Sanitize integer
     */
    public static function integer($input): int
    {
        return (int) filter_var($input, FILTER_SANITIZE_NUMBER_INT);
    }

    /**
     * Sanitize float
     */
    public static function float($input): float
    {
        return (float) filter_var($input, FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
    }

    /**
     * Sanitize filename
     */
    public static function filename(string $filename): string
    {
        // Remove directory traversal attempts
        $filename = basename($filename);
        
        // Remove special characters
        $filename = preg_replace('/[^a-zA-Z0-9._-]/', '_', $filename);
        
        return $filename;
    }

    /**
     * Sanitize array recursively
     */
    public static function array_recursive(array $data, string $method = 'html'): array
    {
        $sanitized = [];
        
        foreach ($data as $key => $value) {
            $key = self::html($key);
            
            if (is_array($value)) {
                $sanitized[$key] = self::array_recursive($value, $method);
            } else {
                $sanitized[$key] = self::$method((string) $value);
            }
        }
        
        return $sanitized;
    }

    /**
     * Strip all HTML tags
     */
    public static function strip_tags(string $input, array $allowed_tags = []): string
    {
        if (empty($allowed_tags)) {
            return strip_tags($input);
        }
        
        return strip_tags($input, '<' . implode('><', $allowed_tags) . '>');
    }

    /**
     * Sanitize for SQL LIKE query
     */
    public static function sql_like(string $input): string
    {
        // Escape special LIKE characters
        $input = str_replace(['%', '_'], ['\\%', '\\_'], $input);
        return $input;
    }

    /**
     * Clean up whitespace
     */
    public static function whitespace(string $input): string
    {
        // Remove multiple spaces, tabs, newlines
        $input = preg_replace('/\s+/', ' ', $input);
        return trim($input);
    }

    /**
     * Sanitize rich text (for blog/CMS content)
     */
    public static function rich_text(string $input): string
    {
        $allowed_tags = ['p', 'br', 'strong', 'em', 'u', 'a', 'ul', 'ol', 'li', 'h2', 'h3', 'h4', 'blockquote'];
        
        // Strip dangerous tags
        $input = strip_tags($input, '<' . implode('><', $allowed_tags) . '>');
        
        // Remove dangerous attributes
        $input = preg_replace('/<([a-z]+)([^>]*)(on\w+=["\'][^"\']*["\'])([^>]*)>/i', '<$1$2$4>', $input);
        
        // Remove javascript: protocol
        $input = preg_replace('/href=["\']javascript:[^"\']*["\']/i', '', $input);
        
        return $input;
    }

    /**
     * Validate and sanitize energy usage input
     */
    public static function energy_usage($input): int
    {
        $usage = self::integer($input);
        
        // Reasonable limits for household energy usage (kWh per year)
        if ($usage < 0) {
            $usage = 0;
        } elseif ($usage > 50000) {
            $usage = 50000;
        }
        
        return $usage;
    }

    /**
     * Sanitize search query
     */
    public static function search_query(string $query): string
    {
        // Remove special characters but keep spaces and basic punctuation
        $query = preg_replace('/[^\w\s\-]/', '', $query);
        $query = self::whitespace($query);
        
        // Limit length
        if (mb_strlen($query) > 100) {
            $query = mb_substr($query, 0, 100);
        }
        
        return $query;
    }
}