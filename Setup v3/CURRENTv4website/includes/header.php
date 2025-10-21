 
<?php
/**
 * Site Header
 * energievergelijken.trade
 * 
 * Main navigation with mobile-first responsive design
 */
?>
<body>
    <!-- GTM noscript -->
    <?php if (!empty($_ENV['GTM_CONTAINER_ID'])): ?>
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=<?= $_ENV['GTM_CONTAINER_ID'] ?>"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <?php endif; ?>
    
    <!-- Skip to main content (accessibility) -->
    <a href="#main-content" class="skip-link">Skip naar hoofdinhoud</a>
    
    <header class="site-header" role="banner">
        <div class="header-container container">
            <!-- Logo -->
            <div class="header-logo">
                <a href="<?= BASE_URL ?>" aria-label="Ga naar homepage">
                    <img src="<?= IMAGES_URL ?>/logo.svg" alt="<?= APP_NAME ?>" width="220" height="50">
                </a>
            </div>
            
            <!-- Desktop Navigation -->
            <nav class="header-nav" role="navigation" aria-label="Hoofdnavigatie">
                <ul class="nav-menu">
                    <li><a href="<?= BASE_URL ?>" class="nav-link">Home</a></li>
                    <li><a href="<?= BASE_URL ?>/energievergelijker" class="nav-link">Vergelijken</a></li>
                    <li><a href="<?= BASE_URL ?>/energietips" class="nav-link">Energietips</a></li>
                    <li><a href="<?= BASE_URL ?>/blog" class="nav-link">Blog</a></li>
                    <li><a href="<?= BASE_URL ?>/pages/contact.php" class="nav-link">Contact</a></li>
                </ul>
            </nav>
            
            <!-- CTA Button -->
            <div class="header-cta">
                <a href="<?= BASE_URL ?>/energievergelijker" class="btn btn-primary">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 20 20" aria-hidden="true">
                        <path d="M9 2a1 1 0 000 2h2a1 1 0 100-2H9z"/>
                        <path fill-rule="evenodd" d="M4 5a2 2 0 012-2 3 3 0 003 3h2a3 3 0 003-3 2 2 0 012 2v11a2 2 0 01-2 2H6a2 2 0 01-2-2V5zm3 4a1 1 0 000 2h.01a1 1 0 100-2H7zm3 0a1 1 0 000 2h3a1 1 0 100-2h-3zm-3 4a1 1 0 100 2h.01a1 1 0 100-2H7zm3 0a1 1 0 100 2h3a1 1 0 100-2h-3z" clip-rule="evenodd"/>
                    </svg>
                    Nu Vergelijken
                </a>
            </div>
            
            <!-- Mobile Menu Toggle -->
            <button class="mobile-menu-toggle" aria-label="Menu openen" aria-expanded="false" aria-controls="mobile-menu">
                <span class="hamburger"></span>
            </button>
        </div>
        
        <!-- Mobile Navigation -->
        <div class="mobile-menu" id="mobile-menu" aria-hidden="true">
            <nav role="navigation" aria-label="Mobiele navigatie">
                <ul class="mobile-nav-menu">
                    <li><a href="<?= BASE_URL ?>" class="mobile-nav-link">Home</a></li>
                    <li><a href="<?= BASE_URL ?>/energievergelijker" class="mobile-nav-link">Vergelijken</a></li>
                    <li><a href="<?= BASE_URL ?>/energietips" class="mobile-nav-link">Energietips</a></li>
                    <li><a href="<?= BASE_URL ?>/blog" class="mobile-nav-link">Blog</a></li>
                    <li><a href="<?= BASE_URL ?>/pages/contact.php" class="mobile-nav-link">Contact</a></li>
                </ul>
                <div class="mobile-cta">
                    <a href="<?= BASE_URL ?>/energievergelijker" class="btn btn-primary btn-block">
                        Nu Vergelijken
                    </a>
                </div>
            </nav>
        </div>
    </header>
    
    <!-- Trust Bar -->
    <div class="trust-bar">
        <div class="container">
            <div class="trust-items">
                <div class="trust-item">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M2.166 4.999A11.954 11.954 0 0010 1.944 11.954 11.954 0 0017.834 5c.11.65.166 1.32.166 2.001 0 5.225-3.34 9.67-8 11.317C5.34 16.67 2 12.225 2 7c0-.682.057-1.35.166-2.001zm11.541 3.708a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"/>
                    </svg>
                    <span>100% Onafhankelijk</span>
                </div>
                <div class="trust-item">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z" clip-rule="evenodd"/>
                    </svg>
                    <span>Actuele Prijzen</span>
                </div>
                <div class="trust-item">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path d="M8.433 7.418c.155-.103.346-.196.567-.267v1.698a2.305 2.305 0 01-.567-.267C8.07 8.34 8 8.114 8 8c0-.114.07-.34.433-.582zM11 12.849v-1.698c.22.071.412.164.567.267.364.243.433.468.433.582 0 .114-.07.34-.433.582a2.305 2.305 0 01-.567.267z"/>
                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-13a1 1 0 10-2 0v.092a4.535 4.535 0 00-1.676.662C6.602 6.234 6 7.009 6 8c0 .99.602 1.765 1.324 2.246.48.32 1.054.545 1.676.662v1.941c-.391-.127-.68-.317-.843-.504a1 1 0 10-1.51 1.31c.562.649 1.413 1.076 2.353 1.253V15a1 1 0 102 0v-.092a4.535 4.535 0 001.676-.662C13.398 13.766 14 12.991 14 12c0-.99-.602-1.765-1.324-2.246A4.535 4.535 0 0011 9.092V7.151c.391.127.68.317.843.504a1 1 0 101.511-1.31c-.563-.649-1.413-1.076-2.354-1.253V5z" clip-rule="evenodd"/>
                    </svg>
                    <span>Gratis Vergelijken</span>
                </div>
                <div class="trust-item">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"/>
                    </svg>
                    <span>4.8/5 Klantbeoordeling</span>
                </div>
            </div>
        </div>
    </div>
    
    <main id="main-content" role="main">