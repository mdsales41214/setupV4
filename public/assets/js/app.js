 
/**
 * Main Application JavaScript
 * energievergelijken.trade
 */

(function() {
    'use strict';

    // Mobile menu toggle
    const mobileToggle = document.querySelector('.mobile-menu-toggle');
    const mobileMenu = document.getElementById('mobile-menu');

    if (mobileToggle && mobileMenu) {
        mobileToggle.addEventListener('click', function() {
            const isExpanded = this.getAttribute('aria-expanded') === 'true';
            this.setAttribute('aria-expanded', !isExpanded);
            mobileMenu.setAttribute('aria-hidden', isExpanded);
            document.body.classList.toggle('mobile-menu-open', !isExpanded);
        });

        // Close on link click
        const mobileLinks = mobileMenu.querySelectorAll('a');
        mobileLinks.forEach(link => {
            link.addEventListener('click', () => {
                mobileToggle.setAttribute('aria-expanded', 'false');
                mobileMenu.setAttribute('aria-hidden', 'true');
                document.body.classList.remove('mobile-menu-open');
            });
        });
    }

    // Cookie consent
    const cookieConsent = document.getElementById('cookie-consent');
    
    function acceptCookies() {
        if (cookieConsent) {
            cookieConsent.style.display = 'none';
        }
        localStorage.setItem('cookieConsent', 'accepted');
        
        // Initialize analytics after consent
        if (typeof gtag !== 'undefined') {
            gtag('consent', 'update', {
                'analytics_storage': 'granted'
            });
        }
    }

    // Show cookie consent if not accepted
    if (cookieConsent && !localStorage.getItem('cookieConsent')) {
        cookieConsent.style.display = 'block';
    }

    // Expose to global scope for onclick handler
    window.acceptCookies = acceptCookies;

    // Form validation
    const compareForm = document.querySelector('.compare-form');
    if (compareForm) {
        compareForm.addEventListener('submit', function(e) {
            const postcode = this.querySelector('#postcode');
            const huisnummer = this.querySelector('#huisnummer');
            const type = this.querySelector('#energie_type');

            // Dutch postcode validation
            const postcodeRegex = /^[1-9][0-9]{3}[A-Za-z]{2}$/;
            
            if (postcode && !postcodeRegex.test(postcode.value.replace(/\s/g, ''))) {
                e.preventDefault();
                alert('Voer een geldige postcode in (bijv. 1012AB)');
                postcode.focus();
                return false;
            }

            if (huisnummer && !huisnummer.value.trim()) {
                e.preventDefault();
                alert('Voer uw huisnummer in');
                huisnummer.focus();
                return false;
            }

            if (type && !type.value) {
                e.preventDefault();
                alert('Selecteer het type energie');
                type.focus();
                return false;
            }
        });

        // Auto-format postcode
        const postcodeInput = compareForm.querySelector('#postcode');
        if (postcodeInput) {
            postcodeInput.addEventListener('blur', function() {
                let value = this.value.replace(/\s/g, '').toUpperCase();
                if (value.length === 6) {
                    this.value = value.substring(0, 4) + ' ' + value.substring(4);
                }
            });
        }
    }

    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            const href = this.getAttribute('href');
            if (href !== '#' && document.querySelector(href)) {
                e.preventDefault();
                document.querySelector(href).scrollIntoView({
                    behavior: 'smooth'
                });
            }
        });
    });

    // Track outbound links (for Daisycon)
    document.addEventListener('click', function(e) {
        const link = e.target.closest('a');
        if (link && link.hostname !== window.location.hostname) {
            // Track external link click
            if (typeof gtag !== 'undefined') {
                gtag('event', 'click', {
                    'event_category': 'outbound',
                    'event_label': link.href
                });
            }
        }
    });

    console.log('Energievergelijken.trade - Ready');
})();