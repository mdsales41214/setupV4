 
<?php
/**
 * Social Media Meta Tags
 * energievergelijken.trade
 * 
 * Enhanced Open Graph and Twitter Card meta tags
 */

declare(strict_types=1);

class SocialMeta
{
    /**
     * Generate complete social meta tags
     */
    public static function generate(array $data): string
    {
        $defaults = [
            'title' => 'Vergelijk Energieprijzen & Bespaar tot €500 per Jaar',
            'description' => 'Vergelijk gratis alle energieleveranciers in Nederland.',
            'image' => IMAGES_URL . '/og-energievergelijken.jpg',
            'url' => current_url(),
            'type' => 'website',
            'image_width' => 1200,
            'image_height' => 630,
            'twitter_card' => 'summary_large_image',
            'twitter_site' => '@energievergelijk',
            'article_author' => null,
            'article_published_time' => null,
            'article_modified_time' => null,
            'article_section' => null,
            'article_tag' => []
        ];

        $meta = array_merge($defaults, $data);
        $html = [];

        // Open Graph - Basic
        $html[] = sprintf('<meta property="og:title" content="%s">', Sanitizer::attribute($meta['title']));
        $html[] = sprintf('<meta property="og:description" content="%s">', Sanitizer::attribute($meta['description']));
        $html[] = sprintf('<meta property="og:type" content="%s">', Sanitizer::attribute($meta['type']));
        $html[] = sprintf('<meta property="og:url" content="%s">', Sanitizer::attribute($meta['url']));
        $html[] = '<meta property="og:locale" content="nl_NL">';
        $html[] = sprintf('<meta property="og:site_name" content="%s">', APP_NAME);

        // Open Graph - Image
        $html[] = sprintf('<meta property="og:image" content="%s">', Sanitizer::attribute($meta['image']));
        $html[] = sprintf('<meta property="og:image:width" content="%d">', $meta['image_width']);
        $html[] = sprintf('<meta property="og:image:height" content="%d">', $meta['image_height']);
        $html[] = '<meta property="og:image:type" content="image/jpeg">';
        $html[] = sprintf('<meta property="og:image:alt" content="%s">', Sanitizer::attribute($meta['title']));

        // Article-specific (if type is article)
        if ($meta['type'] === 'article') {
            if ($meta['article_author']) {
                $html[] = sprintf('<meta property="article:author" content="%s">', Sanitizer::attribute($meta['article_author']));
            }
            if ($meta['article_published_time']) {
                $html[] = sprintf('<meta property="article:published_time" content="%s">', Sanitizer::attribute($meta['article_published_time']));
            }
            if ($meta['article_modified_time']) {
                $html[] = sprintf('<meta property="article:modified_time" content="%s">', Sanitizer::attribute($meta['article_modified_time']));
            }
            if ($meta['article_section']) {
                $html[] = sprintf('<meta property="article:section" content="%s">', Sanitizer::attribute($meta['article_section']));
            }
            if (!empty($meta['article_tag'])) {
                foreach ($meta['article_tag'] as $tag) {
                    $html[] = sprintf('<meta property="article:tag" content="%s">', Sanitizer::attribute($tag));
                }
            }
        }

        // Twitter Card
        $html[] = sprintf('<meta name="twitter:card" content="%s">', Sanitizer::attribute($meta['twitter_card']));
        $html[] = sprintf('<meta name="twitter:site" content="%s">', Sanitizer::attribute($meta['twitter_site']));
        $html[] = sprintf('<meta name="twitter:title" content="%s">', Sanitizer::attribute($meta['title']));
        $html[] = sprintf('<meta name="twitter:description" content="%s">', Sanitizer::attribute($meta['description']));
        $html[] = sprintf('<meta name="twitter:image" content="%s">', Sanitizer::attribute($meta['image']));
        $html[] = sprintf('<meta name="twitter:image:alt" content="%s">', Sanitizer::attribute($meta['title']));

        return implode("\n    ", $html);
    }

    /**
     * Generate for blog article
     */
    public static function for_article(array $article): string
    {
        return self::generate([
            'title' => $article['title'],
            'description' => $article['excerpt'] ?? '',
            'image' => $article['image'] ?? IMAGES_URL . '/og-energievergelijken.jpg',
            'url' => BASE_URL . '/blog/' . $article['slug'],
            'type' => 'article',
            'article_author' => $article['author'] ?? COMPANY_NAME,
            'article_published_time' => date('c', strtotime($article['published_at'] ?? 'now')),
            'article_modified_time' => date('c', strtotime($article['updated_at'] ?? 'now')),
            'article_section' => $article['category'] ?? 'Energietips',
            'article_tag' => $article['tags'] ?? []
        ]);
    }
}