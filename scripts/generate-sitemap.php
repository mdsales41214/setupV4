<?php
/**
 * Sitemap Generator
 * energievergelijken.trade
 * 
 * Generate dynamic sitemap.xml with all pages and blog posts
 */

declare(strict_types=1);

require_once __DIR__ . '/../includes/config.php';

class SitemapGenerator
{
    private array $urls = [];

    /**
     * Add URL to sitemap
     */
    public function add_url(string $loc, string $lastmod, string $changefreq, float $priority, array $images = []): void
    {
        $this->urls[] = [
            'loc' => $loc,
            'lastmod' => $lastmod,
            'changefreq' => $changefreq,
            'priority' => $priority,
            'images' => $images
        ];
    }

    /**
     * Generate XML
     */
    public function generate(): string
    {
        $xml = '<?xml version="1.0" encoding="UTF-8"?>' . "\n";
        $xml .= '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"' . "\n";
        $xml .= '        xmlns:image="http://www.google.com/schemas/sitemap-image/1.1">' . "\n";

        foreach ($this->urls as $url) {
            $xml .= "    <url>\n";
            $xml .= "        <loc>" . htmlspecialchars($url['loc']) . "</loc>\n";
            $xml .= "        <lastmod>{$url['lastmod']}</lastmod>\n";
            $xml .= "        <changefreq>{$url['changefreq']}</changefreq>\n";
            $xml .= "        <priority>{$url['priority']}</priority>\n";

            foreach ($url['images'] as $image) {
                $xml .= "        <image:image>\n";
                $xml .= "            <image:loc>" . htmlspecialchars($image['loc']) . "</image:loc>\n";
                if (isset($image['title'])) {
                    $xml .= "            <image:title>" . htmlspecialchars($image['title']) . "</image:title>\n";
                }
                $xml .= "        </image:image>\n";
            }

            $xml .= "    </url>\n";
        }

        $xml .= "</urlset>";

        return $xml;
    }

    /**
     * Save to file
     */
    public function save(string $filename = 'sitemap.xml'): bool
    {
        $xml = $this->generate();
        $filepath = PUBLIC_PATH . '/' . $filename;
        return file_put_contents($filepath, $xml) !== false;
    }
}

// Generate sitemap
$sitemap = new SitemapGenerator();

// Static pages
$pages = [
    ['/', '1.0', 'daily'],
    ['/energievergelijker', '0.9', 'daily'],
    ['/energietips', '0.8', 'weekly'],
    ['/blog', '0.8', 'daily'],
    ['/hoe-werkt-het', '0.7', 'monthly'],
    ['/over-ons', '0.6', 'monthly'],
    ['/veelgestelde-vragen', '0.7', 'monthly'],
    ['/pages/contact.php', '0.6', 'monthly'],
    ['/pages/privacybeleid.php', '0.3', 'monthly'],
    ['/pages/voorwaarden.php', '0.3', 'monthly'],
];

foreach ($pages as [$path, $priority, $changefreq]) {
    $sitemap->add_url(
        BASE_URL . $path,
        date('Y-m-d'),
        $changefreq,
        (float)$priority
    );
}

// Add blog posts (if posts.json exists)
$blog_file = CONTENT_PATH . '/blog/posts.json';
if (file_exists($blog_file)) {
    $posts = json_decode(file_get_contents($blog_file), true);
    foreach ($posts as $post) {
        $images = [];
        if (!empty($post['image'])) {
            $images[] = [
                'loc' => $post['image'],
                'title' => $post['title']
            ];
        }

        $sitemap->add_url(
            BASE_URL . '/blog/' . $post['slug'],
            date('Y-m-d', strtotime($post['published_at'] ?? 'now')),
            'monthly',
            0.6,
            $images
        );
    }
}

// Save sitemap
if ($sitemap->save()) {
    echo "✓ Sitemap generated successfully: " . PUBLIC_PATH . "/sitemap.xml\n";
} else {
    echo "✗ Failed to generate sitemap\n";
}