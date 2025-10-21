 <!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bevestiging contactformulier</title>
</head>
<body style="margin: 0; padding: 0; font-family: Arial, sans-serif; background-color: #f7fafc;">
    <table width="100%" cellpadding="0" cellspacing="0" style="background-color: #f7fafc; padding: 40px 0;">
        <tr>
            <td align="center">
                <table width="600" cellpadding="0" cellspacing="0" style="background-color: #ffffff; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">
                    <!-- Header -->
                    <tr>
                        <td style="background-color: #00a651; padding: 30px; text-align: center; border-radius: 8px 8px 0 0;">
                            <h1 style="color: #ffffff; margin: 0; font-size: 24px;">Bedankt voor uw bericht!</h1>
                        </td>
                    </tr>

                    <!-- Content -->
                    <tr>
                        <td style="padding: 40px 30px;">
                            <p style="margin: 0 0 20px 0; color: #2d3748; font-size: 16px;">
                                Beste <?= htmlspecialchars($data['name']) ?>,
                            </p>

                            <p style="margin: 0 0 20px 0; color: #2d3748; font-size: 16px;">
                                Hartelijk dank voor uw bericht. Wij hebben uw vraag goed ontvangen en zullen zo snel mogelijk reageren, meestal binnen 24 uur.
                            </p>

                            <div style="padding: 20px; background-color: #f7fafc; border-left: 4px solid #00a651; border-radius: 4px; margin: 30px 0;">
                                <p style="margin: 0 0 10px 0; color: #4a5568; font-weight: bold;">Uw bericht:</p>
                                <p style="margin: 0; color: #2d3748; white-space: pre-wrap;"><?= htmlspecialchars($data['message']) ?></p>
                            </div>

                            <p style="margin: 0 0 20px 0; color: #2d3748; font-size: 16px;">
                                Heeft u nog aanvullende vragen? Bel ons dan gerust op <?= COMPANY_PHONE ?> (ma-vr 09:00-17:00).
                            </p>

                            <div style="margin: 30px 0; text-align: center;">
                                <a href="<?= BASE_URL ?>" 
                                   style="display: inline-block; background-color: #00a651; color: #ffffff; padding: 14px 32px; text-decoration: none; border-radius: 6px; font-weight: bold;">
                                    Ga naar Website
                                </a>
                            </div>
                        </td>
                    </tr>

                    <!-- Footer -->
                    <tr>
                        <td style="padding: 20px 30px; background-color: #f7fafc; border-radius: 0 0 8px 8px;">
                            <p style="margin: 0 0 15px 0; color: #718096; font-size: 14px; text-align: center;">
                                Met vriendelijke groet,<br>
                                <strong><?= COMPANY_NAME ?></strong>
                            </p>
                            <p style="margin: 0; color: #718096; font-size: 12px; text-align: center;">
                                <?= COMPANY_ADDRESS ?><br>
                                <?= COMPANY_PHONE ?> | <a href="mailto:<?= COMPANY_EMAIL ?>" style="color: #00a651;"><?= COMPANY_EMAIL ?></a><br>
                                <a href="<?= BASE_URL ?>" style="color: #00a651;"><?= BASE_URL ?></a>
                            </p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
