 
<?php
/**
 * Contact Form Handler
 * energievergelijken.trade
 * 
 * Process contact form submissions with validation and email delivery
 */

declare(strict_types=1);

function process_contact_form(array $data): array
{
    // Check rate limiting
    if (RateLimiter::limit_form('contact')) {
        return [
            'success' => false,
            'errors' => ['general' => 'Te veel verzoeken. Probeer het over 5 minuten opnieuw.']
        ];
    }

    // Verify CSRF token
    if (!CSRF::verify_request()) {
        return [
            'success' => false,
            'errors' => ['general' => 'Beveiligingstoken is ongeldig. Ververs de pagina en probeer opnieuw.']
        ];
    }

    // Honeypot check (spam protection)
    if (!empty($data['website'])) {
        // Bot detected, silently fail
        error_log('Contact form spam detected from IP: ' . get_client_ip());
        return ['success' => true]; // Pretend success to fool bot
    }

    // Validate input
    $validator = new Validator();
    
    $validator->required('name', $data['name'] ?? '', 'Naam is verplicht')
              ->min_length('name', $data['name'] ?? '', 2, 'Naam moet minimaal 2 tekens zijn')
              ->max_length('name', $data['name'] ?? '', 100, 'Naam mag maximaal 100 tekens zijn');

    $validator->required('email', $data['email'] ?? '', 'E-mailadres is verplicht')
              ->email('email', $data['email'] ?? '', 'Ongeldig e-mailadres');

    if (!empty($data['phone'])) {
        $validator->phone('phone', $data['phone'], 'Ongeldig telefoonnummer');
    }

    $validator->required('subject', $data['subject'] ?? '', 'Onderwerp is verplicht')
              ->in_array('subject', $data['subject'] ?? '', 
                  ['algemeen', 'vergelijker', 'overstappen', 'klacht', 'zakelijk'],
                  'Ongeldig onderwerp');

    $validator->required('message', $data['message'] ?? '', 'Bericht is verplicht')
              ->min_length('message', $data['message'] ?? '', 10, 'Bericht moet minimaal 10 tekens zijn')
              ->max_length('message', $data['message'] ?? '', 2000, 'Bericht mag maximaal 2000 tekens zijn');

    $validator->required('privacy', $data['privacy'] ?? '', 'U moet akkoord gaan met het privacybeleid');

    if ($validator->fails()) {
        return [
            'success' => false,
            'errors' => $validator->get_errors()
        ];
    }

    // Sanitize data
    $clean_data = [
        'name' => Sanitizer::html($validator->get('name')),
        'email' => Sanitizer::email($validator->get('email')),
        'phone' => Sanitizer::phone($validator->get('phone') ?? ''),
        'subject' => $validator->get('subject'),
        'message' => Sanitizer::strip_tags($validator->get('message')),
        'ip' => get_client_ip(),
        'user_agent' => $_SERVER['HTTP_USER_AGENT'] ?? 'Unknown',
        'submitted_at' => date('Y-m-d H:i:s')
    ];

    // Send emails
    $email_sent = send_contact_emails($clean_data);

    if (!$email_sent) {
        error_log('Failed to send contact form email: ' . json_encode($clean_data));
        return [
            'success' => false,
            'errors' => ['general' => 'Er is een fout opgetreden bij het verzenden. Probeer het later opnieuw.']
        ];
    }

    // Log successful submission
    error_log('Contact form submitted successfully from: ' . $clean_data['email']);

    return ['success' => true];
}

function send_contact_emails(array $data): bool
{
    // Map subjects to Dutch
    $subjects_map = [
        'algemeen' => 'Algemene vraag',
        'vergelijker' => 'Vraag over vergelijker',
        'overstappen' => 'Hulp bij overstappen',
        'klacht' => 'Klacht',
        'zakelijk' => 'Zakelijk contact'
    ];

    $subject_nl = $subjects_map[$data['subject']] ?? 'Contact formulier';

    // Send notification to admin
    $admin_email = send_admin_notification($data, $subject_nl);

    // Send confirmation to user
    $user_email = send_user_confirmation($data, $subject_nl);

    return $admin_email && $user_email;
}

function send_admin_notification(array $data, string $subject_nl): bool
{
    $to = CONTACT_RECIPIENT;
    $subject = CONTACT_SUBJECT_PREFIX . $subject_nl;
    
    ob_start();
    include __DIR__ . '/../email/templates/contact-notification.php';
    $message = ob_get_clean();

    $headers = [
        'From: ' . $_ENV['SMTP_FROM_NAME'] . ' <' . $_ENV['SMTP_FROM_EMAIL'] . '>',
        'Reply-To: ' . $data['name'] . ' <' . $data['email'] . '>',
        'MIME-Version: 1.0',
        'Content-Type: text/html; charset=UTF-8'
    ];

    return mail($to, $subject, $message, implode("\r\n", $headers));
}

function send_user_confirmation(array $data, string $subject_nl): bool
{
    $to = $data['email'];
    $subject = 'Bevestiging: Wij hebben uw bericht ontvangen';
    
    ob_start();
    include __DIR__ . '/../email/templates/contact-confirmation.php';
    $message = ob_get_clean();

    $headers = [
        'From: ' . $_ENV['SMTP_FROM_NAME'] . ' <' . $_ENV['SMTP_FROM_EMAIL'] . '>',
        'MIME-Version: 1.0',
        'Content-Type: text/html; charset=UTF-8'
    ];

    return mail($to, $subject, $message, implode("\r\n", $headers));
}