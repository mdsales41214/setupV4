 
<?php
/**
 * HTML Head Section
 * energievergelijken.trade
 * 
 * SEO-optimized head with performance hints and critical CSS
 */

// Set default values if not provided by page
$page_title = $page_title ?? 'Vergelijk Energieprijzen & Bespaar tot €500 per Jaar';
$page_description = $page_description ?? 'Vergelijk gratis alle energieleveranciers in Nederland. Vind de goedkoopste stroom en gas en bespaar tot €500 per jaar. ✓ Onafhankelijk ✓ Actueel ✓ Betrouwbaar';
$page_keywords = $page_keywords ?? 'energie vergelijken, energievergelijker, goedkope energie, stroom vergelijken, gas vergelijken';
$canonical_url = $canonical_url ?? current_url();
$og_image = $og_image ?? IMAGES_URL . '/og-energievergelijken.jpg';
$page_type = $page_type ?? 'website';
?>
<!DOCTYPE html>
<html lang="nl" prefix="og: http://ogp.me/ns#">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- Preconnect to external domains for faster loading -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <?php if (DAISYCON_TRACKING_ENABLED): ?>
    <link rel="preconnect" href="https://tc.tradetracker.net">
    <?php endif; ?>
    
    <!-- DNS Prefetch -->
    <link rel="dns-prefetch" href="//www.google-analytics.com">
    <link rel="dns-prefetch" href="//www.googletagmanager.com">
    
    <!-- Primary Meta Tags -->
    <title><?= htmlspecialchars($page_title . META_TITLE_SUFFIX) ?></title>
    <meta name="title" content="<?= htmlspecialchars($page_title) ?>">
    <meta name="description" content="<?= htmlspecialchars($page_description) ?>">
    <meta name="keywords" content="<?= htmlspecialchars($page_keywords) ?>">
    <meta name="author" content="<?= COMPANY_NAME ?>">
    <meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">
    
    <!-- Canonical URL -->
    <link rel="canonical" href="<?= htmlspecialchars($canonical_url) ?>">
    
    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="<?= htmlspecialchars($page_type) ?>">
    <meta property="og:url" content="<?= htmlspecialchars($canonical_url) ?>">
    <meta property="og:title" content="<?= htmlspecialchars($page_title) ?>">
    <meta property="og:description" content="<?= htmlspecialchars($page_description) ?>">
    <meta property="og:image" content="<?= htmlspecialchars($og_image) ?>">
    <meta property="og:locale" content="nl_NL">
    <meta property="og:site_name" content="<?= APP_NAME ?>">
    
    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:url" content="<?= htmlspecialchars($canonical_url) ?>">
    <meta name="twitter:title" content="<?= htmlspecialchars($page_title) ?>">
    <meta name="twitter:description" content="<?= htmlspecialchars($page_description) ?>">
    <meta name="twitter:image" content="<?= htmlspecialchars($og_image) ?>">
    
    <!-- Favicons -->
    <link rel="icon" type="image/x-icon" href="<?= ASSETS_URL ?>/images/favicons/favicon.ico">
    <link rel="icon" type="image/png" sizes="32x32" href="<?= ASSETS_URL ?>/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?= ASSETS_URL ?>/images/favicons/favicon-16x16.png">
    <link rel="apple-touch-icon" sizes="180x180" href="<?= ASSETS_URL ?>/images/favicons/apple-touch-icon.png">
    <link rel="manifest" href="<?= BASE_URL ?>/manifest.json">
    
    <!-- Theme Color -->
    <meta name="theme-color" content="#00A651">
    <meta name="msapplication-TileColor" content="#00A651">
    
    <!-- Critical CSS - Inline for fastest render -->
    <style>
        <?php include PUBLIC_PATH . '/assets/css/critical.css'; ?>
    </style>
    
    <!-- Preload main CSS -->
    <link rel="preload" href="<?= ASSETS_URL ?>/css/main.css?v=<?= APP_VERSION ?>" as="style">
    
    <!-- Preload fonts -->
    <link rel="preload" href="<?= ASSETS_URL ?>/fonts/inter-var.woff2" as="font" type="font/woff2" crossorigin>
    
    <!-- Main CSS - Load asynchronously -->
    <link rel="stylesheet" href="<?= ASSETS_URL ?>/css/main.css?v=<?= APP_VERSION ?>" media="print" onload="this.media='all'">
    <noscript><link rel="stylesheet" href="<?= ASSETS_URL ?>/css/main.css?v=<?= APP_VERSION ?>"></noscript>
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Structured Data - Organization -->
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Organization",
        "name": "<?= COMPANY_NAME ?>",
        "url": "<?= BASE_URL ?>",
        "logo": "<?= IMAGES_URL ?>/logo.svg",
        "description": "<?= $page_description ?>",
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "<?= COMPANY_ADDRESS ?>",
            "addressCountry": "NL"
        },
        "contactPoint": {
            "@type": "ContactPoint",
            "telephone": "<?= COMPANY_PHONE ?>",
            "contactType": "Customer Service",
            "availableLanguage": "Dutch"
        },
        "sameAs": [
            "<?= SOCIAL_FACEBOOK ?>",
            "<?= SOCIAL_TWITTER ?>",
            "<?= SOCIAL_LINKEDIN ?>"
        ]
    }
    </script>
    
    <?php if (isset($structured_data)): ?>
    <!-- Page-specific Structured Data -->
    <script type="application/ld+json">
    <?= json_encode($structured_data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT) ?>
    </script>
    <?php endif; ?>
    
    <!-- Google Tag Manager -->
    <?php if (!empty($_ENV['GTM_CONTAINER_ID'])): ?>
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','<?= $_ENV['GTM_CONTAINER_ID'] ?>');</script>
    <?php endif; ?>
</head>