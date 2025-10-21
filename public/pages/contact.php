 
<?php
/**
 * Contact Page
 * energievergelijken.trade
 * 
 * Contact form with validation and spam protection
 */

require_once __DIR__ . '/../../includes/config.php';
require_once __DIR__ . '/../../includes/security/headers.php';

// Handle form submission
$form_submitted = false;
$form_success = false;
$form_errors = [];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    require_once __DIR__ . '/../../includes/forms/contact-handler.php';
    $result = process_contact_form($_POST);
    $form_submitted = true;
    $form_success = $result['success'];
    $form_errors = $result['errors'] ?? [];
}

// Page meta
$page_title = 'Contact - Stel uw vraag';
$page_description = 'Heeft u een vraag over energievergelijken? Neem contact met ons op. We helpen u graag verder met persoonlijk advies.';

include INCLUDES_PATH . '/head.php';
include INCLUDES_PATH . '/header.php';
?>

<div class="page-header">
    <div class="container">
        <h1>Contact</h1>
        <p>Heeft u een vraag? Wij helpen u graag verder!</p>
    </div>
</div>

<section class="contact-section">
    <div class="container">
        <div class="contact-grid">
            <!-- Contact Information -->
            <div class="contact-info">
                <h2>Contactgegevens</h2>
                
                <div class="info-block">
                    <h3>📞 Telefonisch</h3>
                    <p><strong><?= COMPANY_PHONE ?></strong></p>
                    <p>Bereikbaar: ma-vr 09:00-17:00</p>
                </div>

                <div class="info-block">
                    <h3>📧 E-mail</h3>
                    <p><a href="mailto:<?= COMPANY_EMAIL ?>"><?= COMPANY_EMAIL ?></a></p>
                    <p>Reactie binnen 24 uur</p>
                </div>

                <div class="info-block">
                    <h3>📍 Adres</h3>
                    <p><?= COMPANY_ADDRESS ?></p>
                </div>

                <div class="info-block">
                    <h3>⏰ Openingstijden</h3>
                    <?php foreach (BUSINESS_HOURS as $day => $hours): ?>
                    <p><strong><?= $day ?>:</strong> <?= $hours ?></p>
                    <?php endforeach; ?>
                </div>
            </div>

            <!-- Contact Form -->
            <div class="contact-form-wrapper">
                <h2>Stel uw vraag</h2>

                <?php if ($form_submitted && $form_success): ?>
                <div class="alert alert-success">
                    ✓ Bedankt voor uw bericht! We nemen zo snel mogelijk contact met u op.
                </div>
                <?php elseif ($form_submitted && !empty($form_errors)): ?>
                <div class="alert alert-error">
                    Er zijn enkele problemen met uw formulier. Controleer de velden hieronder.
                </div>
                <?php endif; ?>

                <form method="POST" action="" class="contact-form" novalidate>
                    <?= CSRF::field() ?>
                    
                    <!-- Honeypot (hidden spam trap) -->
                    <input type="text" name="website" style="display:none" tabindex="-1" autocomplete="off">

                    <div class="form-group">
                        <label for="name">Naam *</label>
                        <input 
                            type="text" 
                            id="name" 
                            name="name" 
                            class="form-control <?= isset($form_errors['name']) ? 'error' : '' ?>"
                            value="<?= Sanitizer::html($_POST['name'] ?? '') ?>"
                            required
                        >
                        <?php if (isset($form_errors['name'])): ?>
                        <span class="error-message"><?= $form_errors['name'] ?></span>
                        <?php endif; ?>
                    </div>

                    <div class="form-group">
                        <label for="email">E-mailadres *</label>
                        <input 
                            type="email" 
                            id="email" 
                            name="email" 
                            class="form-control <?= isset($form_errors['email']) ? 'error' : '' ?>"
                            value="<?= Sanitizer::html($_POST['email'] ?? '') ?>"
                            required
                        >
                        <?php if (isset($form_errors['email'])): ?>
                        <span class="error-message"><?= $form_errors['email'] ?></span>
                        <?php endif; ?>
                    </div>

                    <div class="form-group">
                        <label for="phone">Telefoonnummer (optioneel)</label>
                        <input 
                            type="tel" 
                            id="phone" 
                            name="phone" 
                            class="form-control <?= isset($form_errors['phone']) ? 'error' : '' ?>"
                            value="<?= Sanitizer::html($_POST['phone'] ?? '') ?>"
                            placeholder="06 12345678"
                        >
                        <?php if (isset($form_errors['phone'])): ?>
                        <span class="error-message"><?= $form_errors['phone'] ?></span>
                        <?php endif; ?>
                    </div>

                    <div class="form-group">
                        <label for="subject">Onderwerp *</label>
                        <select id="subject" name="subject" class="form-control" required>
                            <option value="">Selecteer een onderwerp</option>
                            <option value="algemeen" <?= ($_POST['subject'] ?? '') === 'algemeen' ? 'selected' : '' ?>>Algemene vraag</option>
                            <option value="vergelijker" <?= ($_POST['subject'] ?? '') === 'vergelijker' ? 'selected' : '' ?>>Vraag over vergelijker</option>
                            <option value="overstappen" <?= ($_POST['subject'] ?? '') === 'overstappen' ? 'selected' : '' ?>>Hulp bij overstappen</option>
                            <option value="klacht" <?= ($_POST['subject'] ?? '') === 'klacht' ? 'selected' : '' ?>>Klacht</option>
                            <option value="zakelijk" <?= ($_POST['subject'] ?? '') === 'zakelijk' ? 'selected' : '' ?>>Zakelijk contact</option>
                        </select>
                        <?php if (isset($form_errors['subject'])): ?>
                        <span class="error-message"><?= $form_errors['subject'] ?></span>
                        <?php endif; ?>
                    </div>

                    <div class="form-group">
                        <label for="message">Bericht *</label>
                        <textarea 
                            id="message" 
                            name="message" 
                            class="form-control <?= isset($form_errors['message']) ? 'error' : '' ?>"
                            rows="6" 
                            required
                        ><?= Sanitizer::html($_POST['message'] ?? '') ?></textarea>
                        <?php if (isset($form_errors['message'])): ?>
                        <span class="error-message"><?= $form_errors['message'] ?></span>
                        <?php endif; ?>
                    </div>

                    <div class="form-group">
                        <label class="checkbox-label">
                            <input type="checkbox" name="privacy" value="1" required>
                            Ik ga akkoord met het <a href="<?= BASE_URL ?>/pages/privacybeleid.php" target="_blank">privacybeleid</a> *
                        </label>
                        <?php if (isset($form_errors['privacy'])): ?>
                        <span class="error-message"><?= $form_errors['privacy'] ?></span>
                        <?php endif; ?>
                    </div>

                    <button type="submit" class="btn btn-primary btn-lg">
                        <svg width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"/>
                            <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"/>
                        </svg>
                        Verstuur Bericht
                    </button>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- FAQ Section -->
<section class="faq-section">
    <div class="container">
        <h2 class="section-title">Veelgestelde Vragen</h2>
        <div class="faq-grid">
            <div class="faq-item">
                <h3>Hoe snel krijg ik antwoord?</h3>
                <p>We streven ernaar om binnen 24 uur te reageren op alle vragen via e-mail of telefoon.</p>
            </div>
            <div class="faq-item">
                <h3>Kan ik ook bellen?</h3>
                <p>Ja, u kunt ons bellen op <?= COMPANY_PHONE ?> tijdens kantooruren (ma-vr 09:00-17:00).</p>
            </div>
            <div class="faq-item">
                <h3>Zijn jullie onafhankelijk?</h3>
                <p>Ja, wij zijn een 100% onafhankelijke energievergelijker zonder voorkeur voor specifieke leveranciers.</p>
            </div>
        </div>
    </div>
</section>

<?php include INCLUDES_PATH . '/footer.php'; ?>