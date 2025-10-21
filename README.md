## STAP 2: Log In Op Je Hosting

Na bestellen krijg je een email met:
- Inlog URL (bijv. mijnhosting.nl/cpanel)
- Gebruikersnaam
- Wachtwoord

**Log in** en je ziet een dashboard met iconen.

---

## STAP 3: Bestanden Uploaden (2 Manieren)

### MAKKELIJKSTE MANIER: File Manager

**In je hosting dashboard:**

1. Klik op "File Manager" of "Bestandsbeheer"
2. Je ziet nu mappen zoals: `public_html` of `httpdocs`
3. Dubbelklik op `public_html` (dit is je website map)
4. Klik op "Upload" knop (bovenin)
5. Selecteer ALLE mappen en bestanden van je website
6. Wacht tot upload klaar is (kan 2-5 minuten duren)

**Resultaat:** Al je website bestanden staan nu online!

### OF: Via FTP (Als File Manager niet werkt)

**Download programma:**
- Ga naar filezilla-project.org
- Download FileZilla (gratis)
- Installeer het

**Verbinden:**
1. Open FileZilla
2. Vul bovenin in (staat in je hosting email):
   - Host: ftp.jouwhosting.nl
   - Gebruikersnaam: [van hosting email]
   - Wachtwoord: [van hosting email]
   - Poort: 21
3. Klik "Verbinden"

**Uploaden:**
1. Links: je computer → zoek je website map
2. Rechts: de server → ga naar `public_html`
3. Sleep van links naar rechts
4. Wacht tot alles geüpload is

---

## STAP 4: Website Root Instellen

**Wat is dit?** Zorgen dat bezoekers direct je homepage zien.

**In hosting dashboard:**

1. Zoek "Addon Domains" of "Domeinen" of "Domains"
2. Klik op je domein (energievergelijken.trade)
3. Zoek het veld "Document Root" of "Website Root"
4. Verander het naar: `public_html/website/public`
5. Klik "Opslaan"

**Let op:** Elke hosting heeft dit net iets anders. Zoek in de handleiding naar "document root wijzigen"

---

## STAP 5: Email Instellen (Voor Contactformulier)

### Email Account Aanmaken

**In hosting dashboard:**

1. Zoek "Email Accounts" of "E-mail"
2. Klik "Nieuw email account"
3. Vul in:
   - Email: noreply@energievergelijken.trade
   - Wachtwoord: [maak sterk wachtwoord]
4. Klik "Aanmaken"

### Instellingen Invullen

**Bestand openen:** `config/.env`

**In File Manager:**
1. Ga naar `public_html/website/config`
2. Rechtermuisklik op `.env.example`
3. Klik "Copy" of "Kopiëren"
4. Noem de kopie: `.env` (zonder .example)
5. Rechtermuisklik op `.env` → "Edit" of "Bewerken"

**Vul dit in:**