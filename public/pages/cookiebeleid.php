 
<?php
/**
 * Cookie Policy (Cookiebeleid)
 * energievergelijken.trade
 */

require_once __DIR__ . '/../../includes/config.php';

$page_title = 'Cookiebeleid';
$page_description = 'Informatie over het gebruik van cookies op energievergelijken.trade.';

include INCLUDES_PATH . '/head.php';
include INCLUDES_PATH . '/header.php';
?>

<div class="page-header">
    <div class="container">
        <h1>Cookiebeleid</h1>
        <p>Laatst bijgewerkt: <?= date('d F Y') ?></p>
    </div>
</div>

<section class="legal-content">
    <div class="container">
        <div class="legal-document">
            
            <h2>1. Wat zijn cookies?</h2>
            <p>
                Cookies zijn kleine tekstbestanden die op uw computer of mobiele apparaat worden geplaatst wanneer u onze website bezoekt. 
                Cookies helpen ons om de website te laten werken en om uw ervaring te verbeteren.
            </p>

            <h2>2. Welke cookies gebruiken wij?</h2>
            
            <h3>2.1 Functionele Cookies (Altijd Actief)</h3>
            <p>Deze cookies zijn noodzakelijk voor de werking van de website:</p>
            <table class="cookie-table">
                <thead>
                    <tr>
                        <th>Cookie</th>
                        <th>Doel</th>
                        <th>Bewaartermijn</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>energievergelijken_session</td>
                        <td>Sessie beheer en beveiliging</td>
                        <td>2 uur</td>
                    </tr>
                    <tr>
                        <td>csrf_token</td>
                        <td>Bescherming tegen CSRF aanvallen</td>
                        <td>1 uur</td>
                    </tr>
                    <tr>
                        <td>cookieConsent</td>
                        <td>Opslaan cookie voorkeuren</td>
                        <td>1 jaar</td>
                    </tr>
                </tbody>
            </table>

            <h3>2.2 Analytische Cookies (Met Toestemming)</h3>
            <p>Deze cookies helpen ons te begrijpen hoe bezoekers onze website gebruiken:</p>
            <table class="cookie-table">
                <thead>
                    <tr>
                        <th>Cookie</th>
                        <th>Aanbieder</th>
                        <th>Doel</th>
                        <th>Bewaartermijn</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>_ga</td>
                        <td>Google Analytics</td>
                        <td>Bezoekersstatistieken (geanonimiseerd)</td>
                        <td>2 jaar</td>
                    </tr>
                    <tr>
                        <td>_gid</td>
                        <td>Google Analytics</td>
                        <td>Sessie-identificatie</td>
                        <td>24 uur</td>
                    </tr>
                </tbody>
            </table>

            <h3>2.3 Marketing Cookies (Met Toestemming)</h3>
            <p>Deze cookies worden gebruikt voor affiliate tracking:</p>
            <table class="cookie-table">
                <thead>
                    <tr>
                        <th>Cookie</th>
                        <th>Aanbieder</th>
                        <th>Doel</th>
                        <th>Bewaartermijn</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>daisycon_conversion</td>
                        <td>Daisycon</td>
                        <td>Conversie tracking</td>
                        <td>30 dagen</td>
                    </tr>
                </tbody>
            </table>

            <h2>3. Cookies beheren</h2>
            <p>U kunt uw cookie voorkeuren op elk moment aanpassen:</p>
            
            <div class="cookie-settings">
                <button onclick="showCookieSettings()" class="btn btn-primary">
                    Cookie Instellingen Aanpassen
                </button>
            </div>

            <h3>3.1 Via uw browser</h3>
            <p>U kunt cookies ook beheren via uw browserinstellingen:</p>
            <ul>
                <li><a href="https://support.google.com/chrome/answer/95647" target="_blank" rel="noopener">Google Chrome</a></li>
                <li><a href="https://support.mozilla.org/nl/kb/cookies-verwijderen-gegevens-wissen-websites-opgeslagen" target="_blank" rel="noopener">Firefox</a></li>
                <li><a href="https://support.apple.com/nl-nl/guide/safari/sfri11471/mac" target="_blank" rel="noopener">Safari</a></li>
                <li><a href="https://support.microsoft.com/nl-nl/windows/cookies-verwijderen-en-beheren-168dab11-0753-043d-7c16-ede5947fc64d" target="_blank" rel="noopener">Microsoft Edge</a></li>
            </ul>

            <h2>4. Toestemming intrekken</h2>
            <p>
                U kunt uw toestemming voor analytische en marketing cookies op elk moment intrekken door 
                op de knop "Cookie Instellingen Aanpassen" te klikken. Functionele cookies kunnen niet worden 
                uitgeschakeld omdat deze noodzakelijk zijn voor de werking van de website.
            </p>

            <h2>5. Contact</h2>
            <p>
                Vragen over ons cookiebeleid? Neem contact met ons op via 
                <a href="mailto:<?= COMPANY_EMAIL ?>"><?= COMPANY_EMAIL ?></a>
            </p>

        </div>
    </div>
</section>

<script>
function showCookieSettings() {
    // Show cookie consent banner
    document.getElementById('cookie-consent').style.display = 'block';
    localStorage.removeItem('cookieConsent');
}
</script>

<?php include INCLUDES_PATH . '/footer.php'; ?>