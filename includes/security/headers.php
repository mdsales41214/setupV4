 
<?php
/**
 * Security Headers
 * energievergelijken.trade
 * 
 * Comprehensive security headers including CSP, HSTS, and more
 */

declare(strict_types=1);

/**
 * Set all security headers
 */
function set_security_headers(): void
{
    // Prevent clickjacking
    header('X-Frame-Options: SAMEORIGIN');
    
    // Prevent MIME type sniffing
    header('X-Content-Type-Options: nosniff');
    
    // XSS Protection (legacy, but still useful)
    header('X-XSS-Protection: 1; mode=block');
    
    // Referrer Policy - strict for privacy
    header('Referrer-Policy: strict-origin-when-cross-origin');
    
    // Permissions Policy (formerly Feature-Policy)
    $permissions = [
        'geolocation=()',
        'microphone=()',
        'camera=()',
        'payment=(self)',
        'usb=()',
        'magnetometer=()',
        'gyroscope=()',
        'accelerometer=()'
    ];
    header('Permissions-Policy: ' . implode(', ', $permissions));
    
    // HSTS - Force HTTPS (only in production)
    if ($_ENV['APP_ENV'] === 'production') {
        header('Strict-Transport-Security: max-age=31536000; includeSubDomains; preload');
    }
    
    // Content Security Policy
    set_csp_header();
    
    // Expect-CT (Certificate Transparency)
    if ($_ENV['APP_ENV'] === 'production') {
        header('Expect-CT: max-age=86400, enforce');
    }
}

/**
 * Set Content Security Policy
 */
function set_csp_header(): void
{
    $csp_directives = [
        "default-src 'self'",
        "script-src 'self' 'unsafe-inline' https://www.googletagmanager.com https://www.google-analytics.com https://tc.tradetracker.net",
        "style-src 'self' 'unsafe-inline' https://fonts.googleapis.com",
        "font-src 'self' https://fonts.gstatic.com",
        "img-src 'self' data: https: http:",
        "connect-src 'self' https://www.google-analytics.com https://stats.g.doubleclick.net",
        "frame-src 'self'",
        "object-src 'none'",
        "base-uri 'self'",
        "form-action 'self'",
        "frame-ancestors 'self'",
        "upgrade-insecure-requests"
    ];
    
    // Development: Report-only mode
    if ($_ENV['APP_ENV'] === 'development') {
        header('Content-Security-Policy-Report-Only: ' . implode('; ', $csp_directives));
    } else {
        header('Content-Security-Policy: ' . implode('; ', $csp_directives));
    }
}

/**
 * Remove sensitive server headers
 */
function remove_server_headers(): void
{
    header_remove('X-Powered-By');
    header_remove('Server');
}

// Auto-execute on include
set_security_headers();
remove_server_headers();