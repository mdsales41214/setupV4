 
<?php
/**
 * Database Configuration & Connection
 * energievergelijken.trade
 * 
 * PDO-based database connection with error handling
 */

declare(strict_types=1);

namespace App\Database;

use PDO;
use PDOException;

class Database
{
    private static ?PDO $instance = null;
    private static array $config = [];

    /**
     * Get database connection instance (Singleton)
     */
    public static function getInstance(): PDO
    {
        if (self::$instance === null) {
            self::$instance = self::createConnection();
        }

        return self::$instance;
    }

    /**
     * Create new PDO connection
     */
    private static function createConnection(): PDO
    {
        self::loadConfig();

        $dsn = sprintf(
            'mysql:host=%s;port=%d;dbname=%s;charset=%s',
            self::$config['host'],
            self::$config['port'],
            self::$config['name'],
            self::$config['charset']
        );

        $options = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES => false,
            PDO::ATTR_PERSISTENT => false,
            PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES " . self::$config['charset'],
            PDO::MYSQL_ATTR_FOUND_ROWS => true,
            PDO::ATTR_STRINGIFY_FETCHES => false
        ];

        try {
            $pdo = new PDO(
                $dsn,
                self::$config['user'],
                self::$config['pass'],
                $options
            );

            // Log successful connection in development
            if (DISPLAY_ERRORS) {
                error_log('Database connected successfully');
            }

            return $pdo;

        } catch (PDOException $e) {
            // Log error securely
            error_log('Database connection failed: ' . $e->getMessage());

            // Show generic error to user
            if (DISPLAY_ERRORS) {
                die('Database connection failed. Check error log for details.');
            } else {
                die('Er is een technische fout opgetreden. Probeer het later opnieuw.');
            }
        }
    }

    /**
     * Load database configuration from environment
     */
    private static function loadConfig(): void
    {
        self::$config = [
            'host' => $_ENV['DB_HOST'] ?? 'localhost',
            'port' => (int)($_ENV['DB_PORT'] ?? 3306),
            'name' => $_ENV['DB_NAME'] ?? '',
            'user' => $_ENV['DB_USER'] ?? '',
            'pass' => $_ENV['DB_PASS'] ?? '',
            'charset' => $_ENV['DB_CHARSET'] ?? 'utf8mb4'
        ];

        // Validate required fields
        if (empty(self::$config['name']) || empty(self::$config['user'])) {
            die('Database configuration is incomplete. Check .env file.');
        }
    }

    /**
     * Execute a prepared statement
     * 
     * @param string $sql SQL query with placeholders
     * @param array $params Parameters to bind
     * @return \PDOStatement
     */
    public static function query(string $sql, array $params = []): \PDOStatement
    {
        $db = self::getInstance();
        $stmt = $db->prepare($sql);
        $stmt->execute($params);
        return $stmt;
    }

    /**
     * Fetch single row
     */
    public static function fetchOne(string $sql, array $params = []): ?array
    {
        $stmt = self::query($sql, $params);
        $result = $stmt->fetch();
        return $result ?: null;
    }

    /**
     * Fetch all rows
     */
    public static function fetchAll(string $sql, array $params = []): array
    {
        $stmt = self::query($sql, $params);
        return $stmt->fetchAll();
    }

    /**
     * Get last insert ID
     */
    public static function lastInsertId(): string
    {
        return self::getInstance()->lastInsertId();
    }

    /**
     * Begin transaction
     */
    public static function beginTransaction(): bool
    {
        return self::getInstance()->beginTransaction();
    }

    /**
     * Commit transaction
     */
    public static function commit(): bool
    {
        return self::getInstance()->commit();
    }

    /**
     * Rollback transaction
     */
    public static function rollback(): bool
    {
        return self::getInstance()->rollBack();
    }

    /**
     * Close connection
     */
    public static function close(): void
    {
        self::$instance = null;
    }
}