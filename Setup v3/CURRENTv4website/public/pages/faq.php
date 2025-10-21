<?php
/**
 * FAQ - Veelgestelde Vragen
 * energievergelijken.trade
 */

require_once __DIR__ . '/../../includes/config.php';

$page_title = 'Veelgestelde Vragen over Energie Vergelijken';
$page_description = 'Antwoorden op de meest gestelde vragen over energie vergelijken, overstappen van leverancier en besparen op uw energierekening.';

include INCLUDES_PATH . '/head.php';
include INCLUDES_PATH . '/header.php';
?>

<div class="page-header">
    <div class="container">
        <h1>Veelgestelde Vragen</h1>
        <p>Alles wat u moet weten over energie vergelijken en overstappen</p>
    </div>
</div>

<section class="faq-page">
    <div class="container">
        <div class="faq-categories">
            <button class="faq-cat-btn active" data-category="all">Alle vragen</button>
            <button class="faq-cat-btn" data-category="vergelijken">Vergelijken</button>
            <button class="faq-cat-btn" data-category="overstappen">Overstappen</button>
            <button class="faq-cat-btn" data-category="besparen">Besparen</button>
        </div>

        <div class="faq-list">
            <!-- Vergelijken -->
            <div class="faq-item" data-category="vergelijken">
                <button class="faq-question">
                    Hoe werkt energie vergelijken?
                    <svg class="faq-icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"/>
                    </svg>
                </button>
                <div class="faq-answer">
                    <p>Energie vergelijken is eenvoudig:</p>
                    <ol>
                        <li>Vul uw postcode en verbruik in</li>
                        <li>Bekijk alle beschikbare aanbiedingen</li>
                        <li>Vergelijk prijzen en voorwaarden</li>
                        <li>Kies de beste optie voor uw situatie</li>
                    </ol>
                    <p>Het hele proces duurt slechts 2 minuten en is volledig gratis.</p>
                </div>
            </div>

            <div class="faq-item" data-category="vergelijken">
                <button class="faq-question">
                    Is energie vergelijken echt gratis?
                    <svg class="faq-icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"/>
                    </svg>
                </button>
                <div class="faq-answer">
                    <p>Ja, energie vergelijken via onze website is 100% gratis en vrijblijvend. U betaalt niets voor het vergelijken of bekijken van aanbiedingen. Alleen als u daadwerkelijk besluit over te stappen, sluit u een contract met de nieuwe leverancier.</p>
                </div>
            </div>

            <div class="faq-item" data-category="vergelijken">
                <button class="faq-question">
                    Zijn jullie onafhankelijk?
                    <svg class="faq-icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"/>
                    </svg>
                </button>
                <div class="faq-answer">
                    <p>Ja, wij zijn een onafhankelijke vergelijker. Wij tonen alle beschikbare aanbiedingen zonder voorkeur voor een specifieke leverancier. Onze rangschikking is gebaseerd op prijs en voorwaarden, niet op commissie.</p>
                </div>
            </div>

            <!-- Overstappen -->
            <div class="faq-item" data-category="overstappen">
                <button class="faq-question">
                    Hoe lang duurt overstappen?
                    <svg class="faq-icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"/>
                    </svg>
                </button>
                <div class="faq-answer">
                    <p>Overstappen duurt gemiddeld 2-4 weken. De nieuwe leverancier regelt alles voor u, inclusief het opzeggen bij uw oude leverancier. U hoeft zelf niets te doen behalve het contract tekenen.</p>
                </div>
            </div>

            <div class="faq-item" data-category="overstappen">
                <button class="faq-question">
                    Kan ik altijd overstappen?
                    <svg class="faq-icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"/>
                    </svg>
                </button>
                <div class="faq-answer">
                    <p>Ja, u kunt altijd overstappen, ook tijdens een lopend contract. Let wel op:</p>
                    <ul>
                        <li>Bij een vast contract binnen de looptijd kunnen opzegkosten gelden</li>
                        <li>Bij een variabel contract zijn er meestal geen opzegkosten</li>
                        <li>Check altijd uw huidige voorwaarden voor u overstapt</li>
                    </ul>
                </div>
            </div>

            <div class="faq-item" data-category="overstappen">
                <button class="faq-question">
                    Zit ik zonder stroom tijdens overstappen?
                    <svg class="faq-icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"/>
                    </svg>
                </button>
                <div class="faq-answer">
                    <p>Nee, u zit nooit zonder stroom of gas. De levering is wettelijk gegarandeerd. Alleen de leverancier (en dus de rekening) verandert, niet de fysieke levering.</p>
                </div>
            </div>

            <!-- Besparen -->
            <div class="faq-item" data-category="besparen">
                <button class="faq-question">
                    Hoeveel kan ik besparen?
                    <svg class="faq-icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"/>
                    </svg>
                </button>
                <div class="faq-answer">
                    <p>De gemiddelde besparing door over te stappen is €300-500 per jaar. Dit hangt af van:</p>
                    <ul>
                        <li>Uw huidige tarief</li>
                        <li>Uw energieverbruik</li>
                        <li>Het gekozen nieuwe tarief</li>
                        <li>Vast of variabel contract</li>
                    </ul>
                    <p>Vergelijk altijd eerst om uw persoonlijke besparing te zien.</p>
                </div>
            </div>

            <div class="faq-item" data-category="besparen">
                <button class="faq-question">
                    Vast of variabel tarief kiezen?
                    <svg class="faq-icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"/>
                    </svg>
                </button>
                <div class="faq-answer">
                    <p><strong>Vast tarief:</strong> Zekerheid, prijs blijft 1-3 jaar hetzelfde. Ideaal als u budgetzekerheid wilt.</p>
                    <p><strong>Variabel tarief:</strong> Prijs kan stijgen of dalen. Ideaal als u flexibiliteit wilt en vertrouwt op dalende prijzen.</p>
                    <p>Onze tip: Bij dalende energieprijzen is variabel vaak voordeliger. Bij stijgende prijzen kiest u beter voor vast.</p>
                </div>
            </div>

            <div class="faq-item" data-category="besparen">
                <button class="faq-question">
                    Wat zijn de beste bespaartips?
                    <svg class="faq-icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"/>
                    </svg>
                </button>
                <div class="faq-answer">
                    <p>Top 5 bespaartips:</p>
                    <ol>
                        <li><strong>Overstappen:</strong> Grootste besparing, gemiddeld €400/jaar</li>
                        <li><strong>Thermostaat lager:</strong> 1°C lager = 6% besparing</li>
                        <li><strong>LED verlichting:</strong> Tot 90% minder stroomverbruik</li>
                        <li><strong>Standby uitzetten:</strong> Bespaart €50-100/jaar</li>
                        <li><strong>Zuinig douchen:</strong> Korter douchen bespaart gas en water</li>
                    </ol>
                    <p><a href="<?= BASE_URL ?>/pages/blog.php">Lees meer tips in ons blog →</a></p>
                </div>
            </div>

            <!-- Algemeen -->
            <div class="faq-item" data-category="vergelijken">
                <button class="faq-question">
                    Welke gegevens heb ik nodig om te vergelijken?
                    <svg class="faq-icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"/>
                    </svg>
                </button>
                <div class="faq-answer">
                    <p>U heeft alleen nodig:</p>
                    <ul>
                        <li>Uw postcode (voor beschikbare leveranciers)</li>
                        <li>Uw jaarverbruik stroom (in kWh)</li>
                        <li>Uw jaarverbruik gas (in m³) - indien van toepassing</li>
                    </ul>
                    <p>Uw verbruik vindt u op uw laatste energierekening.</p>
                </div>
            </div>

            <div class="faq-item" data-category="overstappen">
                <button class="faq-question">
                    Wat als ik mijn verbruik niet weet?
                    <svg class="faq-icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"/>
                    </svg>
                </button>
                <div class="faq-answer">
                    <p>Geen probleem! U kunt:</p>
                    <ul>
                        <li>Uw laatste energierekening bekijken</li>
                        <li>Inloggen bij uw huidige leverancier</li>
                        <li>Een schatting maken op basis van uw woningsituatie:
                            <ul>
                                <li>1-2 personen: ~2.500 kWh stroom, ~1.200 m³ gas</li>
                                <li>3-4 personen: ~3.500 kWh stroom, ~1.500 m³ gas</li>
                                <li>5+ personen: ~4.500 kWh stroom, ~1.800 m³ gas</li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- CTA -->
<section class="cta-section">
    <div class="container">
        <h2>Nog vragen? Wij helpen u graag!</h2>
        <p>Neem contact op voor persoonlijk advies</p>
        <a href="<?= BASE_URL ?>/pages/contact.php" class="btn btn-primary btn-lg">
            Contact Opnemen
        </a>
    </div>
</section>

<script>
// FAQ accordion functionaliteit
document.querySelectorAll('.faq-question').forEach(button => {
    button.addEventListener('click', () => {
        const item = button.closest('.faq-item');
        const isOpen = item.classList.contains('active');
        
        // Sluit alle andere
        document.querySelectorAll('.faq-item').forEach(i => i.classList.remove('active'));
        
        // Toggle huidige
        if (!isOpen) {
            item.classList.add('active');
        }
    });
});

// Category filter
document.querySelectorAll('.faq-cat-btn').forEach(btn => {
    btn.addEventListener('click', () => {
        const category = btn.dataset.category;
        
        // Update active button
        document.querySelectorAll('.faq-cat-btn').forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        
        // Filter items
        document.querySelectorAll('.faq-item').forEach(item => {
            if (category === 'all' || item.dataset.category === category) {
                item.style.display = 'block';
            } else {
                item.style.display = 'none';
            }
        });
    });
});
</script>

<?php include INCLUDES_PATH . '/footer.php'; ?>