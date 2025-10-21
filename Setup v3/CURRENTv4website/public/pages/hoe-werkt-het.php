<?php
/**
 * Hoe Werkt Het - Proces Uitleg
 * energievergelijken.trade
 */

require_once __DIR__ . '/../../includes/config.php';

$page_title = 'Hoe Werkt Energie Vergelijken? | 3 Simpele Stappen';
$page_description = 'Ontdek hoe gemakkelijk energie vergelijken werkt. In 3 stappen naar de goedkoopste energieleverancier. Gratis, snel en zonder gedoe.';

include INCLUDES_PATH . '/head.php';
include INCLUDES_PATH . '/header.php';
?>

<div class="page-header">
    <div class="container">
        <h1>Hoe Werkt Het?</h1>
        <p>In 3 simpele stappen naar de goedkoopste energieleverancier</p>
    </div>
</div>

<section class="how-it-works">
    <div class="container">
        <div class="steps-grid">
            <!-- Stap 1 -->
            <div class="step-card">
                <div class="step-number">1</div>
                <div class="step-icon">
                    <svg width="64" height="64" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z"/>
                    </svg>
                </div>
                <h2>Vul Uw Gegevens In</h2>
                <p>Vul uw postcode en energieverbruik in. Weet u uw verbruik niet? Gebruik dan onze handige schatting op basis van uw woonsituatie.</p>
                <ul class="step-list">
                    <li>✓ Postcode (4 cijfers + 2 letters)</li>
                    <li>✓ Jaarverbruik stroom (kWh)</li>
                    <li>✓ Jaarverbruik gas (m³)</li>
                </ul>
            </div>

            <!-- Stap 2 -->
            <div class="step-card">
                <div class="step-number">2</div>
                <div class="step-icon">
                    <svg width="64" height="64" fill="currentColor" viewBox="0 0 20 20">
                        <path d="M9 2a1 1 0 000 2h2a1 1 0 100-2H9z"/>
                        <path fill-rule="evenodd" d="M4 5a2 2 0 012-2 3 3 0 003 3h2a3 3 0 003-3 2 2 0 012 2v11a2 2 0 01-2 2H6a2 2 0 01-2-2V5zm3 4a1 1 0 000 2h.01a1 1 0 100-2H7zm3 0a1 1 0 000 2h3a1 1 0 100-2h-3zm-3 4a1 1 0 100 2h.01a1 1 0 100-2H7zm3 0a1 1 0 100 2h3a1 1 0 100-2h-3z"/>
                    </svg>
                </div>
                <h2>Vergelijk Aanbiedingen</h2>
                <p>Bekijk alle beschikbare energieleveranciers in uw regio. Wij tonen duidelijk de prijzen, voorwaarden en besparingen ten opzichte van uw huidige leverancier.</p>
                <ul class="step-list">
                    <li>✓ Alle aanbieders op één pagina</li>
                    <li>✓ Duidelijk overzicht van kosten</li>
                    <li>✓ Filter op vast/variabel tarief</li>
                    <li>✓ Zie direct uw besparing</li>
                </ul>
            </div>

            <!-- Stap 3 -->
            <div class="step-card">
                <div class="step-number">3</div>
                <div class="step-icon">
                    <svg width="64" height="64" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M6.267 3.455a3.066 3.066 0 001.745-.723 3.066 3.066 0 013.976 0 3.066 3.066 0 001.745.723 3.066 3.066 0 012.812 2.812c.051.643.304 1.254.723 1.745a3.066 3.066 0 010 3.976 3.066 3.066 0 00-.723 1.745 3.066 3.066 0 01-2.812 2.812 3.066 3.066 0 00-1.745.723 3.066 3.066 0 01-3.976 0 3.066 3.066 0 00-1.745-.723 3.066 3.066 0 01-2.812-2.812 3.066 3.066 0 00-.723-1.745 3.066 3.066 0 010-3.976 3.066 3.066 0 00.723-1.745 3.066 3.066 0 012.812-2.812zm7.44 5.252a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"/>
                    </svg>
                </div>
                <h2>Overstappen</h2>
                <p>Kies uw nieuwe leverancier en stap over. De nieuwe leverancier regelt alles, ook het opzeggen bij uw oude leverancier. U hoeft niets te doen!</p>
                <ul class="step-list">
                    <li>✓ Online contract afsluiten</li>
                    <li>✓ Nieuwe leverancier regelt alles</li>
                    <li>✓ Geen onderbreking levering</li>
                    <li>✓ Besparing binnen 2-4 weken</li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- Waarom wij -->
<section class="why-us-section">
    <div class="container">
        <h2 class="section-title">Waarom Energievergelijken.trade?</h2>
        <div class="benefits-grid">
            <div class="benefit-card">
                <div class="benefit-icon">🔒</div>
                <h3>100% Veilig</h3>
                <p>Uw gegevens worden veilig verwerkt volgens AVG-wetgeving</p>
            </div>

            <div class="benefit-card">
                <div class="benefit-icon">💯</div>
                <h3>Altijd Gratis</h3>
                <p>Vergelijken en overstappen is volledig gratis en vrijblijvend</p>
            </div>

            <div class="benefit-card">
                <div class="benefit-icon">⚡</div>
                <h3>Supersnel</h3>
                <p>In 2 minuten vergelijkt u alle leveranciers</p>
            </div>

            <div class="benefit-card">
                <div class="benefit-icon">🎯</div>
                <h3>Onafhankelijk</h3>
                <p>Wij tonen álle aanbiedingen zonder voorkeur</p>
            </div>

            <div class="benefit-card">
                <div class="benefit-icon">💰</div>
                <h3>Maximale Besparing</h3>
                <p>Gemiddeld €400-500 per jaar besparen</p>
            </div>

            <div class="benefit-card">
                <div class="benefit-icon">📞</div>
                <h3>Persoonlijke Hulp</h3>
                <p>Vragen? Ons team helpt u graag verder</p>
            </div>
        </div>
    </div>
</section>

<!-- CTA -->
<section class="cta-section-large">
    <div class="container">
        <h2>Klaar om te Besparen?</h2>
        <p class="cta-subtitle">Start nu met vergelijken en bespaar tot €500 per jaar</p>
        <a href="<?= BASE_URL ?>" class="btn btn-primary btn-xl">
            <svg width="24" height="24" fill="currentColor" viewBox="0 0 20 20">
                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-8.707l-3-3a1 1 0 00-1.414 1.414L10.586 9H7a1 1 0 100 2h3.586l-1.293 1.293a1 1 0 101.414 1.414l3-3a1 1 0 000-1.414z"/>
            </svg>
            Energie Vergelijken
        </a>
        <p class="cta-note">Gratis • 2 minuten • Geen verplichtingen</p>
    </div>
</section>

<?php include INCLUDES_PATH . '/footer.php'; ?>