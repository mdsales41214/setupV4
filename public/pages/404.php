<?php
/**
 * 404 Error Page
 * energievergelijken.trade
 */

require_once __DIR__ . '/../../includes/config.php';

http_response_code(404);

$page_title = 'Pagina Niet Gevonden - 404';
$page_description = 'De pagina die u zoekt bestaat niet of is verplaatst.';
$page_robots = 'noindex, nofollow';

include INCLUDES_PATH . '/head.php';
include INCLUDES_PATH . '/header.php';
?>

<div class="error-page">
    <div class="container">
        <div class="error-content">
            <div class="error-number">404</div>
            <h1>Pagina Niet Gevonden</h1>
            <p class="error-message">
                Oeps! De pagina die u zoekt bestaat niet of is verplaatst.
            </p>

            <div class="error-actions">
                <a href="<?= BASE_URL ?>" class="btn btn-primary btn-lg">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"/>
                    </svg>
                    Terug naar Home
                </a>
                <a href="<?= BASE_URL ?>/pages/contact.php" class="btn btn-secondary btn-lg">
                    Contact
                </a>
            </div>

            <div class="error-suggestions">
                <h3>Populaire Pagina's:</h3>
                <ul>
                    <li><a href="<?= BASE_URL ?>">Energie Vergelijken</a></li>
                    <li><a href="<?= BASE_URL ?>/pages/hoe-werkt-het.php">Hoe Werkt Het?</a></li>
                    <li><a href="<?= BASE_URL ?>/pages/faq.php">Veelgestelde Vragen</a></li>
                    <li><a href="<?= BASE_URL ?>/pages/blog.php">Energietips Blog</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<?php include INCLUDES_PATH . '/footer.php'; ?>