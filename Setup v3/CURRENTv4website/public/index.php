<?php
/**
 * Homepage
 * energievergelijken.trade
 * 
 * Main landing page with conversion-optimized layout
 */

require_once __DIR__ . '/../includes/config.php';

// Page meta
$page_title = 'Vergelijk Energieprijzen & Bespaar tot €500 per Jaar';
$page_description = 'Vergelijk gratis alle energieleveranciers in Nederland. Vind de goedkoopste stroom en gas en bespaar tot €500 per jaar. ✓ Onafhankelijk ✓ Actueel ✓ Betrouwbaar';
$page_keywords = 'energie vergelijken, energievergelijker, goedkope energie, stroom vergelijken, gas vergelijken, energieleveranciers vergelijken';

// Structured data for homepage
$structured_data = [
    '@context' => 'https://schema.org',
    '@type' => 'WebSite',
    'url' => BASE_URL,
    'name' => APP_NAME,
    'description' => $page_description,
    'potentialAction' => [
        '@type' => 'SearchAction',
        'target' => BASE_URL . '/zoeken?q={search_term_string}',
        'query-input' => 'required name=search_term_string'
    ]
];

include INCLUDES_PATH . '/head.php';
include INCLUDES_PATH . '/header.php';
?>

<!-- Hero Section -->
<section class="hero">
    <div class="hero-background"></div>
    <div class="container">
        <div class="hero-content">
            <div class="hero-text">
                <h1 class="hero-title">
                    Bespaar tot <span class="highlight">€500</span> per jaar<br>
                    op uw energierekening
                </h1>
                <p class="hero-subtitle">
                    Vergelijk gratis alle energieleveranciers in Nederland en wissel binnen 5 minuten. 
                    100% onafhankelijk en actueel.
                </p>
                
                <!-- Quick Compare Form -->
                <div class="hero-form">
                    <form action="<?= BASE_URL ?>/energievergelijker" method="GET" class="compare-form">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="postcode" class="sr-only">Postcode</label>
                                <input 
                                    type="text" 
                                    id="postcode" 
                                    name="postcode" 
                                    placeholder="Bijv. 1012AB" 
                                    pattern="[1-9][0-9]{3}[A-Za-z]{2}"
                                    required
                                    class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="huisnummer" class="sr-only">Huisnummer</label>
                                <input 
                                    type="text" 
                                    id="huisnummer" 
                                    name="huisnummer" 
                                    placeholder="Nr." 
                                    required
                                    class="form-control form-control-sm">
                            </div>
                            <div class="form-group">
                                <label for="energie_type" class="sr-only">Type</label>
                                <select id="energie_type" name="type" class="form-control" required>
                                    <option value="">Selecteer type</option>
                                    <option value="beide">Stroom & Gas</option>
                                    <option value="stroom">Alleen Stroom</option>
                                    <option value="gas">Alleen Gas</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg">
                                <svg width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd"/>
                                </svg>
                                Vergelijk Nu
                            </button>
                        </div>
                    </form>
                    <p class="form-note">✓ Gratis ✓ Zonder verplichtingen ✓ Binnen 2 minuten</p>
                </div>
            </div>
            
            <div class="hero-image">
                <img src="<?= IMAGES_URL ?>/hero-energy-savings.svg" alt="Bespaar op energie" width="600" height="500" loading="eager">
            </div>
        </div>
    </div>
</section>

<!-- USP Section -->
<section class="usp-section">
    <div class="container">
        <div class="usp-grid">
            <div class="usp-item">
                <div class="usp-icon">
                    <svg width="48" height="48" fill="currentColor" viewBox="0 0 20 20">
                        <path d="M8.433 7.418c.155-.103.346-.196.567-.267v1.698a2.305 2.305 0 01-.567-.267C8.07 8.34 8 8.114 8 8c0-.114.07-.34.433-.582zM11 12.849v-1.698c.22.071.412.164.567.267.364.243.433.468.433.582 0 .114-.07.34-.433.582a2.305 2.305 0 01-.567.267z"/>
                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-13a1 1 0 10-2 0v.092a4.535 4.535 0 00-1.676.662C6.602 6.234 6 7.009 6 8c0 .99.602 1.765 1.324 2.246.48.32 1.054.545 1.676.662v1.941c-.391-.127-.68-.317-.843-.504a1 1 0 10-1.51 1.31c.562.649 1.413 1.076 2.353 1.253V15a1 1 0 102 0v-.092a4.535 4.535 0 001.676-.662C13.398 13.766 14 12.991 14 12c0-.99-.602-1.765-1.324-2.246A4.535 4.535 0 0011 9.092V7.151c.391.127.68.317.843.504a1 1 0 101.511-1.31c-.563-.649-1.413-1.076-2.354-1.253V5z" clip-rule="evenodd"/>
                    </svg>
                </div>
                <h3>Gemiddeld €437 bespaard</h3>
                <p>Onze gebruikers besparen gemiddeld €437 per jaar door over te stappen</p>
            </div>
            
            <div class="usp-item">
                <div class="usp-icon">
                    <svg width="48" height="48" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z" clip-rule="evenodd"/>
                    </svg>
                </div>
                <h3>Binnen 5 minuten geregeld</h3>
                <p>Vul uw gegevens in en wissel direct online. Uw huidige leverancier opzeggen doen wij voor u</p>
            </div>
            
            <div class="usp-item">
                <div class="usp-icon">
                    <svg width="48" height="48" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M2.166 4.999A11.954 11.954 0 0010 1.944 11.954 11.954 0 0017.834 5c.11.65.166 1.32.166 2.001 0 5.225-3.34 9.67-8 11.317C5.34 16.67 2 12.225 2 7c0-.682.057-1.35.166-2.001zm11.541 3.708a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"/>
                    </svg>
                </div>
                <h3>100% Onafhankelijk</h3>
                <p>Wij vergelijken alle aanbieders objectief. U ziet altijd de beste deal voor uw situatie</p>
            </div>
        </div>
    </div>
</section>

<!-- How It Works -->
<section class="how-it-works">
    <div class="container">
        <h2 class="section-title">Zo werkt het</h2>
        <p class="section-subtitle">In 3 eenvoudige stappen naar de beste energieprijs</p>
        
        <div class="steps-grid">
            <div class="step">
                <div class="step-number">1</div>
                <h3>Vul uw gegevens in</h3>
                <p>Voer uw postcode, huisnummer en verbruik in. Dit duurt slechts 1 minuut.</p>
            </div>
            
            <div class="step">
                <div class="step-number">2</div>
                <h3>Vergelijk alle aanbieders</h3>
                <p>Bekijk direct alle energieleveranciers en hun actuele prijzen naast elkaar.</p>
            </div>
            
            <div class="step">
                <div class="step-number">3</div>
                <h3>Wissel direct online</h3>
                <p>Kies de beste deal en wissel binnen 5 minuten. Wij regelen de rest.</p>
            </div>
        </div>
        
        <div class="cta-center">
            <a href="<?= BASE_URL ?>/energievergelijker" class="btn btn-primary btn-lg">
                Start met Vergelijken
            </a>
        </div>
    </div>
</section>

<!-- Energy Tips Preview -->
<section class="tips-section">
    <div class="container">
        <h2 class="section-title">Energiebesparingstips</h2>
        <p class="section-subtitle">Bespaar nog meer met onze handige tips</p>
        
        <div class="tips-grid">
            <div class="tip-card">
                <div class="tip-icon">💡</div>
                <h3>LED Verlichting</h3>
                <p>Bespaar tot €50 per jaar door over te stappen op LED-lampen</p>
                <a href="<?= BASE_URL ?>/energietips/led-verlichting" class="tip-link">Lees meer →</a>
            </div>
            
            <div class="tip-card">
                <div class="tip-icon">🌡️</div>
                <h3>Thermostaat 1°C Lager</h3>
                <p>Zet uw thermostaat 1 graad lager en bespaar €100 per jaar</p>
                <a href="<?= BASE_URL ?>/energietips/thermostaat" class="tip-link">Lees meer →</a>
            </div>
            
            <div class="tip-card">
                <div class="tip-icon">🔌</div>
                <h3>Standby Uitzetten</h3>
                <p>Apparaten helemaal uitzetten bespaart €75 per jaar</p>
                <a href="<?= BASE_URL ?>/energietips/standby" class="tip-link">Lees meer →</a>
            </div>
            
            <div class="tip-card">
                <div class="tip-icon">🚿</div>
                <h3>Korter Douchen</h3>
                <p>5 minuten douchen in plaats van 10? Bespaar €120 per jaar</p>
                <a href="<?= BASE_URL ?>/energietips/douchen" class="tip-link">Lees meer →</a>
            </div>
        </div>
    </div>
</section>

<!-- Reviews Section -->
<section class="reviews-section">
    <div class="container">
        <h2 class="section-title">Wat klanten zeggen</h2>
        
        <div class="reviews-grid">
            <div class="review-card">
                <div class="review-stars">⭐⭐⭐⭐⭐</div>
                <p class="review-text">"Super makkelijk! Binnen 3 minuten had ik alle prijzen vergeleken en ben overgestapt. Bespaar nu €380 per jaar!"</p>
                <p class="review-author">- Maria de Vries, Amsterdam</p>
            </div>
            
            <div class="review-card">
                <div class="review-stars">⭐⭐⭐⭐⭐</div>
                <p class="review-text">"Eindelijk een eerlijke vergelijker. Geen verborgen kosten en echt onafhankelijk. Aanrader!"</p>
                <p class="review-author">- Jan Bakker, Rotterdam</p>
            </div>
            
            <div class="review-card">
                <div class="review-stars">⭐⭐⭐⭐⭐</div>
                <p class="review-text">"Overstappen was nog nooit zo makkelijk. Alles werd voor mij geregeld. Top service!"</p>
                <p class="review-author">- Sophie Jansen, Utrecht</p>
            </div>
        </div>
    </div>
</section>

<!-- FAQ Preview -->
<section class="faq-section">
    <div class="container">
        <h2 class="section-title">Veelgestelde Vragen</h2>
        
        <div class="faq-grid">
            <div class="faq-item">
                <h3 class="faq-question">Is energie vergelijken echt gratis?</h3>
                <p class="faq-answer">Ja, het vergelijken van energieleveranciers is 100% gratis en vrijblijvend. U betaalt niets voor het gebruik van onze vergelijker.</p>
            </div>
            
            <div class="faq-item">
                <h3 class="faq-question">Hoe lang duurt overstappen?</h3>
                <p class="faq-answer">Het invullen duurt ongeveer 5 minuten. De daadwerkelijke overstap kan 2-4 weken duren, afhankelijk van uw huidige contract.</p>
            </div>
            
            <div class="faq-item">
                <h3 class="faq-question">Moet ik mijn huidige leverancier opzeggen?</h3>
                <p class="faq-answer">Nee, dat hoeft niet! Uw nieuwe energieleverancier regelt het opzeggen automatisch voor u.</p>
            </div>
            
            <div class="faq-item">
                <h3 class="faq-question">Blijft mijn energie gewoon geleverd?</h3>
                <p class="faq-answer">Ja, u merkt niets van de overstap. Uw energielevering gaat gewoon door, alleen de leverancier en de prijs veranderen.</p>
            </div>
        </div>
        
        <div class="cta-center">
            <a href="<?= BASE_URL ?>/veelgestelde-vragen" class="btn btn-secondary">
                Bekijk Alle Vragen
            </a>
        </div>
    </div>
</section>

<!-- Final CTA -->
<section class="final-cta">
    <div class="container">
        <div class="cta-box">
            <h2>Klaar om te besparen?</h2>
            <p>Vergelijk nu gratis alle energieleveranciers en bespaar tot €500 per jaar</p>
            <a href="<?= BASE_URL ?>/energievergelijker" class="btn btn-primary btn-lg">
                Start Nu met Vergelijken
            </a>
            <p class="cta-note">✓ 100% Gratis ✓ Binnen 5 minuten ✓ Geen verplichtingen</p>
        </div>
    </div>
</section>

<?php include INCLUDES_PATH . '/footer.php'; ?>