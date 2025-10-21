 
<?php
/**
 * Bootstrap Configuration
 * energievergelijken.trade
 * 
 * Main configuration file - loads environment, constants, and core dependencies
 */

declare(strict_types=1);

// Start session with secure settings
if (session_status() === PHP_SESSION_NONE) {
    session_set_cookie_params([
        'lifetime' => COOKIE_LIFETIME ?? 7200,
        'path' => '/',
        'domain' => parse_url($_ENV['APP_URL'] ?? '', PHP_URL_HOST) ?: '',
        'secure' => isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on',
        'httponly' => true,
        'samesite' => 'Strict'
    ]);
    session_name(SESSION_NAME ?? 'energievergelijken_session');
    session_start();
}

// Load environment variables
if (file_exists(__DIR__ . '/../vendor/autoload.php')) {
    require_once __DIR__ . '/../vendor/autoload.php';
    
    // Load .env file
    if (class_exists('Dotenv\Dotenv')) {
        $dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . '/../config');
        $dotenv->load();
    }
}

// Load constants
require_once __DIR__ . '/../config/constants.php';

// Set timezone
date_default_timezone_set(APP_TIMEZONE);

// Set locale
setlocale(LC_ALL, APP_LOCALE);

// Error handling based on environment
if (DISPLAY_ERRORS) {
    error_reporting(E_ALL);
    ini_set('display_errors', '1');
    ini_set('display_startup_errors', '1');
} else {
    error_reporting(E_ALL & ~E_DEPRECATED & ~E_STRICT);
    ini_set('display_errors', '0');
    ini_set('log_errors', '1');
    ini_set('error_log', ERROR_LOG_FILE);
}

// Custom error handler for production
set_error_handler(function ($severity, $message, $file, $line) {
    if (!(error_reporting() & $severity)) {
        return false;
    }

    $error = sprintf(
        "[%s] %s in %s on line %d",
        date('Y-m-d H:i:s'),
        $message,
        $file,
        $line
    );

    error_log($error, 3, ERROR_LOG_FILE);

    if (DISPLAY_ERRORS) {
        echo "<pre>$error</pre>";
    }

    return true;
});

// Custom exception handler
set_exception_handler(function ($exception) {
    $error = sprintf(
        "[%s] Uncaught Exception: %s in %s:%d\nStack trace:\n%s",
        date('Y-m-d H:i:s'),
        $exception->getMessage(),
        $exception->getFile(),
        $exception->getLine(),
        $exception->getTraceAsString()
    );

    error_log($error, 3, ERROR_LOG_FILE);

    if (DISPLAY_ERRORS) {
        echo "<pre>$error</pre>";
    } else {
        http_response_code(500);
        include PUBLIC_PATH . '/500.html';
    }
});

// Register shutdown function for fatal errors
register_shutdown_function(function () {
    $error = error_get_last();
    if ($error !== null && in_array($error['type'], [E_ERROR, E_PARSE, E_CORE_ERROR, E_COMPILE_ERROR])) {
        $message = sprintf(
            "[%s] Fatal Error: %s in %s on line %d",
            date('Y-m-d H:i:s'),
            $error['message'],
            $error['file'],
            $error['line']
        );
        error_log($message, 3, ERROR_LOG_FILE);
    }
});

// Load helper functions
require_once __DIR__ . '/functions.php';

// Load database class
require_once __DIR__ . '/../config/database.php';

// Security headers (basic - will be enhanced in security/headers.php)
header('X-Frame-Options: SAMEORIGIN');
header('X-Content-Type-Options: nosniff');
header('X-XSS-Protection: 1; mode=block');
header('Referrer-Policy: strict-origin-when-cross-origin');

// HTTPS redirect in production
if ($_ENV['APP_ENV'] === 'production' && (!isset($_SERVER['HTTPS']) || $_SERVER['HTTPS'] !== 'on')) {
    $redirect = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    header('HTTP/1.1 301 Moved Permanently');
    header('Location: ' . $redirect);
    exit;
}