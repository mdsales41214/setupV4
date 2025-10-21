 
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nieuw contactformulier bericht</title>
</head>
<body style="margin: 0; padding: 0; font-family: Arial, sans-serif; background-color: #f7fafc;">
    <table width="100%" cellpadding="0" cellspacing="0" style="background-color: #f7fafc; padding: 40px 0;">
        <tr>
            <td align="center">
                <table width="600" cellpadding="0" cellspacing="0" style="background-color: #ffffff; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">
                    <!-- Header -->
                    <tr>
                        <td style="background-color: #00a651; padding: 30px; text-align: center; border-radius: 8px 8px 0 0;">
                            <h1 style="color: #ffffff; margin: 0; font-size: 24px;">Nieuw Contact Bericht</h1>
                        </td>
                    </tr>

                    <!-- Content -->
                    <tr>
                        <td style="padding: 40px 30px;">
                            <p style="margin: 0 0 20px 0; color: #2d3748; font-size: 16px;">
                                Er is een nieuw bericht ontvangen via het contactformulier:
                            </p>

                            <table width="100%" cellpadding="10" cellspacing="0" style="border: 1px solid #e2e8f0; border-radius: 4px;">
                                <tr style="background-color: #f7fafc;">
                                    <td width="30%" style="color: #4a5568; font-weight: bold;">Naam:</td>
                                    <td style="color: #2d3748;"><?= htmlspecialchars($data['name']) ?></td>
                                </tr>
                                <tr>
                                    <td style="color: #4a5568; font-weight: bold;">E-mail:</td>
                                    <td style="color: #2d3748;">
                                        <a href="mailto:<?= htmlspecialchars($data['email']) ?>" style="color: #00a651;">
                                            <?= htmlspecialchars($data['email']) ?>
                                        </a>
                                    </td>
                                </tr>
                                <?php if (!empty($data['phone'])): ?>
                                <tr style="background-color: #f7fafc;">
                                    <td style="color: #4a5568; font-weight: bold;">Telefoon:</td>
                                    <td style="color: #2d3748;"><?= htmlspecialchars($data['phone']) ?></td>
                                </tr>
                                <?php endif; ?>
                                <tr>
                                    <td style="color: #4a5568; font-weight: bold;">Onderwerp:</td>
                                    <td style="color: #2d3748;"><?= htmlspecialchars($subject_nl) ?></td>
                                </tr>
                                <tr style="background-color: #f7fafc;">
                                    <td style="color: #4a5568; font-weight: bold;">IP Adres:</td>
                                    <td style="color: #2d3748; font-size: 12px;"><?= htmlspecialchars($data['ip']) ?></td>
                                </tr>
                                <tr>
                                    <td style="color: #4a5568; font-weight: bold;">Datum/Tijd:</td>
                                    <td style="color: #2d3748;"><?= htmlspecialchars($data['submitted_at']) ?></td>
                                </tr>
                            </table>

                            <div style="margin-top: 30px; padding: 20px; background-color: #f7fafc; border-left: 4px solid #00a651; border-radius: 4px;">
                                <p style="margin: 0 0 10px 0; color: #4a5568; font-weight: bold;">Bericht:</p>
                                <p style="margin: 0; color: #2d3748; white-space: pre-wrap;"><?= htmlspecialchars($data['message']) ?></p>
                            </div>

                            <div style="margin-top: 30px; text-align: center;">
                                <a href="mailto:<?= htmlspecialchars($data['email']) ?>?subject=Re: <?= urlencode($subject_nl) ?>" 
                                   style="display: inline-block; background-color: #00a651; color: #ffffff; padding: 14px 32px; text-decoration: none; border-radius: 6px; font-weight: bold;">
                                    Beantwoorden
                                </a>
                            </div>
                        </td>
                    </tr>

                    <!-- Footer -->
                    <tr>
                        <td style="padding: 20px 30px; background-color: #f7fafc; border-radius: 0 0 8px 8px; text-align: center;">
                            <p style="margin: 0; color: #718096; font-size: 14px;">
                                Dit bericht is verzonden vanaf <?= APP_NAME ?><br>
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