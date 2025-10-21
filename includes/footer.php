<?php
/**
 * Site Footer
 * energievergelijken.trade
 * 
 * Footer with links, legal info, and scripts
 */
?>
    </main>
    
    <footer class="site-footer" role="contentinfo">
        <div class="footer-main">
            <div class="container">
                <div class="footer-grid">
                    <!-- Company Info -->
                    <div class="footer-col">
                        <h3 class="footer-title">Energievergelijken.trade</h3>
                        <p class="footer-text">
                            De meest betrouwbare energievergelijker van Nederland. 
                            Vergelijk gratis alle energieleveranciers en bespaar tot €500 per jaar.
                        </p>
                        <div class="footer-social">
                            <a href="<?= SOCIAL_FACEBOOK ?>" aria-label="Volg ons op Facebook" target="_blank" rel="noopener">
                                <svg width="24" height="24" fill="currentColor" viewBox="0 0 24 24"><path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/></svg>
                            </a>
                            <a href="<?= SOCIAL_TWITTER ?>" aria-label="Volg ons op Twitter" target="_blank" rel="noopener">
                                <svg width="24" height="24" fill="currentColor" viewBox="0 0 24 24"><path d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904 4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.827 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867 9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985 0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z"/></svg>
                            </a>
                            <a href="<?= SOCIAL_LINKEDIN ?>" aria-label="Volg ons op LinkedIn" target="_blank" rel="noopener">
                                <svg width="24" height="24" fill="currentColor" viewBox="0 0 24 24"><path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/></svg>
                            </a>
                        </div>
                    </div>
                    
                    <!-- Quick Links -->
                    <div class="footer-col">
                        <h3 class="footer-title">Snel Navigeren</h3>
                        <ul class="footer-links">
                            <li><a href="<?= BASE_URL ?>">Homepage</a></li>
                            <li><a href="<?= BASE_URL ?>/energievergelijker">Energie Vergelijken</a></li>
                            <li><a href="<?= BASE_URL ?>/energietips">Energietips</a></li>
                            <li><a href="<?= BASE_URL ?>/blog">Blog</a></li>
                            <li><a href="<?= BASE_URL ?>/pages/contact.php">Contact</a></li>
                        </ul>
                    </div>
                    
                    <!-- Information -->
                    <div class="footer-col">
                        <h3 class="footer-title">Informatie</h3>
                        <ul class="footer-links">
                            <li><a href="<?= BASE_URL ?>/over-ons">Over Ons</a></li>
                            <li><a href="<?= BASE_URL ?>/hoe-werkt-het">Hoe Werkt Het?</a></li>
                            <li><a href="<?= BASE_URL ?>/veelgestelde-vragen">Veelgestelde Vragen</a></li>
                            <li><a href="<?= BASE_URL ?>/klantenservice">Klantenservice</a></li>
                        </ul>
                    </div>
                    
                    <!-- Legal -->
                    <div class="footer-col">
                        <h3 class="footer-title">Juridisch</h3>
                        <ul class="footer-links">
                            <li><a href="<?= BASE_URL ?>/pages/privacybeleid.php">Privacybeleid</a></li>
                            <li><a href="<?= BASE_URL ?>/pages/voorwaarden.php">Algemene Voorwaarden</a></li>
                            <li><a href="<?= BASE_URL ?>/pages/cookiebeleid.php">Cookiebeleid</a></li>
                            <li><a href="<?= BASE_URL ?>/pages/disclaimer.php">Disclaimer</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Footer Bottom -->
        <div class="footer-bottom">
            <div class="container">
                <div class="footer-bottom-content">
                    <p class="copyright">
                        &copy; <?= date('Y') ?> <?= COMPANY_NAME ?>. Alle rechten voorbehouden.
                        KvK: <?= COMPANY_KVK ?> | BTW: <?= COMPANY_BTW ?>
                    </p>
                    <p class="footer-note">
                        Energievergelijken.trade is een onafhankelijke vergelijkingssite. 
                        Wij ontvangen mogelijk een vergoeding van energieleveranciers.
                    </p>
                </div>
            </div>
        </div>
    </footer>
    
    <!-- Cookie Consent (will be styled/functional later) -->
    <div id="cookie-consent" class="cookie-consent" style="display:none;">
        <div class="cookie-content">
            <p>We gebruiken cookies om uw ervaring te verbeteren. <a href="<?= BASE_URL ?>/pages/cookiebeleid.php">Meer informatie</a></p>
            <button class="btn btn-sm btn-primary" onclick="acceptCookies()">Accepteren</button>
        </div>
    </div>
    
    <!-- Scripts -->
    <script src="<?= ASSETS_URL ?>/js/app.js?v=<?= APP_VERSION ?>" defer></script>
    
    <?php if (isset($_SESSION['daisycon_conversion'])): ?>
    <!-- Daisycon Conversion Pixel -->
    <script>
        (function() {
            var params = <?= json_encode($_SESSION['daisycon_conversion']) ?>;
            // Daisycon tracking implementation
            console.log('Conversion tracked:', params);
        })();
    </script>
    <?php unset($_SESSION['daisycon_conversion']); ?>
    <?php endif; ?>
    
    <!-- Mobile Menu Script -->
    <script>
        document.querySelector('.mobile-menu-toggle')?.addEventListener('click', function() {
            const menu = document.getElementById('mobile-menu');
            const isExpanded = this.getAttribute('aria-expanded') === 'true';
            this.setAttribute('aria-expanded', !isExpanded);
            menu.setAttribute('aria-hidden', isExpanded);
            document.body.classList.toggle('mobile-menu-open');
        });
        
        function acceptCookies() {
            document.getElementById('cookie-consent').style.display = 'none';
            localStorage.setItem('cookieConsent', 'accepted');
        }
        
        if (!localStorage.getItem('cookieConsent')) {
            document.getElementById('cookie-consent').style.display = 'block';
        }
    </script>
</body>
</html>