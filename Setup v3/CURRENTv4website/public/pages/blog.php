 
<?php
/**
 * Blog Index
 * energievergelijken.trade
 */

require_once __DIR__ . '/../../includes/config.php';

// Load blog posts
$posts_file = CONTENT_PATH . '/blog/posts.json';
$posts_data = json_decode(file_get_contents($posts_file), true);
$posts = $posts_data['posts'] ?? [];

// Pagination
$posts_per_page = 9;
$current_page = isset($_GET['page']) ? max(1, (int)$_GET['page']) : 1;
$total_posts = count($posts);
$total_pages = ceil($total_posts / $posts_per_page);
$offset = ($current_page - 1) * $posts_per_page;
$current_posts = array_slice($posts, $offset, $posts_per_page);

// Meta
$page_title = 'Blog - Energietips & Nieuws';
$page_description = 'Lees onze energietips, overstapgidsen en het laatste nieuws over energie besparen. Praktische tips van experts.';

include INCLUDES_PATH . '/head.php';
include INCLUDES_PATH . '/header.php';
?>

<div class="page-header">
    <div class="container">
        <h1>Energietips & Advies</h1>
        <p>Praktische tips om te besparen op uw energierekening</p>
    </div>
</div>

<section class="blog-section">
    <div class="container">
        <div class="blog-grid">
            <?php foreach ($current_posts as $post): ?>
            <article class="blog-card">
                <?php if (!empty($post['image'])): ?>
                <div class="blog-card-image">
                    <img src="<?= Sanitizer::html($post['image']) ?>" 
                         alt="<?= Sanitizer::html($post['title']) ?>"
                         loading="lazy">
                    <span class="blog-category"><?= Sanitizer::html($post['category']) ?></span>
                </div>
                <?php endif; ?>
                
                <div class="blog-card-content">
                    <div class="blog-meta">
                        <span class="blog-date">
                            <svg width="16" height="16" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z"/>
                            </svg>
                            <?= date('d M Y', strtotime($post['published_at'])) ?>
                        </span>
                        <span class="blog-read-time">
                            <svg width="16" height="16" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z"/>
                            </svg>
                            <?= Sanitizer::html($post['read_time']) ?>
                        </span>
                    </div>

                    <h2 class="blog-card-title">
                        <a href="<?= BASE_URL ?>/pages/blog-post.php?slug=<?= urlencode($post['slug']) ?>">
                            <?= Sanitizer::html($post['title']) ?>
                        </a>
                    </h2>

                    <p class="blog-card-excerpt">
                        <?= Sanitizer::html($post['excerpt']) ?>
                    </p>

                    <div class="blog-tags">
                        <?php foreach (array_slice($post['tags'], 0, 3) as $tag): ?>
                        <span class="blog-tag"><?= Sanitizer::html($tag) ?></span>
                        <?php endforeach; ?>
                    </div>

                    <a href="<?= BASE_URL ?>/pages/blog-post.php?slug=<?= urlencode($post['slug']) ?>" 
                       class="blog-read-more">
                        Lees meer →
                    </a>
                </div>
            </article>
            <?php endforeach; ?>
        </div>

        <?php if ($total_pages > 1): ?>
        <nav class="pagination" aria-label="Blog paginering">
            <?php if ($current_page > 1): ?>
            <a href="?page=<?= $current_page - 1 ?>" class="pagination-prev">
                ← Vorige
            </a>
            <?php endif; ?>

            <div class="pagination-numbers">
                <?php for ($i = 1; $i <= $total_pages; $i++): ?>
                <a href="?page=<?= $i ?>" 
                   class="pagination-number <?= $i === $current_page ? 'active' : '' ?>">
                    <?= $i ?>
                </a>
                <?php endfor; ?>
            </div>

            <?php if ($current_page < $total_pages): ?>
            <a href="?page=<?= $current_page + 1 ?>" class="pagination-next">
                Volgende →
            </a>
            <?php endif; ?>
        </nav>
        <?php endif; ?>
    </div>
</section>

<!-- Call to Action -->
<section class="cta-section">
    <div class="container">
        <h2>Klaar om te besparen?</h2>
        <p>Vergelijk nu alle energieleveranciers en bespaar tot €500 per jaar</p>
        <a href="<?= BASE_URL ?>" class="btn btn-primary btn-lg">
            Energie Vergelijken
        </a>
    </div>
</section>

<?php include INCLUDES_PATH . '/footer.php'; ?>