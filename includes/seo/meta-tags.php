 
<?php
/**
 * Dynamic Meta Tags Generator
 * energievergelijken.trade
 * 
 * Generate SEO-optimized meta tags for any page
 */

declare(strict_types=1);

class MetaTags
{
    private array $data = [];

    public function __construct(array $data = [])
    {
        $this->data = array_merge($this->get_defaults(), $data);
    }

    /**
     * Get default meta values
     */
    private function get_defaults(): array
    {
        return [
            'title' => 'Vergelijk Energieprijzen & Bespaar tot €500 per Jaar',
            'description' => 'Vergelijk gratis alle energieleveranciers in Nederland. Vind de goedkoopste stroom en gas en bespaar tot €500 per jaar. ✓ Onafhankelijk ✓ Actueel ✓ Betrouwbaar',
            'keywords' => 'energie vergelijken, energievergelijker, goedkope energie, stroom vergelijken, gas vergelijken',
            'canonical' => current_url(),
            'og_image' => IMAGES_URL . '/og-energievergelijken.jpg',
            'og_type' => 'website',
            'robots' => 'index, follow',
            'author' => COMPANY_NAME
        ];
    }

    /**
     * Set title
     */
    public function set_title(string $title, bool $append_suffix = true): self
    {
        $this->data['title'] = $append_suffix ? $title . META_TITLE_SUFFIX : $title;
        return $this;
    }

    /**
     * Set description
     */
    public function set_description(string $description): self
    {
        // Ensure proper length
        if (mb_strlen($description) > META_DESCRIPTION_LENGTH) {
            $description = mb_substr($description, 0, META_DESCRIPTION_LENGTH - 3) . '...';
        }
        $this->data['description'] = $description;
        return $this;
    }

    /**
     * Set keywords
     */
    public function set_keywords(array $keywords): self
    {
        $this->data['keywords'] = implode(', ', $keywords);
        return $this;
    }

    /**
     * Set canonical URL
     */
    public function set_canonical(string $url): self
    {
        $this->data['canonical'] = $url;
        return $this;
    }

    /**
     * Set OG image
     */
    public function set_og_image(string $image_url): self
    {
        $this->data['og_image'] = $image_url;
        return $this;
    }

    /**
     * Set page type
     */
    public function set_type(string $type): self
    {
        $this->data['og_type'] = $type;
        return $this;
    }

    /**
     * Set robots directive
     */
    public function set_robots(string $robots): self
    {
        $this->data['robots'] = $robots;
        return $this;
    }

    /**
     * Prevent indexing
     */
    public function no_index(): self
    {
        $this->data['robots'] = 'noindex, nofollow';
        return $this;
    }

    /**
     * Generate all meta tags
     */
    public function render(): string
    {
        $html = [];

        // Title
        $html[] = sprintf('<title>%s</title>', Sanitizer::html($this->data['title']));
        $html[] = sprintf('<meta name="title" content="%s">', Sanitizer::attribute($this->data['title']));

        // Description
        $html[] = sprintf('<meta name="description" content="%s">', Sanitizer::attribute($this->data['description']));

        // Keywords
        if (!empty($this->data['keywords'])) {
            $html[] = sprintf('<meta name="keywords" content="%s">', Sanitizer::attribute($this->data['keywords']));
        }

        // Author
        $html[] = sprintf('<meta name="author" content="%s">', Sanitizer::attribute($this->data['author']));

        // Robots
        $html[] = sprintf('<meta name="robots" content="%s">', Sanitizer::attribute($this->data['robots']));

        // Canonical
        $html[] = sprintf('<link rel="canonical" href="%s">', Sanitizer::attribute($this->data['canonical']));

        // Open Graph
        $html[] = sprintf('<meta property="og:type" content="%s">', Sanitizer::attribute($this->data['og_type']));
        $html[] = sprintf('<meta property="og:url" content="%s">', Sanitizer::attribute($this->data['canonical']));
        $html[] = sprintf('<meta property="og:title" content="%s">', Sanitizer::attribute($this->data['title']));
        $html[] = sprintf('<meta property="og:description" content="%s">', Sanitizer::attribute($this->data['description']));
        $html[] = sprintf('<meta property="og:image" content="%s">', Sanitizer::attribute($this->data['og_image']));
        $html[] = '<meta property="og:locale" content="nl_NL">';
        $html[] = sprintf('<meta property="og:site_name" content="%s">', APP_NAME);

        // Twitter Card
        $html[] = '<meta name="twitter:card" content="summary_large_image">';
        $html[] = sprintf('<meta name="twitter:url" content="%s">', Sanitizer::attribute($this->data['canonical']));
        $html[] = sprintf('<meta name="twitter:title" content="%s">', Sanitizer::attribute($this->data['title']));
        $html[] = sprintf('<meta name="twitter:description" content="%s">', Sanitizer::attribute($this->data['description']));
        $html[] = sprintf('<meta name="twitter:image" content="%s">', Sanitizer::attribute($this->data['og_image']));

        return implode("\n    ", $html);
    }

    /**
     * Create meta tags for energy comparison results page
     */
    public static function for_comparison_results(string $postcode): self
    {
        return new self([
            'title' => "Energieprijzen Vergelijken in {$postcode}",
            'description' => "Vergelijk alle energieleveranciers in {$postcode}. Vind de goedkoopste stroom en gas tarieven en bespaar direct op uw energierekening.",
            'keywords' => "energie vergelijken {$postcode}, stroom {$postcode}, gas {$postcode}, goedkope energie",
            'og_type' => 'website'
        ]);
    }

    /**
     * Create meta tags for blog post
     */
    public static function for_blog_post(array $post): self
    {
        return new self([
            'title' => $post['title'],
            'description' => $post['excerpt'] ?? mb_substr(strip_tags($post['content']), 0, 150),
            'keywords' => implode(', ', $post['tags'] ?? []),
            'og_image' => $post['image'] ?? IMAGES_URL . '/og-energievergelijken.jpg',
            'og_type' => 'article',
            'canonical' => BASE_URL . '/blog/' . $post['slug']
        ]);
    }
}