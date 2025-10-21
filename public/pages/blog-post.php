 
<?php
/**
 * Single Blog Post
 * energievergelijken.trade
 */

require_once __DIR__ . '/../../includes/config.php';

// Get post slug
$slug = $_GET['slug'] ?? '';

if (empty($slug)) {
    header('Location: ' . BASE_URL . '/pages/blog.php');
    exit;
}

// Load posts
$posts_file = CONTENT_PATH . '/blog/posts.json';
$posts_data = json_decode(file_get_contents($posts_file), true);
$posts = $posts_data['posts'] ?? [];

// Find post
$post = null;
foreach ($posts as $p) {
    if ($p['slug'] === $slug) {
        $post = $p;
        break;
    }
}

// Post not found
if (!$post) {
    header('HTTP/1.0 404 Not Found');
    include __DIR__ . '/404.php';
    exit;
}

// Related posts (same category, limit 3)
$related_posts = array_filter($posts, function($p) use ($post) {
    return $p['category'] === $post['category'] && $p['id'] !== $post['id'];
});
$related_posts = array_slice($related_posts, 0, 3);

// Meta tags
$page_title = $post['title'];
$page_description = $post['excerpt'];
$meta_tags = MetaTags::for_blog_post($post);

include INCLUDES_PATH . '/head.php';
include INCLUDES_PATH . '/header.php';
?>

<article class="blog-post">
    <div class="blog-post-header">
        <div class="container">
            <div class="blog-breadcrumb">
                <a href="<?= BASE_URL ?>">Home</a> / 
                <a href="<?= BASE_URL ?>/pages/blog.php">Blog</a> / 
                <span><?= Sanitizer::html($post['category']) ?></span>
            </div>

            <h1><?= Sanitizer::html($post['title']) ?></h1>

            <div class="blog-post-meta">
                <span class="blog-author">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z"/>
                    </svg>
                    <?= Sanitizer::html($post['author']) ?>
                </span>
                <span class="blog-date">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z"/>
                    </svg>
                    <?= date('d F Y', strtotime($post['published_at'])) ?>
                </span>
                <span class="blog-read-time">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z"/>
                    </svg>
                    <?= Sanitizer::html($post['read_time']) ?> leestijd
                </span>
            </div>
        </div>
    </div>

    <?php if (!empty($post['image'])): ?>
    <div class="blog-post-image">
        <img src="<?= Sanitizer::html($post['image']) ?>" 
             alt="<?= Sanitizer::html($post['title']) ?>">
    </div>
    <?php endif; ?>

    <div class="blog-post-content">
        <div class="container">
            <div class="blog-content-wrapper">
                <div class="blog-main-content">
                    <?= $post['content'] ?>

                    <div class="blog-tags-section">
                        <strong>Tags:</strong>
                        <?php foreach ($post['tags'] as $tag): ?>
                        <span class="blog-tag"><?= Sanitizer::html($tag) ?></span>
                        <?php endforeach; ?>
                    </div>

                    <div class="blog-share">
                        <strong>Deel dit artikel:</strong>
                        <div class="share-buttons">
                            <a href="https://www.facebook.com/sharer/sharer.php?u=<?= urlencode(current_url()) ?>" 
                               target="_blank" class="share-btn share-facebook">
                                Facebook
                            </a>
                            <a href="https://twitter.com/intent/tweet?url=<?= urlencode(current_url()) ?>&text=<?= urlencode($post['title']) ?>" 
                               target="_blank" class="share-btn share-twitter">
                                Twitter
                            </a>
                            <a href="https://www.linkedin.com/shareArticle?mini=true&url=<?= urlencode(current_url()) ?>" 
                               target="_blank" class="share-btn share-linkedin">
                                LinkedIn
                            </a>
                        </div>
                    </div>
                </div>

                <aside class="blog-sidebar">
                    <div class="sidebar-widget">
                        <h3>Bespaar direct</h3>
                        <p>Vergelijk nu alle energieleveranciers en bespaar tot €500 per jaar.</p>
                        <a href="<?= BASE_URL ?>" class="btn btn-primary btn-block">
                            Vergelijk Nu
                        </a>
                    </div>

                    <div class="sidebar-widget">
                        <h3>Categorieën</h3>
                        <ul class="category-list">
                            <li><a href="<?= BASE_URL ?>/pages/blog.php?cat=energietips">Energietips</a></li>
                            <li><a href="<?= BASE_URL ?>/pages/blog.php?cat=overstappen">Overstappen</a></li>
                            <li><a href="<?= BASE_URL ?>/pages/blog.php?cat=tarieven">Tarieven</a></li>
                        </ul>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</article>

<?php if (!empty($related_posts)): ?>
<section class="related-posts">
    <div class="container">
        <h2>Gerelateerde Artikelen</h2>
        <div class="blog-grid">
            <?php foreach ($related_posts as $related): ?>
            <article class="blog-card">
                <?php if (!empty($related['image'])): ?>
                <div class="blog-card-image">
                    <img src="<?= Sanitizer::html($related['image']) ?>" 
                         alt="<?= Sanitizer::html($related['title']) ?>"
                         loading="lazy">
                </div>
                <?php endif; ?>
                <div class="blog-card-content">
                    <h3 class="blog-card-title">
                        <a href="<?= BASE_URL ?>/pages/blog-post.php?slug=<?= urlencode($related['slug']) ?>">
                            <?= Sanitizer::html($related['title']) ?>
                        </a>
                    </h3>
                    <p class="blog-card-excerpt">
                        <?= Sanitizer::html($related['excerpt']) ?>
                    </p>
                    <a href="<?= BASE_URL ?>/pages/blog-post.php?slug=<?= urlencode($related['slug']) ?>" 
                       class="blog-read-more">
                        Lees meer →
                    </a>
                </div>
            </article>
            <?php endforeach; ?>
        </div>
    </div>
</section>
<?php endif; ?>

<?php include INCLUDES_PATH . '/footer.php'; ?>