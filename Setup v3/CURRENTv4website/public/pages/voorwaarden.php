 
<?php
/**
 * Terms & Conditions (Algemene Voorwaarden)
 * energievergelijken.trade
 */

require_once __DIR__ . '/../../includes/config.php';

$page_title = 'Algemene Voorwaarden';
$page_description = 'Lees de algemene voorwaarden voor het gebruik van energievergelijken.trade.';

include INCLUDES_PATH . '/head.php';
include INCLUDES_PATH . '/header.php';
?>

<div class="page-header">
    <div class="container">
        <h1>Algemene Voorwaarden</h1>
        <p>Laatst bijgewerkt: <?= date('d F Y') ?></p>
    </div>
</div>

<section class="legal-content">
    <div class="container">
        <div class="legal-document">
            
            <h2>1. Definities</h2>
            <p>In deze algemene voorwaarden wordt verstaan onder:</p>
            <ul>
                <li><strong>Dienst:</strong> De energievergelijkingsdienst aangeboden via energievergelijken.trade</li>
                <li><strong>Wij/Ons:</strong> <?= COMPANY_NAME ?>, KvK <?= COMPANY_KVK ?></li>
                <li><strong>Gebruiker/U:</strong> Natuurlijke of rechtspersoon die gebruik maakt van onze Dienst</li>
                <li><strong>Website:</strong> energievergelijken.trade en alle bijbehorende subdomeinen</li>
            </ul>

            <h2>2. Toepasselijkheid</h2>
            <p>
                Deze algemene voorwaarden zijn van toepassing op alle diensten die wij aanbieden via onze Website. 
                Door gebruik te maken van onze Dienst gaat u akkoord met deze voorwaarden.
            </p>

            <h2>3. Onze Dienst</h2>
            <h3>3.1 Energievergelijker</h3>
            <p>
                Wij bieden een gratis vergelijkingsdienst waarmee u energietarieven van verschillende leveranciers kunt vergelijken. 
                Wij zijn een onafhankelijke vergelijker en geen energieleverancier.
            </p>

            <h3>3.2 Onafhankelijkheid</h3>
            <p>
                Wij vergelijken energieleveranciers objectief. Wij ontvangen mogelijk een vergoeding van leveranciers 
                wanneer u via onze Website een contract afsluit. Dit heeft geen invloed op de vergelijkingsresultaten.
            </p>

            <h3>3.3 Geen Garanties</h3>
            <p>
                Wij streven naar actuele en correcte informatie, maar kunnen niet garanderen dat alle informatie 
                te allen tijde volledig, juist en actueel is. Prijzen en voorwaarden van energieleveranciers kunnen wijzigen.
            </p>

            <h2>4. Gebruik van de Website</h2>
            <h3>4.1 Toegestaan Gebruik</h3>
            <p>U mag onze Website gebruiken voor:</p>
            <ul>
                <li>Het vergelijken van energietarieven voor eigen gebruik</li>
                <li>Het raadplegen van energietips en informatie</li>
                <li>Het stellen van vragen via het contactformulier</li>
            </ul>

            <h3>4.2 Verboden Gebruik</h3>
            <p>Het is niet toegestaan om:</p>
            <ul>
                <li>De Website te gebruiken voor illegale doeleinden</li>
                <li>Geautomatiseerde systemen (bots, scrapers) te gebruiken zonder toestemming</li>
                <li>De Website of infrastructuur te beschadigen of te overbelasten</li>
                <li>Intellectuele eigendomsrechten te schenden</li>
                <li>Anderen te misleiden of spam te versturen</li>
            </ul>

            <h2>5. Aansprakelijkheid</h2>
            <h3>5.1 Beperkte Aansprakelijkheid</h3>
            <p>
                Wij zijn niet aansprakelijk voor schade die voortvloeit uit het gebruik van onze Dienst, 
                tenzij er sprake is van opzet of grove schuld van onze kant.
            </p>

            <h3>5.3 Geen Partij bij Contract</h3>
            <p>
                Wij zijn geen partij bij contracten tussen u en energieleveranciers. 
                Geschillen over contracten dient u rechtstreeks met de leverancier op te lossen.
            </p>

            <h3>5.3 Maximale Aansprakelijkheid</h3>
            <p>
                Onze aansprakelijkheid is in alle gevallen beperkt tot het bedrag dat in het betreffende geval 
                door onze aansprakelijkheidsverzekering wordt uitbetaald.
            </p>

            <h2>6. Intellectuele Eigendom</h2>
            <p>
                Alle rechten van intellectuele eigendom op de Website, inclusief maar niet beperkt tot teksten, 
                afbeeldingen, logo's, software en databases, berusten bij ons of onze licentiegevers.
            </p>
            <p>
                Het is niet toegestaan om content van onze Website te kopiëren, reproduceren of hergebruiken 
                zonder onze voorafgaande schriftelijke toestemming.
            </p>

            <h2>7. Privacy</h2>
            <p>
                Wij verwerken uw persoonsgegevens in overeenstemming met ons 
                <a href="<?= BASE_URL ?>/pages/privacybeleid.php">Privacybeleid</a>.
            </p>

            <h2>8. Links naar Derden</h2>
            <p>
                Onze Website kan links bevatten naar websites van derden (energieleveranciers). 
                Wij zijn niet verantwoordelijk voor de inhoud, privacy of praktijken van deze externe websites.
            </p>

            <h2>9. Wijzigingen</h2>
            <p>
                Wij behouden ons het recht voor om deze algemene voorwaarden te wijzigen. 
                Wijzigingen worden van kracht zodra ze op de Website zijn gepubliceerd. 
                Wij raden u aan deze voorwaarden regelmatig te raadplegen.
            </p>

            <h2>10. Toepasselijk Recht</h2>
            <p>
                Op deze algemene voorwaarden en alle overeenkomsten is Nederlands recht van toepassing. 
                Geschillen worden voorgelegd aan de bevoegde rechter in Nederland.
            </p>

            <h2>11. Slotbepalingen</h2>
            <p>
                Indien een bepaling uit deze voorwaarden nietig of onverbindend blijkt te zijn, 
                blijven de overige bepalingen volledig van kracht. De nietige bepaling wordt vervangen 
                door een wel geldige bepaling die de bedoeling van de oorspronkelijke bepaling zo dicht mogelijk benadert.
            </p>

            <h2>12. Contact</h2>
            <p>
                Voor vragen over deze algemene voorwaarden kunt u contact met ons opnemen:
            </p>
            <p>
                <strong><?= COMPANY_NAME ?></strong><br>
                E-mail: <a href="mailto:<?= COMPANY_EMAIL ?>"><?= COMPANY_EMAIL ?></a><br>
                Telefoon: <?= COMPANY_PHONE ?><br>
                Adres: <?= COMPANY_ADDRESS ?>
            </p>

        </div>
    </div>
</section>

<?php include INCLUDES_PATH . '/footer.php'; ?>