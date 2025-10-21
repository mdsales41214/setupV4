/**
 * Cookie Consent Banner - GDPR/AVG Compliant
 * energievergelijken.trade
 */

class CookieConsent {
    constructor() {
        this.cookieName = 'cookieConsent';
        this.cookieExpiry = 365; // days
        this.init();
    }

    init() {
        // Check if consent already given
        if (this.getCookie(this.cookieName)) {
            const consent = JSON.parse(this.getCookie(this.cookieName));
            this.applyConsent(consent);
            return;
        }

        // Show banner if no consent
        this.showBanner();
    }

    showBanner() {
        const banner = document.createElement('div');
        banner.id = 'cookie-consent';
        banner.className = 'cookie-consent';
        banner.innerHTML = `
            <div class="cookie-consent-content">
                <div class="cookie-text">
                    <h3>🍪 Cookies</h3>
                    <p>
                        Wij gebruiken cookies om uw ervaring te verbeteren en om verkeer te analyseren. 
                        <a href="/pages/cookiebeleid.php">Meer informatie</a>
                    </p>
                </div>
                <div class="cookie-actions">
                    <button class="btn btn-secondary btn-sm" data-action="settings">
                        Instellingen
                    </button>
                    <button class="btn btn-primary btn-sm" data-action="accept-all">
                        Alles Accepteren
                    </button>
                </div>
            </div>
            <div class="cookie-settings" style="display: none;">
                <h4>Cookie Instellingen</h4>
                <div class="cookie-option">
                    <label>
                        <input type="checkbox" checked disabled>
                        <strong>Functioneel</strong> (Verplicht)
                        <span class="cookie-desc">Nodig voor de werking van de website</span>
                    </label>
                </div>
                <div class="cookie-option">
                    <label>
                        <input type="checkbox" id="cookie-analytics">
                        <strong>Analytisch</strong>
                        <span class="cookie-desc">Helpt ons de website te verbeteren</span>
                    </label>
                </div>
                <div class="cookie-option">
                    <label>
                        <input type="checkbox" id="cookie-marketing">
                        <strong>Marketing</strong>
                        <span class="cookie-desc">Voor gepersonaliseerde aanbiedingen</span>
                    </label>
                </div>
                <div class="cookie-actions">
                    <button class="btn btn-secondary btn-sm" data-action="save-settings">
                        Opslaan
                    </button>
                    <button class="btn btn-primary btn-sm" data-action="accept-all">
                        Alles Accepteren
                    </button>
                </div>
            </div>
        `;

        document.body.appendChild(banner);

        // Event listeners
        banner.querySelector('[data-action="accept-all"]').addEventListener('click', () => {
            this.acceptAll();
        });

        banner.querySelector('[data-action="settings"]').addEventListener('click', () => {
            this.showSettings();
        });

        banner.querySelector('[data-action="save-settings"]').addEventListener('click', () => {
            this.saveSettings();
        });
    }

    showSettings() {
        const banner = document.getElementById('cookie-consent');
        banner.querySelector('.cookie-consent-content').style.display = 'none';
        banner.querySelector('.cookie-settings').style.display = 'block';
    }

    acceptAll() {
        const consent = {
            functional: true,
            analytics: true,
            marketing: true,
            timestamp: new Date().toISOString()
        };
        this.saveConsent(consent);
    }

    saveSettings() {
        const consent = {
            functional: true, // Always true
            analytics: document.getElementById('cookie-analytics').checked,
            marketing: document.getElementById('cookie-marketing').checked,
            timestamp: new Date().toISOString()
        };
        this.saveConsent(consent);
    }

    saveConsent(consent) {
        this.setCookie(this.cookieName, JSON.stringify(consent), this.cookieExpiry);
        this.applyConsent(consent);
        this.hideBanner();
    }

    applyConsent(consent) {
        // Load Google Analytics if analytics accepted
        if (consent.analytics && window.GA_MEASUREMENT_ID) {
            this.loadGoogleAnalytics(window.GA_MEASUREMENT_ID);
        }

        // Load marketing scripts if marketing accepted
        if (consent.marketing) {
            this.loadMarketingScripts();
        }
    }

    loadGoogleAnalytics(measurementId) {
        // Check if already loaded
        if (window.gtag) return;

        const script = document.createElement('script');
        script.async = true;
        script.src = `https://www.googletagmanager.com/gtag/js?id=${measurementId}`;
        document.head.appendChild(script);

        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        window.gtag = gtag;
        gtag('js', new Date());
        gtag('config', measurementId, {
            'anonymize_ip': true,
            'cookie_flags': 'SameSite=None;Secure'
        });
    }

    loadMarketingScripts() {
        // Add Daisycon or other marketing scripts here
        console.log('Marketing cookies accepted');
    }

    hideBanner() {
        const banner = document.getElementById('cookie-consent');
        if (banner) {
            banner.style.opacity = '0';
            setTimeout(() => banner.remove(), 300);
        }
    }

    setCookie(name, value, days) {
        const date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        const expires = "expires=" + date.toUTCString();
        document.cookie = `${name}=${value};${expires};path=/;SameSite=Lax`;
    }

    getCookie(name) {
        const nameEQ = name + "=";
        const ca = document.cookie.split(';');
        for(let i = 0; i < ca.length; i++) {
            let c = ca[i];
            while (c.charAt(0) === ' ') c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length, c.length);
        }
        return null;
    }
}

// Initialize cookie consent when DOM is ready
document.addEventListener('DOMContentLoaded', () => {
    new CookieConsent();
});

// Allow showing cookie settings from cookiebeleid page
window.showCookieSettings = () => {
    const banner = document.getElementById('cookie-consent');
    if (banner) {
        banner.style.display = 'block';
        banner.querySelector('.cookie-consent-content').style.display = 'none';
        banner.querySelector('.cookie-settings').style.display = 'block';
    } else {
        // Remove existing consent and reload
        document.cookie = 'cookieConsent=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;';
        location.reload();
    }
};