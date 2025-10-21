 
<?php
/**
 * Privacy Policy (Privacybeleid)
 * energievergelijken.trade
 * 
 * GDPR-compliant privacy policy in Dutch
 */

require_once __DIR__ . '/../../includes/config.php';

$page_title = 'Privacybeleid';
$page_description = 'Lees hoe energievergelijken.trade uw persoonlijke gegevens verwerkt en beschermt volgens de AVG wetgeving.';
$page_robots = 'index, follow';

include INCLUDES_PATH . '/head.php';
include INCLUDES_PATH . '/header.php';
?>

<div class="page-header">
    <div class="container">
        <h1>Privacybeleid</h1>
        <p>Laatst bijgewerkt: <?= date('d F Y') ?></p>
    </div>
</div>

<section class="legal-content">
    <div class="container">
        <div class="legal-document">
            
            <h2>1. Inleiding</h2>
            <p>
                <?= COMPANY_NAME ?> ("wij", "ons", "onze") respecteert uw privacy en hecht groot belang aan de bescherming van uw persoonsgegevens. 
                In dit privacybeleid leggen wij uit welke gegevens wij verzamelen, waarom we deze verzamelen, en wat wij ermee doen.
            </p>
            <p>
                Dit privacybeleid is van toepassing op alle diensten die wij aanbieden via energievergelijken.trade.
            </p>

            <h2>2. Verantwoordelijke</h2>
            <p>
                <?= COMPANY_NAME ?><br>
                <?= COMPANY_ADDRESS ?><br>
                KvK-nummer: <?= COMPANY_KVK ?><br>
                BTW-nummer: <?= COMPANY_BTW ?><br>
                E-mail: <?= COMPANY_EMAIL ?><br>
                Telefoon: <?= COMPANY_PHONE ?>
            </p>

            <h2>3. Welke gegevens verzamelen wij?</h2>
            
            <h3>3.1 Gegevens die u ons verstrekt</h3>
            <p>Wij verzamelen de volgende persoonsgegevens die u direct aan ons verstrekt:</p>
            <ul>
                <li><strong>Contactformulier:</strong> naam, e-mailadres, telefoonnummer (optioneel), bericht</li>
                <li><strong>Energievergelijker:</strong> postcode, huisnummer, energieverbruik</li>
                <li><strong>Nieuwsbrief:</strong> e-mailadres</li>
            </ul>

            <h3>3.2 Gegevens die automatisch worden verzameld</h3>
            <p>Wij verzamelen automatisch de volgende gegevens wanneer u onze website bezoekt:</p>
            <ul>
                <li>IP-adres</li>
                <li>Browsertype en -versie</li>
                <li>Bezochte pagina's en tijdstip</li>
                <li>Verwijs-URL (van welke website u komt)</li>
                <li>Apparaatinformatie</li>
            </ul>

            <h2>4. Waarvoor gebruiken wij uw gegevens?</h2>
            <p>Wij gebruiken uw persoonsgegevens voor de volgende doeleinden:</p>
            <ul>
                <li><strong>Energievergelijking:</strong> Het vergelijken van energietarieven en aanbiedingen</li>
                <li><strong>Klantenservice:</strong> Beantwoorden van vragen via contactformulier of telefoon</li>
                <li><strong>Verbetering website:</strong> Analyseren van websitegebruik om onze dienst te verbeteren</li>
                <li><strong>Marketing:</strong> Versturen van nieuwsbrieven (alleen met uw toestemming)</li>
                <li><strong>Wettelijke verplichtingen:</strong> Voldoen aan wettelijke verplichtingen</li></ul>

            <h2>5. Rechtsgrondslag verwerking</h2>
            <p>Wij verwerken uw persoonsgegevens op basis van de volgende rechtsgrondslagen:</p>
            <ul>
                <li><strong>Toestemming:</strong> Voor nieuwsbrieven en marketing (AVG art. 6 lid 1 sub a)</li>
                <li><strong>Uitvoering overeenkomst:</strong> Voor het leveren van onze vergelijkingsdienst (AVG art. 6 lid 1 sub b)</li>
                <li><strong>Gerechtvaardigd belang:</strong> Voor websiteanalyse en verbetering (AVG art. 6 lid 1 sub f)</li>
                <li><strong>Wettelijke verplichting:</strong> Voor administratieve doeleinden (AVG art. 6 lid 1 sub c)</li>
            </ul>

            <h2>6. Cookies en tracking</h2>
            <p>
                Wij gebruiken cookies om uw websitebezoek te verbeteren. Voor meer informatie, zie ons 
                <a href="<?= BASE_URL ?>/pages/cookiebeleid.php">Cookiebeleid</a>.
            </p>

            <h2>7. Bewaartermijnen</h2>
            <p>Wij bewaren uw gegevens niet langer dan noodzakelijk:</p>
            <ul>
                <li><strong>Contactformulier:</strong> 2 jaar na laatste contact</li>
                <li><strong>Energievergelijking:</strong> Direct na voltooiing vergelijking (niet opgeslagen)</li>
                <li><strong>Nieuwsbrief:</strong> Tot uitschrijving</li>
                <li><strong>Websitestatistieken:</strong> Geanonimiseerd na 14 maanden</li>
            </ul>

            <h2>8. Delen met derden</h2>
            <p>Wij delen uw gegevens alleen met derden wanneer dit noodzakelijk is:</p>
            <ul>
                <li><strong>Energieleveranciers:</strong> Alleen indien u kiest om over te stappen (met uw toestemming)</li>
                <li><strong>IT-dienstverleners:</strong> Voor hosting en onderhoud (verwerkersovereenkomst)</li>
                <li><strong>Analysetools:</strong> Google Analytics (geanonimiseerd IP-adres)</li>
            </ul>
            <p>Wij verkopen uw gegevens nooit aan derden.</p>

            <h2>9. Beveiliging</h2>
            <p>Wij nemen passende technische en organisatorische maatregelen om uw gegevens te beschermen:</p>
            <ul>
                <li>SSL/TLS encryptie (HTTPS)</li>
                <li>Beveiligde servers en databases</li>
                <li>Toegangscontrole en logging</li>
                <li>Regelmatige security updates</li>
                <li>Geen opslag van gevoelige financiële gegevens</li>
            </ul>

            <h2>10. Uw rechten (AVG)</h2>
            <p>U heeft de volgende rechten met betrekking tot uw persoonsgegevens:</p>
            <ul>
                <li><strong>Recht op inzage:</strong> U kunt opvragen welke gegevens wij van u hebben</li>
                <li><strong>Recht op rectificatie:</strong> U kunt onjuiste gegevens laten corrigeren</li>
                <li><strong>Recht op verwijdering:</strong> U kunt verzoeken uw gegevens te laten verwijderen</li>
                <li><strong>Recht op beperking:</strong> U kunt verzoeken de verwerking te beperken</li>
                <li><strong>Recht op bezwaar:</strong> U kunt bezwaar maken tegen verwerking</li>
                <li><strong>Recht op dataportabiliteit:</strong> U kunt uw gegevens in een gestructureerd formaat ontvangen</li>
                <li><strong>Recht om toestemming in te trekken:</strong> Voor verwerkingen gebaseerd op toestemming</li>
            </ul>
            <p>
                Om uw rechten uit te oefenen, kunt u contact met ons opnemen via 
                <a href="mailto:<?= COMPANY_EMAIL ?>?subject=AVG verzoek"><?= COMPANY_EMAIL ?></a>
            </p>

            <h2>11. Klacht indienen</h2>
            <p>
                Indien u een klacht heeft over hoe wij met uw gegevens omgaan, kunt u contact met ons opnemen. 
                U heeft ook het recht een klacht in te dienen bij de Autoriteit Persoonsgegevens:
            </p>
            <p>
                <strong>Autoriteit Persoonsgegevens</strong><br>
                Postbus 93374<br>
                2509 AJ Den Haag<br>
                Website: <a href="https://autoriteitpersoonsgegevens.nl" target="_blank" rel="noopener">autoriteitpersoonsgegevens.nl</a>
            </p>

            <h2>12. Kinderen</h2>
            <p>
                Onze diensten zijn niet gericht op personen jonger dan 16 jaar. Wij verzamelen niet bewust gegevens van minderjarigen. 
                Indien u denkt dat wij gegevens van een minderjarige hebben verzameld, neem dan contact met ons op.
            </p>

            <h2>13. Wijzigingen privacybeleid</h2>
            <p>
                Wij kunnen dit privacybeleid van tijd tot tijd aanpassen. De meest actuele versie staat altijd op deze pagina. 
                Wij raden u aan om dit privacybeleid regelmatig te raadplegen.
            </p>

            <h2>14. Contact</h2>
            <p>
                Voor vragen over dit privacybeleid of onze gegevensverwerkingen kunt u contact met ons opnemen:
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