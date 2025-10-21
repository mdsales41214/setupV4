<?php
/**
 * Application Constants
 * energievergelijken.trade
 * 
 * All app-wide constants and configuration values
 */

declare(strict_types=1);

// Paths
define('ROOT_PATH', dirname(__DIR__));
define('PUBLIC_PATH', ROOT_PATH . '/public');
define('INCLUDES_PATH', ROOT_PATH . '/includes');
define('CONFIG_PATH', ROOT_PATH . '/config');
define('UPLOAD_PATH', PUBLIC_PATH . '/assets/uploads');
define('LOGS_PATH', ROOT_PATH . '/logs');
define('CACHE_PATH', ROOT_PATH . '/cache');

// URLs
define('BASE_URL', rtrim($_ENV['APP_URL'] ?? 'http://localhost', '/'));
define('ASSETS_URL', BASE_URL . '/assets');
define('IMAGES_URL', ASSETS_URL . '/images');
define('CDN_URL', $_ENV['CDN_URL'] ?? ASSETS_URL);

// Application Info
define('APP_NAME', 'Energievergelijken.trade');
define('APP_VERSION', '1.0.0');
define('APP_LOCALE', 'nl_NL');
define('APP_TIMEZONE', 'Europe/Amsterdam');

// Security Settings
define('SESSION_NAME', 'energievergelijken_session');
define('COOKIE_LIFETIME', (int)($_ENV['SESSION_LIFETIME'] ?? 7200));
define('COOKIE_SECURE', isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on');
define('COOKIE_HTTPONLY', true);
define('COOKIE_SAMESITE', 'Strict');

// Rate Limiting (per IP)
define('RATE_LIMIT_REQUESTS', 10);
define('RATE_LIMIT_WINDOW', 60); // seconds
define('RATE_LIMIT_FORM_REQUESTS', 5);
define('RATE_LIMIT_FORM_WINDOW', 300); // 5 minutes

// File Upload Limits
define('MAX_UPLOAD_SIZE', 5 * 1024 * 1024); // 5MB
define('ALLOWED_IMAGE_TYPES', ['image/jpeg', 'image/png', 'image/webp']);
define('ALLOWED_DOC_TYPES', ['application/pdf']);

// Pagination
define('POSTS_PER_PAGE', 12);
define('COMPARISON_RESULTS_PER_PAGE', 10);
define('MAX_PAGINATION_LINKS', 5);

// Energy Provider Settings
define('MIN_PROVIDERS_TO_COMPARE', 3);
define('MAX_PROVIDERS_TO_COMPARE', 10);
define('PRICE_UPDATE_INTERVAL', 3600); // 1 hour
define('CACHE_PROVIDER_DATA', true);

// Daisycon Integration
define('DAISYCON_CONVERSION_PIXEL', true);
define('DAISYCON_TRACKING_ENABLED', true);
define('CONVERSION_VALUE_ENERGY', 15.00); // EUR per conversion
define('CONVERSION_VALUE_GAS', 12.00); // EUR per conversion

// SEO Settings
define('META_TITLE_SUFFIX', ' | Energievergelijken.trade');
define('META_DESCRIPTION_LENGTH', 155);
define('SITEMAP_CACHE_TIME', 86400); // 24 hours

// Contact Form
define('CONTACT_RECIPIENT', $_ENV['ADMIN_EMAIL'] ?? 'info@energievergelijken.trade');
define('CONTACT_SUBJECT_PREFIX', '[Contact] ');
define('HONEYPOT_FIELD_NAME', 'website_url');

// Error Reporting
define('DISPLAY_ERRORS', $_ENV['APP_DEBUG'] === 'true');
define('LOG_ERRORS', true);
define('ERROR_LOG_FILE', LOGS_PATH . '/error.log');

// API Timeouts
define('API_TIMEOUT', 10);
define('API_CONNECT_TIMEOUT', 5);

// Cache Settings
define('CACHE_ENABLED', $_ENV['ENABLE_CACHE'] === 'true');
define('CACHE_PREFIX', 'energievergelijken_');
define('CACHE_DEFAULT_TTL', (int)($_ENV['CACHE_LIFETIME'] ?? 3600));

// Social Media
define('SOCIAL_FACEBOOK', 'https://facebook.com/energievergelijken');
define('SOCIAL_TWITTER', 'https://twitter.com/energievergelijk');
define('SOCIAL_LINKEDIN', 'https://linkedin.com/company/energievergelijken');

// Business Info (for Schema.org)
define('COMPANY_NAME', 'Energievergelijken.trade BV');
define('COMPANY_ADDRESS', 'Hoofdstraat 123, 1012 AB Amsterdam');
define('COMPANY_PHONE', '+31 20 123 4567');
define('COMPANY_EMAIL', 'info@energievergelijken.trade');
define('COMPANY_KVK', '12345678');
define('COMPANY_BTW', 'NL123456789B01');

// Operating Hours (for Schema.org)
define('BUSINESS_HOURS', [
    'Monday' => '09:00-17:00',
    'Tuesday' => '09:00-17:00',
    'Wednesday' => '09:00-17:00',
    'Thursday' => '09:00-17:00',
    'Friday' => '09:00-17:00',
    'Saturday' => 'Closed',
    'Sunday' => 'Closed'
]);