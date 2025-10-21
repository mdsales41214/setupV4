 
<?php
/**
 * Schema.org Organization
 * energievergelijken.trade
 * 
 * Organization structured data for enhanced search results
 */

declare(strict_types=1);

class SchemaOrganization
{
    /**
     * Generate Organization schema
     */
    public static function generate(): array
    {
        return [
            '@context' => 'https://schema.org',
            '@type' => 'Organization',
            '@id' => BASE_URL . '#organization',
            'name' => COMPANY_NAME,
            'legalName' => COMPANY_NAME,
            'url' => BASE_URL,
            'logo' => [
                '@type' => 'ImageObject',
                'url' => IMAGES_URL . '/logo.svg',
                'width' => 220,
                'height' => 50
            ],
            'description' => 'De meest betrouwbare energievergelijker van Nederland. Vergelijk gratis alle energieleveranciers en bespaar tot €500 per jaar.',
            'address' => [
                '@type' => 'PostalAddress',
                'streetAddress' => COMPANY_ADDRESS,
                'addressCountry' => 'NL'
            ],
            'contactPoint' => [
                '@type' => 'ContactPoint',
                'telephone' => COMPANY_PHONE,
                'email' => COMPANY_EMAIL,
                'contactType' => 'Customer Service',
                'availableLanguage' => ['Dutch'],
                'areaServed' => 'NL'
            ],
            'sameAs' => [
                SOCIAL_FACEBOOK,
                SOCIAL_TWITTER,
                SOCIAL_LINKEDIN
            ],
            'foundingDate' => '2025',
            'slogan' => 'Bespaar tot €500 per jaar op energie',
            'aggregateRating' => [
                '@type' => 'AggregateRating',
                'ratingValue' => '4.8',
                'reviewCount' => '1247',
                'bestRating' => '5',
                'worstRating' => '1'
            ]
        ];
    }

    /**
     * Render as JSON-LD script tag
     */
    public static function render(): string
    {
        $schema = self::generate();
        return sprintf(
            '<script type="application/ld+json">%s</script>',
            json_encode($schema, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE)
        );
    }
}