 ```batch
@echo off
chcp 65001 >nul
color 0A
echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║                                                                ║
echo ║    Professional Website Structure Generator v2.0               ║
echo ║    Complete 140+ File Deployment System                        ║
echo ║                                                                ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.
echo [INFO] This script will create a complete professional website structure
echo [INFO] Location: %%CD%%\website\
echo.
pause

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 1: Creating Root Directory Structure
echo ════════════════════════════════════════════════════════════════
echo.

REM Create main website directory
mkdir website 2>nul
cd website

REM Create all main directories
echo [1/27] Creating main folders...
mkdir public 2>nul
mkdir includes 2>nul
mkdir content 2>nul
mkdir scripts 2>nul
mkdir src 2>nul
mkdir config 2>nul
mkdir server 2>nul
mkdir logs 2>nul
mkdir backups 2>nul
mkdir tests 2>nul
mkdir docs 2>nul
mkdir markdown 2>nul
echo ^✓ Main folders created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 2: Creating Structure Documentation
echo ════════════════════════════════════════════════════════════════
echo.

echo [2/27] Generating structure-map.md for AI...
cd markdown

(
echo # Professional Website Structure Map
echo.
echo ## Complete File Structure Overview
echo.
echo ```
echo website/
echo │
echo ├── 📂 public/              # Web root
echo │  ├── index.php
echo │  ├── robots.txt
echo │  ├── sitemap.xml
echo │  ├── security.txt
echo │  ├── humans.txt
echo │  ├── browserconfig.xml
echo │  ├── manifest.json
echo │  ├── service-worker.js
echo │  ├── offline.html
echo │  ├── 404.html
echo │  ├── ads.txt              # Google AdSense
echo │  ├── app-ads.txt          # Mobile ads
echo │  ├── feed.xml             # RSS feed
echo │  │
echo │  ├── 📂 .well-known/
echo │  │  └── security.txt
echo │  │
echo │  ├── 📂 assets/
echo │  │  ├── 📂 css/
echo │  │  │  ├── critical.css
echo │  │  │  └── main.css
echo │  │  │
echo │  │  ├── 📂 js/
echo │  │  │  ├── app.js
echo │  │  │  ├── lazy-loading.js
echo │  │  │  ├── cookie-consent.js
echo │  │  │  ├── analytics.js
echo │  │  │  ├── web-vitals.js
echo │  │  │  ├── performance.js
echo │  │  │  ├── gtm.js           # Google Tag Manager
echo │  │  │  ├── conversion-tracking.js # Conversion tracking
echo │  │  │  └── search.js          # Internal search
echo │  │  │
echo │  │  ├── 📂 images/
echo │  │  │  ├── logo.svg
echo │  │  │  ├── og-image.jpg
echo │  │  │  ├── 📂 blog/
echo │  │  │  └── 📂 favicons/
echo │  │  │    ├── favicon.ico
echo │  │  │    ├── favicon-16x16.png
echo │  │  │    ├── favicon-32x32.png
echo │  │  │    ├── apple-touch-icon.png
echo │  │  │    ├── android-chrome-192x192.png
echo │  │  │    ├── android-chrome-512x512.png
echo │  │  │    ├── mstile-144x144.png
echo │  │  │    └── safari-pinned-tab.svg
echo │  │  │
echo │  │  ├── 📂 fonts/
echo │  │  │  └── inter-var.woff2
echo │  │  │
echo │  │  └── 📂 uploads/
echo │  │    ├── .gitkeep
echo │  │    └── 📂 optimized/      # GD optimized images
echo │  │
echo │  └── 📂 pages/
echo │    ├── contact.php
echo │    ├── privacybeleid.php
echo │    ├── voorwaarden.php
echo │    ├── cookiebeleid.php
echo │    ├── toegankelijkheid.php    # Accessibility
echo │    ├── disclaimer.php          # Legal
echo │    ├── blog.php
echo │    ├── blog-post.php
echo │    └── blog-category.php
echo │
echo ├── 📂 includes/
echo │  ├── head.php
echo │  ├── header.php
echo │  ├── footer.php
echo │  ├── config.php
echo │  ├── functions.php
echo │  │
echo │  ├── 📂 blog/
echo │  │  ├── post-card.php
echo │  │  ├── pagination.php
echo │  │  └── related-posts.php
echo │  │
echo │  ├── 📂 forms/
echo │  │  ├── contact-handler.php
echo │  │  ├── validator.php
echo │  │  ├── spam-filter.php
echo │  │  └── honeypot.php
echo │  │
echo │  ├── 📂 email/
echo │  │  └── 📂 templates/
echo │  │    ├── contact-notification.php
echo │  │    └── contact-confirmation.php
echo │  │
echo │  ├── 📂 security/
echo │  │  ├── headers.php
echo │  │  ├── sanitizer.php
echo │  │  ├── rate-limiter.php
echo │  │  ├── csrf-token.php
echo │  │  ├── file-upload.php
echo │  │  └── input-validation.php
echo │  │
echo │  ├── 📂 performance/
echo │  │  ├── dns-prefetch.php      # Resource hints
echo │  │  ├── preconnect.php
echo │  │  ├── preload.php
echo │  │  ├── cache-control.php
echo │  │  └── minification.php
echo │  │
echo │  ├── 📂 marketing/
echo │  │  ├── google-tag-manager.php  # GTM
echo │  │  ├── facebook-pixel.php
echo │  │  └── linkedin-insight.php
echo │  │
echo │  ├── 📂 search/
echo │  │  ├── search-engine.php       # All pages + blog
echo │  │  ├── search-index.json       # Generated index
echo │  │  └── search-suggestions.php
echo │  │
echo │  └── 📂 seo/
echo │    ├── meta-tags.php
echo │    ├── structured-data.php
echo │    ├── schema-organization.php   # Schema.org
echo │    ├── schema-localbusiness.php  # Schema.org
echo │    ├── schema-faq.php            # Schema.org
echo │    ├── schema-breadcrumb.php     # Schema.org
echo │    ├── schema-article.php        # Schema.org
echo │    ├── schema-product.php        # Schema.org
echo │    ├── canonical-urls.php
echo │    ├── social-meta.php           # OG + Twitter
echo │    ├── redirect-manager.php      # 301 redirects
echo │    ├── robots-meta.php
echo │    ├── json-ld-generator.php     # Dynamic schema
echo │    └── rss-generator.php         # RSS builder
echo │
echo ├── 📂 content/
echo │  └── 📂 blog/
echo │    ├── posts.json
echo │    └── 📂 posts/
echo │      └── .gitkeep
echo │
echo ├── 📂 scripts/
echo │  ├── backup.sh             # Automated backup
echo │  ├── restore.sh
echo │  ├── db-backup.php
echo │  ├── generate-search-index.php
echo │  └── generate-sitemap.php
echo │
echo ├── 📂 src/
echo │  ├── 📂 scss/
echo │  │  ├── _variables.scss
echo │  │  ├── _mixins.scss
echo │  │  ├── _critical.scss
echo │  │  ├── _base.scss
echo │  │  ├── _components.scss
echo │  │  └── main.scss
echo │  │
echo │  └── 📂 js/
echo │    ├── 📂 modules/
echo │    │  ├── cookieConsent.js
echo │    │  ├── lazyLoad.js
echo │    │  ├── smoothScroll.js
echo │    │  └── formValidation.js
echo │    │
echo │    └── 📂 utils/
echo │      ├── helpers.js
echo │      └── api.js
echo │
echo ├── 📂 config/
echo │  ├── .env
echo │  ├── .env.example
echo │  ├── database.php
echo │  ├── constants.php
echo │  ├── csp-policy.php          # CSP
echo │  ├── image-processing.php      # GD Library config
echo │  └── redirects.json          # SEO redirects
echo │
echo ├── 📂 server/
echo │  ├── .htaccess
echo │  ├── nginx.conf
echo │  ├── web.config
echo │  └── php.ini
echo │
echo ├── 📂 logs/
echo │  ├── .gitkeep
echo │  ├── error.log
echo │  ├── access.log
echo │  └── security.log
echo │
echo ├── 📂 backups/
echo │  ├── .gitkeep
echo │  ├── 📂 daily/
echo │  ├── 📂 weekly/
echo │  └── 📂 monthly/
echo │
echo ├── 📂 tests/
echo │  ├── SecurityTest.php
echo │  ├── SEOTest.php
echo │  ├── PerformanceTest.php
echo │  └── FormTest.php
echo │
echo ├── 📂 docs/
echo │  ├── deployment.md
echo │  ├── security-policy.md
echo │  └── backup-restore.md
echo │
echo ├── 📂 markdown/
echo │  ├── structure-map.md          # AI-friendly format
echo │  └── structure-map.txt         # Human-readable format
echo │
echo └── 📄 Root Files
echo    ├── .gitignore
echo    ├── .editorconfig
echo    ├── .prettierrc
echo    ├── .eslintrc.json
echo    ├── package.json
echo    ├── package-lock.json
echo    ├── composer.json
echo    ├── composer.lock
echo    ├── gulpfile.js
echo    ├── lighthouse.config.js
echo    ├── README.md
echo    ├── CHANGELOG.md
echo    └── LICENSE
echo ```
echo.
echo ## File Count
echo - **Total Files:** 140+
echo - **Total Directories:** 45+
echo.
echo ## Key Features
echo - Complete SEO optimization
echo - Schema.org structured data
echo - Performance optimization
echo - Security hardening
echo - Marketing integrations
echo - Internal search
echo - Blog system
echo - Backup system
echo - Testing framework
) > structure-map.md

echo ^✓ structure-map.md created

echo [3/27] Generating structure-map.txt for humans...

(
echo ═══════════════════════════════════════════════════════════════════
echo PROFESSIONAL WEBSITE STRUCTURE MAP
echo Complete File and Folder Overview
echo ═══════════════════════════════════════════════════════════════════
echo.
echo ROOT: website/
echo.
echo ^┌─────────────────────────────────────────────────────────────────^┐
echo ^│ PUBLIC FOLDER ^(Web Root^)                                       ^│
echo ^└─────────────────────────────────────────────────────────────────^┘
echo.
echo public/
echo   ^├─ index.php          Main entry point
echo   ^├─ robots.txt         Search engine rules
echo   ^├─ sitemap.xml        SEO sitemap
echo   ^├─ security.txt       Security contact
echo   ^├─ humans.txt         Credits
echo   ^├─ browserconfig.xml    Microsoft tiles
echo   ^├─ manifest.json      PWA config
echo   ^├─ service-worker.js    Offline support
echo   ^├─ offline.html       Offline page
echo   ^├─ 404.html           Error page
echo   ^├─ ads.txt            Google AdSense
echo   ^├─ app-ads.txt        Mobile ads
echo   ^└─ feed.xml           RSS feed
echo.
echo   .well-known/
echo    ^└─ security.txt       RFC compliant location
echo.
echo   assets/
echo    ^├─ css/
echo    ^│  ^├─ critical.css     Above-the-fold styles
echo    ^│  ^└─ main.css         Main stylesheet
echo    ^│
echo    ^├─ js/
echo    ^│  ^├─ app.js           Main application
echo    ^│  ^├─ lazy-loading.js    Image lazy loading
echo    ^│  ^├─ cookie-consent.js  GDPR cookies
echo    ^│  ^├─ analytics.js     Analytics wrapper
echo    ^│  ^├─ web-vitals.js    Performance metrics
echo    ^│  ^├─ performance.js   Performance monitor
echo    ^│  ^├─ gtm.js           Google Tag Manager
echo    ^│  ^├─ conversion-tracking.js Conversion goals
echo    ^│  ^└─ search.js        Internal search UI
echo    ^│
echo    ^├─ images/
echo    ^│  ^├─ logo.svg         Site logo
echo    ^│  ^├─ og-image.jpg     Social sharing
echo    ^│  ^├─ blog/            Blog images
echo    ^│  ^└─ favicons/
echo    ^│    ^├─ favicon.ico    Standard favicon
echo    ^│    ^├─ favicon-16x16.png  Small icon
echo    ^│    ^├─ favicon-32x32.png  Medium icon
echo    ^│    ^├─ apple-touch-icon.png iOS icon
echo    ^│    ^├─ android-chrome-192x192.png Android small
echo    ^│    ^├─ android-chrome-512x512.png Android large
echo    ^│    ^├─ mstile-144x144.png Microsoft tile
echo    ^│    ^└─ safari-pinned-tab.svg Safari icon
echo    ^│
echo    ^├─ fonts/
echo    ^│  ^└─ inter-var.woff2    Web font
echo    ^│
echo    ^└─ uploads/
echo      ^├─ .gitkeep         Keep folder in git
echo      ^└─ optimized/       GD processed images
echo.
echo   pages/
echo    ^├─ contact.php          Contact form
echo    ^├─ privacybeleid.php    Privacy policy
echo    ^├─ voorwaarden.php      Terms ^& conditions
echo    ^├─ cookiebeleid.php     Cookie policy
echo    ^├─ toegankelijkheid.php   Accessibility statement
echo    ^├─ disclaimer.php       Legal disclaimer
echo    ^├─ blog.php           Blog index
echo    ^├─ blog-post.php        Single post
echo    ^└─ blog-category.php    Category archive
echo.
echo.
echo ^┌─────────────────────────────────────────────────────────────────^┐
echo ^│ INCLUDES FOLDER ^(PHP Components^)                             ^│
echo ^└─────────────────────────────────────────────────────────────────^┘
echo.
echo includes/
echo   ^├─ head.php           HTML head section
echo   ^├─ header.php         Site header
echo   ^├─ footer.php         Site footer
echo   ^├─ config.php         Configuration
echo   ^└─ functions.php        Helper functions
echo.
echo   blog/
echo    ^├─ post-card.php        Post preview component
echo    ^├─ pagination.php       Blog pagination
echo    ^└─ related-posts.php    Related content
echo.
echo   forms/
echo    ^├─ contact-handler.php    Form processing
echo    ^├─ validator.php        Input validation
echo    ^├─ spam-filter.php      Spam protection
echo    ^└─ honeypot.php         Bot detection
echo.
echo   email/
echo    ^└─ templates/
echo      ^├─ contact-notification.php Admin email
echo      ^└─ contact-confirmation.php User receipt
echo.
echo   security/
echo    ^├─ headers.php          Security headers
echo    ^├─ sanitizer.php        Input sanitization
echo    ^├─ rate-limiter.php     DDoS protection
echo    ^├─ csrf-token.php       CSRF protection
echo    ^├─ file-upload.php      Safe uploads
echo    ^└─ input-validation.php   Validation rules
echo.
echo   performance/
echo    ^├─ dns-prefetch.php     DNS optimization
echo    ^├─ preconnect.php       Early connections
echo    ^├─ preload.php          Resource preload
echo    ^├─ cache-control.php    Cache headers
echo    ^└─ minification.php     Asset minification
echo.
echo   marketing/
echo    ^├─ google-tag-manager.php   GTM integration
echo    ^├─ facebook-pixel.php   Facebook tracking
echo    ^└─ linkedin-insight.php   LinkedIn tracking
echo.
echo   search/
echo    ^├─ search-engine.php    Search logic
echo    ^├─ search-index.json    Search index
echo    ^└─ search-suggestions.php Autocomplete
echo.
echo   seo/
echo    ^├─ meta-tags.php        Dynamic meta tags
echo    ^├─ structured-data.php    Schema.org base
echo    ^├─ schema-organization.php  Organization schema
echo    ^├─ schema-localbusiness.php Local business schema
echo    ^├─ schema-faq.php       FAQ schema
echo    ^├─ schema-breadcrumb.php  Breadcrumb schema
echo    ^├─ schema-article.php     Article schema
echo    ^├─ schema-product.php     Product schema
echo    ^├─ canonical-urls.php   Canonical tags
echo    ^├─ social-meta.php      Open Graph + Twitter
echo    ^├─ redirect-manager.php   301/302 redirects
echo    ^├─ robots-meta.php      Meta robots tags
echo    ^├─ json-ld-generator.php  Schema generator
echo    ^└─ rss-generator.php      RSS builder
echo.
echo.
echo ^┌─────────────────────────────────────────────────────────────────^┐
echo ^│ CONTENT FOLDER ^(Blog Data^)                                   ^│
echo ^└─────────────────────────────────────────────────────────────────^┘
echo.
echo content/
echo   ^└─ blog/
echo     ^├─ posts.json         Blog post metadata
echo     ^└─ posts/             Individual posts
echo       ^└─ .gitkeep         Keep folder
echo.
echo.
echo ^┌─────────────────────────────────────────────────────────────────^┐
echo ^│ SCRIPTS FOLDER ^(Automation^)                                  ^│
echo ^└─────────────────────────────────────────────────────────────────^┘
echo.
echo scripts/
echo   ^├─ backup.sh            Automated backup
echo   ^├─ restore.sh           Backup restore
echo   ^├─ db-backup.php        Database backup
echo   ^├─ generate-search-index.php  Build search index
echo   ^└─ generate-sitemap.php   Build sitemap
echo.
echo.
echo ^┌─────────────────────────────────────────────────────────────────^┐
echo ^│ SOURCE FILES ^(Build System^)                                  ^│
echo ^└─────────────────────────────────────────────────────────────────^┘
echo.
echo src/
echo   ^├─ scss/
echo   ^│  ^├─ _variables.scss    SCSS variables
echo   ^│  ^├─ _mixins.scss       SCSS mixins
echo   ^│  ^├─ _critical.scss     Critical CSS
echo   ^│  ^├─ _base.scss         Base styles
echo   ^│  ^├─ _components.scss   Components
echo   ^│  ^└─ main.scss          Main SCSS file
echo   ^│
echo   ^└─ js/
echo     ^├─ modules/
echo     ^│  ^├─ cookieConsent.js   Cookie module
echo     ^│  ^├─ lazyLoad.js      Lazy loading
echo     ^│  ^├─ smoothScroll.js    Smooth scroll
echo     ^│  ^└─ formValidation.js  Form validation
echo     ^│
echo     ^└─ utils/
echo       ^├─ helpers.js         Helper functions
echo       ^└─ api.js             API wrapper
echo.
echo.
echo ^┌─────────────────────────────────────────────────────────────────^┐
echo ^│ CONFIGURATION                                                  ^│
echo ^└─────────────────────────────────────────────────────────────────^┘
echo.
echo config/
echo   ^├─ .env               Environment secrets
echo   ^├─ .env.example       Environment template
echo   ^├─ database.php       Database config
echo   ^├─ constants.php      App constants
echo   ^├─ csp-policy.php     Content Security Policy
echo   ^├─ image-processing.php   GD Library config
echo   ^└─ redirects.json     URL redirects
echo.
echo.
echo ^┌─────────────────────────────────────────────────────────────────^┐
echo ^│ SERVER CONFIGURATION                                           ^│
echo ^└─────────────────────────────────────────────────────────────────^┘
echo.
echo server/
echo   ^├─ .htaccess          Apache config
echo   ^├─ nginx.conf         Nginx config
echo   ^├─ web.config         IIS config
echo   ^└─ php.ini            PHP settings
echo.
echo.
echo ^┌─────────────────────────────────────────────────────────────────^┐
echo ^│ LOGS                                                           ^│
echo ^└─────────────────────────────────────────────────────────────────^┘
echo.
echo logs/
echo   ^├─ .gitkeep           Keep folder
echo   ^├─ error.log          PHP errors
echo   ^├─ access.log         Access tracking
echo   ^└─ security.log       Security events
echo.
echo.
echo ^┌─────────────────────────────────────────────────────────────────^┐
echo ^│ BACKUPS                                                        ^│
echo ^└─────────────────────────────────────────────────────────────────^┘
echo.
echo backups/
echo   ^├─ .gitkeep           Keep folder
echo   ^├─ daily/             Daily backups
echo   ^├─ weekly/            Weekly backups
echo   ^└─ monthly/           Monthly backups
echo.
echo.
echo ^┌─────────────────────────────────────────────────────────────────^┐
echo ^│ TESTS                                                          ^│
echo ^└─────────────────────────────────────────────────────────────────^┘
echo.
echo tests/
echo   ^├─ SecurityTest.php     Security testing
echo   ^├─ SEOTest.php          SEO validation
echo   ^├─ PerformanceTest.php    Performance tests
echo   ^└─ FormTest.php         Form testing
echo.
echo.
echo ^┌─────────────────────────────────────────────────────────────────^┐
echo ^│ DOCUMENTATION                                                  ^│
echo ^└─────────────────────────────────────────────────────────────────^┘
echo.
echo docs/
echo   ^├─ deployment.md        Deploy instructions
echo   ^├─ security-policy.md     Security guidelines
echo   ^└─ backup-restore.md      Backup procedures
echo.
echo markdown/
echo   ^├─ structure-map.md     AI-friendly map
echo   ^└─ structure-map.txt    Human-readable map
echo.
echo.
echo ═══════════════════════════════════════════════════════════════════
echo SUMMARY
echo ═══════════════════════════════════════════════════════════════════
echo.
echo Total Files:      140+
echo Total Directories: 45+
echo.
echo Features:
echo ^• Complete SEO optimization
echo ^• Schema.org structured data
echo ^• Performance optimization
echo ^• Security hardening
echo ^• Marketing integrations ^(GTM, Facebook, LinkedIn^)
echo ^• Internal search engine
echo ^• Blog system with pagination
echo ^• Automated backup system
echo ^• Testing framework
echo ^• PWA support
echo ^• Offline functionality
echo ^• GDPR compliance
echo.
echo ═══════════════════════════════════════════════════════════════════
) > structure-map.txt

cd ..
echo ^✓ structure-map.txt created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 3: Creating Public Folder Structure
echo ════════════════════════════════════════════════════════════════
echo.

echo [4/27] Building public directory...
cd public

REM Create public subdirectories
mkdir .well-known 2>nul
mkdir assets 2>nul
mkdir pages 2>nul

REM Create assets structure
cd assets
mkdir css 2>nul
mkdir js 2>nul
mkdir images 2>nul
mkdir fonts 2>nul
mkdir uploads 2>nul

cd images
mkdir blog 2>nul
mkdir favicons 2>nul
cd ..

cd uploads
mkdir optimized 2>nul
cd ..

cd ..
cd ..
echo ^✓ Public structure created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 4: Creating Includes Folder Structure
echo ════════════════════════════════════════════════════════════════
echo.

echo [5/27] Building includes directory...
cd includes

mkdir blog 2>nul
mkdir forms 2>nul
mkdir email 2>nul
mkdir security 2>nul
mkdir performance 2>nul
mkdir marketing 2>nul
mkdir search 2>nul
mkdir seo 2>nul

cd email
mkdir templates 2>nul
cd ..

cd ..
echo ^✓ Includes structure created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 5: Creating Content Structure
echo ════════════════════════════════════════════════════════════════
echo.

echo [6/27] Building content directory...
cd content
mkdir blog 2>nul
cd blog
mkdir posts 2>nul
cd ..
cd ..
echo ^✓ Content structure created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 6: Creating Source Files Structure
echo ════════════════════════════════════════════════════════════════
echo.

echo [7/27] Building src directory...
cd src
mkdir scss 2>nul
mkdir js 2>nul

cd js
mkdir modules 2>nul
mkdir utils 2>nul
cd ..

cd ..
echo ^✓ Source structure created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 7: Creating Backup Directories
echo ════════════════════════════════════════════════════════════════
echo.

echo [8/27] Building backup structure...
cd backups
mkdir daily 2>nul
mkdir weekly 2>nul
mkdir monthly 2>nul
cd ..
echo ^✓ Backup structure created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 8: Creating Root Configuration Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [9/27] Generating root files...

REM .gitignore
(
echo /node_modules
echo /vendor
echo /.env
echo /.DS_Store
echo /Thumbs.db
echo /logs/*
echo !/logs/.gitkeep
echo /web/assets/css/*.map
echo /web/assets/js/*.map
echo /web/assets/uploads/*
echo !/web/assets/uploads/.gitkeep
echo !/web/assets/uploads/optimized/.gitkeep
echo /build/
echo /coverage/
echo .vscode/
echo .idea/
echo phpstorm.xml
echo *.bak
echo *.swp
echo *~
echo # Composer
echo /composer.lock
echo /composer.phar
echo # NPM
echo /package-lock.json
echo # Testing
echo /test/
) > .gitignore

REM .editorconfig
(
echo root = true
echo.
echo [*]
echo indent_style = space
echo indent_size = 2
echo charset = utf-8
echo trim_trailing_whitespace = true
echo insert_final_newline = true
echo end_of_line = lf
echo.
echo [*.php]
echo indent_size = 4
echo.
echo [*.js]
echo indent_size = 2
echo.
echo [*.json]
echo indent_size = 2
echo.
echo [*.md]
echo trim_trailing_whitespace = false
) > .editorconfig

REM .prettierrc
(
echo {
echo   "tabWidth": 2,
echo   "useTabs": false,
echo   "semi": true,
echo   "singleQuote": true,
echo   "trailingComma": "es5",
echo   "printWidth": 80
echo }
) > .prettierrc

REM .eslintrc.json
(
echo {
echo   "env": {
echo     "browser": true,
echo     "es2021": true,
echo     "node": true
echo   },
echo   "extends": [
echo     "eslint:recommended",
echo     "airbnb-base"
echo   ],
echo   "parserOptions": {
echo     "ecmaVersion": 12,
echo     "sourceType": "module"
echo   },
echo   "rules": {
echo     "indent": ["error", 2],
echo     "linebreak-style": ["error", "unix"],
echo     "quotes": ["error", "single"],
echo     "semi": ["error", "always"],
echo     "no-console": "warn",
echo     "import/prefer-default-export": "off",
echo     "no-shadow": ["error", { "builtinGlobals": true }],
echo     "max-len": ["warn", { "code": 100, "ignoreComments": true }]
echo   }
echo }
) > .eslintrc.json

REM package.json
(
echo {
echo   "name": "yourcompany-website",
echo   "version": "1.0.0",
echo   "description": "Professional PHP Website for YourCompany BV",
echo   "main": "gulpfile.js",
echo   "scripts": {
echo     "dev": "gulp watch",
echo     "build": "gulp build",
echo     "deploy": "echo 'Add deployment script here'",
echo     "test": "echo 'No tests specified yet'",
echo     "lighthouse": "lighthouse-ci --config=lighthouse.config.js"
echo   },
echo   "keywords": [
echo     "php",
echo     "frontend",
echo     "gulp",
echo     "scss",
echo     "javascript",
echo     "seo",
echo     "performance",
echo     "security"
echo   ],
echo   "author": "YourCompany BV",
echo   "license": "MIT",
echo   "dependencies": {
echo     "gulp": "^4.0.2",
echo     "sass": "^1.77.6",
echo     "postcss": "^8.4.38",
echo     "autoprefixer": "^10.4.19",
echo     "cssnano": "^7.0.3",
echo     "terser": "^5.31.0"
echo   },
echo   "devDependencies": {
echo     "eslint": "^8.57.0",
echo     "eslint-config-airbnb-base": "^15.0.0",
echo     "eslint-plugin-import": "^2.29.1",
echo     "prettier": "^3.3.2",
echo     "gulp-sass": "^5.1.0",
echo     "gulp-postcss": "^10.0.0",
echo     "gulp-autoprefixer": "^9.0.0",
echo     "gulp-cssnano": "^2.1.3",
echo     "gulp-terser": "^2.1.0",
echo     "gulp-imagemin": "^9.1.0",
echo     "gulp-webp": "^5.0.0",
echo     "browser-sync": "^3.0.2",
echo     "@lhci/cli": "^0.13.0"
echo   }
echo }
) > package.json

REM composer.json
(
echo {
echo     "name": "yourcompany/website",
echo     "description": "YourCompany BV Professional PHP Website",
echo     "type": "project",
echo     "license": "MIT",
echo     "minimum-stability": "stable",
echo     "require": {
echo         "php": ">=8.0",
echo         "vlucas/phpdotenv": "^5.6",
echo         "guzzlehttp/guzzle": "^7.8",
echo         "phpmailer/phpmailer": "^6.9",
echo         "htmlpurifier/htmlpurifier": "^4.17",
echo         "monolog/monolog": "^3.7"
echo     },
echo     "autoload": {
echo         "psr-4": {
echo             "App\\": "includes/"
echo         },
echo         "files": [
echo             "includes/functions.php"
echo         ]
echo     },
echo     "require-dev": {
echo         "phpunit/phpunit": "^10.5"
echo     },
echo     "config": {
echo         "optimize-autoloader": true,
echo         "preferred-install": "dist",
echo         "sort-packages": true
echo     }
echo }
) > composer.json

REM gulpfile.js
(
echo const { src, dest, watch, series, parallel } = require('gulp');
echo const sass = require('gulp-sass')(require('sass'));
echo const postcss = require('gulp-postcss');
echo const autoprefixer = require('autoprefixer');
echo const cssnano = require('cssnano');
echo const terser = require('gulp-terser');
echo const imagemin = require('gulp-imagemin');
echo const webp = require('gulp-webp');
echo const browserSync = require('browser-sync').create();
echo.
echo // File paths
echo const files = {
echo   scssPath: 'src/scss/**/*.scss',
echo   jsPath: 'src/js/**/*.js',
echo   imgPath: 'public/assets/images/**/*.{jpg,jpeg,png,svg,gif}',
echo   phpPath: 'public/**/*.php',
echo   htmlPath: 'public/**/*.html'
echo };
echo.
echo // SCSS task: Compile, autoprefix, minify
echo function scssTask() {
echo   return src('src/scss/main.scss', { sourcemaps: true })
echo     .pipe(sass().on('error', sass.logError))
echo     .pipe(postcss([autoprefixer(), cssnano()]))
echo     .pipe(dest('public/assets/css', { sourcemaps: '.' }))
echo     .pipe(browserSync.stream());
echo }
echo.
echo // Critical SCSS task: Compile critical CSS
echo function criticalScssTask() {
echo   return src('src/scss/_critical.scss', { sourcemaps: true })
echo     .pipe(sass().on('error', sass.logError))
echo     .pipe(postcss([autoprefixer(), cssnano()]))
echo     .pipe(dest('public/assets/css', { sourcemaps: '.' }));
echo }
echo.
echo // JS task: Concatenate and minify
echo function jsTask() {
echo   return src(files.jsPath, { sourcemaps: true })
echo     .pipe(terser())
echo     .pipe(dest('public/assets/js', { sourcemaps: '.' }))
echo     .pipe(browserSync.stream());
echo }
echo.
echo // Image optimization task
echo function imgTask() {
echo   return src(files.imgPath)
echo     .pipe(imagemin([
echo       imagemin.gifsicle({ interlaced: true }),
echo       imagemin.mozjpeg({ quality: 75, progressive: true }),
echo       imagemin.optipng({ optimizationLevel: 5 }),
echo       imagemin.svgo({
echo         plugins: [
echo           { removeViewBox: true },
echo           { cleanupIDs: false }
echo         ]
echo       })
echo     ]))
echo     .pipe(dest('public/assets/images/optimized'));
echo }
echo.
echo // Convert images to WebP
echo function webpTask() {
echo   return src(files.imgPath)
echo     .pipe(webp())
echo     .pipe(dest('public/assets/images/optimized'));
echo }
echo.
echo // BrowserSync server
echo function serve(done) {
echo   browserSync.init({
echo     proxy: 'localhost/yourcompany-website/public', // Adjust if your PHP dev server is different
echo     open: false,
echo     notify: false
echo   });
echo   done();
echo }
echo.
echo // Reload browser (for PHP files)
echo function reload(done) {
echo   browserSync.reload();
echo   done();
echo }
echo.
echo // Watch task: Watch SCSS, JS, Images, PHP, HTML files
echo function watchTask() {
echo   watch(files.scssPath, series(scssTask, criticalScssTask));
echo   watch(files.jsPath, jsTask);
echo   watch(files.imgPath, series(imgTask, webpTask, reload));
echo   watch([files.phpPath, files.htmlPath], reload);
echo }
echo.
echo // Default Gulp task
echo exports.default = series(
echo   parallel(scssTask, criticalScssTask, jsTask, imgTask, webpTask),
echo   serve,
echo   watchTask
echo );
echo.
echo // Build task for production
echo exports.build = series(
echo   parallel(scssTask, criticalScssTask, jsTask, imgTask, webpTask)
echo );
) > gulpfile.js

REM lighthouse.config.js
(
echo module.exports = {
echo   ci: {
echo     collect: {
echo       url: ['https://yourcompany.nl'], // Replace with your actual production URL
echo       startServerCommand: 'php -S localhost:8000 -t public', // Or your local PHP server command
echo       numberOfRuns: 3,
echo       upload: {
echo         target: 'filesystem',
echo         outputDir: './lighthouse-results',
echo       },
echo     },
echo     assert: {
echo       assertions: {
echo         'categories:performance': ['error', { minScore: 0.9 }],
echo         'categories:accessibility': ['error', { minScore: 0.95 }],
echo         'categories:best-practices': ['error', { minScore: 0.9 }],
echo         'categories:seo': ['error', { minScore: 0.95 }],
echo         'categories:pwa': ['warn', { minScore: 0.8 }],
echo       },
echo     },
echo   },
echo };
) > lighthouse.config.js

REM README.md
(
echo # YourCompany BV Website
echo.
echo A professional, SEO-optimized, and performant PHP website for YourCompany BV.
echo.
echo ## Table of Contents
echo - [Project Description](#project-description)
echo - [Features](#features)
echo - [Technology Stack](#technology-stack)
echo - [Prerequisites](#prerequisites)
echo - [Installation](#installation)
echo - [Development Workflow](#development-workflow)
echo - [Deployment](#deployment)
echo - [File Structure](#file-structure)
echo - [License](#license)
echo.
echo ## Project Description
echo This project serves as the official website for YourCompany BV, designed with a strong focus on modern web development best practices. It incorporates advanced SEO techniques, performance optimizations, robust security measures, and a modular architecture to ensure scalability and maintainability.
echo.
echo ## Features
echo - **Comprehensive SEO**: Dynamic meta tags, Schema.org JSON-LD (Organization, LocalBusiness, Article, FAQ, Breadcrumb, Product), canonical URLs, sitemap.
echo - **Performance Optimization**: Critical CSS, lazy loading, resource hints (DNS prefetch, preconnect, preload), image optimization (WebP conversion, minification), Gzip compression.
echo - **Security Hardening**: Content Security Policy (CSP), X-Frame-Options, X-Content-Type-Options, Referrer-Policy, HSTS, input validation and sanitization, CSRF protection, rate limiting, secure file uploads.
echo - **PWA Ready**: Manifest file, service worker for offline capabilities and caching.
echo - **Marketing Integrations**: Google Tag Manager, Facebook Pixel, LinkedIn Insight Tag.
echo - **Blog System**: Dynamic blog posts with pagination, categories, and search.
echo - **Contact Forms**: Secure contact form with honeypot and CSRF protection.
echo - **Legal Pages**: GDPR-compliant privacy policy, terms & conditions, cookie policy, accessibility statement, disclaimer.
echo - **Development Workflow**: Gulp-based build system for SCSS compilation, JS minification, image optimization, and live browser reloading.
echo - **Automated Tasks**: Scripts for sitemap generation, search index creation, and database backups.
echo - **Modern Standards**: PSR-12 for PHP, ES6+ JavaScript, SCSS for styling.
echo.
echo ## Technology Stack
echo - **Backend**: PHP 8.0+
echo - **Frontend**: HTML5, CSS3 (SCSS), JavaScript (ES6+)
echo - **Build Tools**: Gulp, Node.js, NPM/Yarn
echo - **Dependencies Manager**: Composer (PHP), NPM (JavaScript)
echo - **Environment**: Docker (recommended), Apache/Nginx
echo - **Database**: MySQL/MariaDB (via `.env` configuration)
echo.
echo ## Prerequisites
echo - PHP 8.0+
echo - Composer
echo - Node.js (LTS version)
echo - npm (or Yarn)
echo - A web server (Apache, Nginx, or PHP's built-in server for development)
echo - Git
echo.
echo ## Installation
echo 1.  **Clone the repository**:
echo     ```bash
echo     git clone https://github.com/yourcompany/yourcompany-website.git
echo     cd yourcompany-website
echo     ```
echo 2.  **Install PHP dependencies**:
echo     ```bash
echo     composer install
echo     ```
echo 3.  **Install Node.js dependencies**:
echo     ```bash
echo     npm install
echo     ```
echo 4.  **Configure environment variables**:
echo     Copy `config/.env.example` to `config/.env` and fill in your details:
echo     ```bash
echo     cp config/.env.example config/.env
echo     ```
echo     Edit `config/.env` with your database credentials, site URL, API keys, etc.
echo 5.  **Set up web server**:
echo     Point your web server's document root to the `public/` directory.
echo     For local development using PHP's built-in server:
echo     ```bash
echo     php -S localhost:8000 -t public
echo     ```
echo.
echo ## Development Workflow
echo To start the development server and watch for file changes:
echo ```bash
echo npm run dev
echo ```
echo This will:
echo - Compile SCSS to CSS (with autoprefixing and minification).
echo - Minify JavaScript.
echo - Optimize images.
echo - Start a BrowserSync server for live reloading.
echo.
echo **Other useful scripts**:
echo - `npm run build`: Builds all assets for production (without watching).
echo - `npm run test`: Runs any defined tests.
echo - `npm run lighthouse`: Runs Lighthouse CI for performance and SEO auditing.
echo.
echo ## Deployment
echo Refer to `docs/deployment.md` for detailed instructions on deploying the website to a production environment.
echo.
echo ## File Structure
echo A detailed overview of the file structure can be found in `markdown/structure-map.txt` (human-readable) and `markdown/structure-map.md` (AI-friendly).
echo.
echo ## License
echo This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
) > README.md

REM CHANGELOG.md
(
echo # Changelog
echo.
echo All notable changes to this project will be documented in this file.
echo.
echo The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
echo and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
echo.
echo ## [1.0.0] - 2025-01-01
echo ### Added
echo - Initial project setup and file structure.
echo - Core PHP framework with includes for head, header, footer, config, functions.
echo - Comprehensive SEO features: dynamic meta tags, various Schema.org types (Organization, LocalBusiness, Article, FAQ, Breadcrumb, Product), canonical URLs, social media meta tags, robots.txt, sitemap.xml.
echo - Performance optimizations: critical CSS, resource hints (DNS prefetch, preconnect, preload), cache control, basic minification.
echo - Security implementations: Content Security Policy (CSP), HTTP security headers, input sanitization, CSRF protection, rate limiting, secure file uploads, robust input validation.
echo - Marketing integrations: Google Tag Manager, Facebook Pixel, LinkedIn Insight Tag.
echo - PWA support: manifest.json, service-worker.js, offline.html.
echo - Blog system: index page, single post view, category archives, placeholder content management.
echo - Secure contact form with honeypot and server-side validation.
echo - Legal pages: privacy policy, terms & conditions, cookie policy, accessibility statement, disclaimer (all Dutch).
echo - Development tools: Gulp for asset compilation (SCSS, JS, images), ESLint, Prettier, .editorconfig.
echo - Server configurations for Apache (.htaccess), Nginx, and IIS (web.config), PHP settings (php.ini).
echo - Automated scripts: backup, sitemap generation, search index generation.
echo - Documentation: README, deployment guide, security policy, backup/restore guide, structure maps.
echo - Placeholder content and consistent data standards across all files.
) > CHANGELOG.md

REM LICENSE
(
echo MIT License
echo.
echo Copyright (c) 2025 YourCompany BV
echo.
echo Permission is hereby granted, free of charge, to any person obtaining a copy
echo of this software and associated documentation files (the "Software"), to deal
echo in the Software without restriction, including without limitation the rights
echo to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
echo copies of the Software, and to permit persons to whom the Software is
echo furnished to do so, subject to the following conditions:
echo.
echo The above copyright notice and this permission notice shall be included in all
echo copies or substantial portions of the Software.
echo.
echo THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
echo IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
echo FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
echo AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
echo LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
echo OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
echo SOFTWARE.
) > LICENSE

echo ^✓ Root configuration files created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 9: Creating Public Root Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [10/27] Generating public root files...
cd public

REM public/index.php
(
echo ^<?php
echo require_once '../includes/config.php';
echo require_once '../includes/functions.php';
echo.
echo // Define page-specific variables
echo $pageTitle = "Welkom bij YourCompany BV - Innovatieve Oplossingen";
echo $pageDescription = "YourCompany BV levert innovatieve en duurzame oplossingen voor uw bedrijf. Ontdek onze diensten, projecten en expertise.";
echo $pageKeywords = "YourCompany BV, innovatie, oplossingen, diensten, technologie, Nederland, Amsterdam";
echo $pageCanonical = SITE_URL;
echo $ogImage = SITE_URL . '/assets/images/og-image.jpg';
echo.
echo // Set security headers
echo App\Security\Headers::setAllHeaders();
echo ?^>
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<?php include_once '../includes/head.php'; ?^>
echo ^<body^>
echo   ^<?php include_once '../includes/header.php'; ?^>
echo.
echo   ^<main id="main-content"^>
echo     ^<!-- Hero Section -->
echo     ^<section class="hero-section"^>
echo       ^<div class="container"^>
echo         ^<h1>Innovatieve Oplossingen voor een Duurzame Toekomst^</h1^>
echo         ^<p^>YourCompany BV staat voor vooruitgang. Ontdek hoe wij uw bedrijf transformeren met op maat gemaakte technologie en expertise.^</p^>
echo         ^<a href="/pages/contact.php" class="btn btn-primary"^>Neem Contact Op^</a^>
echo       ^</div^>
echo     ^</section^>
echo.
echo     ^<!-- Feature Section -->
echo     ^<section class="feature-section section-padding"^>
echo       ^<div class="container"^>
echo         ^<h2 class="text-center"^>Onze Kerngebieden^</h2^>
echo         ^<div class="grid-3-col"^>
echo           ^<div class="feature-card"^>
echo             ^<h3>Digitale Transformatie^</h3^>
echo             ^<p^>Wij begeleiden uw organisatie in de transitie naar een efficiëntere, digitale bedrijfsvoering.^</p^>
echo             ^<a href="#" class="read-more"^>Lees meer ^&raquo;^</a^>
echo           ^</div^>
echo           ^<div class="feature-card"^>
echo             ^<h3>Cloud Oplossingen^</h3^>
echo             ^<p^>Schaalbare en veilige cloud infrastructuren die meegroeien met uw behoeften.^</p^>
echo             ^<a href="#" class="read-more"^>Lees meer ^&raquo;^</a^>
echo           ^</div^>
echo           ^<div class="feature-card"^>
echo             ^<h3>Cyberbeveiliging^</h3^>
echo             ^<p^>Bescherm uw bedrijfsinformatie en systemen tegen de nieuwste online dreigingen.^</p^>
echo             ^<a href="#" class="read-more"^>Lees meer ^&raquo;^</a^>
echo           ^</div^>
echo         ^</div^>
echo       ^</div^>
echo     ^</section^>
echo.
echo     ^<!-- Call to Action Section -->
echo     ^<section class="cta-section bg-primary text-white section-padding text-center"^>
echo       ^<div class="container"^>
echo         ^<h2>Klaar om te Innoveren?^</h2^>
echo         ^<p^>Laten we samen bouwen aan uw succesverhaal.^</p^>
echo         ^<a href="/pages/contact.php" class="btn btn-secondary"^>Start een Project^</a^>
echo       ^</div^>
echo     ^</section^>
echo.
echo     ^<!-- Blog Preview Section -->
echo     ^<section class="blog-preview-section section-padding"^>
echo       ^<div class="container"^>
echo         ^<h2 class="text-center"^>Laatste Nieuws & Insights^</h2^>
echo         ^<div class="grid-3-col"^>
echo           ^<?php
echo           // Example for dynamic content:
echo           $blogPosts = App\Functions::get_blog_posts(3); // Fetch 3 latest posts
echo           if (!empty($blogPosts)) {
echo             foreach ($blogPosts as $post) {
echo               include '../includes/blog/post-card.php'; // Renders each post card
echo             }
echo           } else {
echo             echo '^<p^>Er zijn op dit moment geen blogberichten beschikbaar.^</p^>';
echo           }
echo           ?^>
echo         ^</div^>
echo         ^<div class="text-center mt-4"^>
echo           ^<a href="/pages/blog.php" class="btn btn-outline-primary"^>Bekijk Alle Artikelen^</a^>
echo         ^</div^>
echo       ^</div^>
echo     ^</section^>
echo.
echo   ^</main^>
echo.
echo   ^<?php include_once '../includes/footer.php'; ?^>
echo ^</body^>
echo ^</html^>
) > index.php

REM public/robots.txt
(
echo User-agent: *
echo Allow: /
echo.
echo Sitemap: https://yourcompany.nl/sitemap.xml
) > robots.txt

REM public/sitemap.xml
(
echo ^<?xml version="1.0" encoding="UTF-8"?^>
echo ^<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"^>
echo   ^<url^>
echo     ^<loc^>https://yourcompany.nl/^</loc^>
echo     ^<lastmod^>2025-10-05^</lastmod^>
echo     ^<changefreq^>daily^</changefreq^>
echo     ^<priority^>1.0^</priority^>
echo   ^</url^>
echo   ^<url^>
echo     ^<loc^>https://yourcompany.nl/pages/contact.php^</loc^>
echo     ^<lastmod^>2025-10-05^</lastmod^>
echo     ^<changefreq^>monthly^</changefreq^>
echo     ^<priority^>0.8^</priority^>
echo   ^</url^>
echo   ^<url^>
echo     ^<loc^>https://yourcompany.nl/pages/blog.php^</loc^>
echo     ^<lastmod^>2025-10-05^</lastmod^>
echo     ^<changefreq^>weekly^</changefreq^>
echo     ^<priority^>0.7^</priority^>
echo   ^</url^>
echo   ^<url^>
echo     ^<loc^>https://yourcompany.nl/pages/privacybeleid.php^</loc^>
echo     ^<lastmod^>2025-10-05^</lastmod^>
echo     ^<changefreq^>monthly^</changefreq^>
echo     ^<priority^>0.5^</priority^>
echo   ^</url^>
echo   ^<url^>
echo     ^<loc^>https://yourcompany.nl/pages/voorwaarden.php^</loc^>
echo     ^<lastmod^>2025-10-05^</lastmod^>
echo     ^<changefreq^>monthly^</changefreq^>
echo     ^<priority^>0.5^</priority^>
echo   ^</url^>
echo   ^<url^>
echo     ^<loc^>https://yourcompany.nl/pages/blog-post.php?id=1^</loc^>
echo     ^<lastmod^>2025-09-20^</lastmod^>
echo     ^<changefreq^>monthly^</changefreq^>
echo     ^<priority^>0.6^</priority^>
echo   ^</url^>
echo   ^<url^>
echo     ^<loc^>https://yourcompany.nl/pages/blog-post.php?id=2^</loc^>
echo     ^<lastmod^>2025-09-15^</lastmod^>
echo     ^<changefreq^>monthly^</changefreq^>
echo     ^<priority^>0.6^</priority^>
echo   ^</url^>
echo ^</urlset^>
) > sitemap.xml

REM public/security.txt
(
echo Contact: mailto:info@yourcompany.nl
echo Contact: tel:+31201234567
echo Expires: 2026-10-05T17:00:00Z
echo Preferred-Languages: nl, en
echo Canonical: https://yourcompany.nl/.well-known/security.txt
echo Policy: https://yourcompany.nl/docs/security-policy.md
echo Acknowledgements: https://yourcompany.nl/security-hall-of-fame.html
) > security.txt

REM public/humans.txt
(
echo /* TEAM */
echo   Developer: [Your Name/Team Name]
echo   Contact: info@yourcompany.nl
echo   From: YourCompany BV, Amsterdam, The Netherlands
echo.
echo /* SITE */
echo   Last update: 2025/10/05
echo   Standards: HTML5, CSS3, ES6+, WCAG 2.1 AA
echo   Components: PHP, SCSS, JavaScript, Gulp
echo   Software: PHPStorm, VS Code
echo.
echo /* THANKS */
echo   Google, Stack Overflow, Mozilla
) > humans.txt

REM public/browserconfig.xml
(
echo ^<?xml version="1.0" encoding="utf-8"?^>
echo ^<browserconfig^>
echo   ^<msapplication^>
echo     ^<tile^>
echo       ^<square70x70logo src="/assets/images/favicons/mstile-70x70.png"/^>
echo       ^<square150x150logo src="/assets/images/favicons/mstile-150x150.png"/^>
echo       ^<square310x310logo src="/assets/images/favicons/mstile-310x310.png"/^>
echo       ^<wide310x150logo src="/assets/images/favicons/mstile-310x150.png"/^>
echo       ^<TileColor^>#ffffff^</TileColor^>
echo     ^</tile^>
echo   ^</msapplication^>
echo ^</browserconfig^>
) > browserconfig.xml

REM public/manifest.json
(
echo {
echo   "name": "YourCompany BV",
echo   "short_name": "YourCompany",
echo   "description": "YourCompany BV: Innovatieve Oplossingen voor een Duurzame Toekomst",
echo   "start_url": "/?source=pwa",
echo   "display": "standalone",
echo   "background_color": "#ffffff",
echo   "theme_color": "#007bff",
echo   "orientation": "portrait",
echo   "icons": [
echo     {
echo       "src": "/assets/images/favicons/android-chrome-192x192.png",
echo       "sizes": "192x192",
echo       "type": "image/png"
echo     },
echo     {
echo       "src": "/assets/images/favicons/android-chrome-512x512.png",
echo       "sizes": "512x512",
echo       "type": "image/png"
echo     },
echo     {
echo       "src": "/assets/images/favicons/maskable_icon.png",
echo       "sizes": "192x192",
echo       "type": "image/png",
echo       "purpose": "maskable"
echo     }
echo   ]
echo }
) > manifest.json

REM public/service-worker.js
(
echo /* eslint-disable no-console */
echo // Service Worker for YourCompany BV Website
echo.
echo const CACHE_NAME = 'yourcompany-cache-v1.0.0';
echo const OFFLINE_URL = '/offline.html';
echo.
echo // List of assets to cache on install
echo const assetsToCache = [
echo   '/',
echo   OFFLINE_URL,
echo   '/public/assets/css/main.css',
echo   '/public/assets/js/app.js',
echo   '/public/assets/images/logo.svg',
echo   '/public/assets/images/favicons/favicon.ico',
echo   '/public/assets/fonts/inter-var.woff2'
echo ];
echo.
echo self.addEventListener('install', (event) => {
echo   console.log('[Service Worker] Installing...');
echo   event.waitUntil(
echo     caches.open(CACHE_NAME)
echo       .then((cache) => {
echo         console.log('[Service Worker] Caching critical assets:', assetsToCache);
echo         return cache.addAll(assetsToCache);
echo       })
echo       .then(() => self.skipWaiting()) // Force the waiting service worker to become the active service worker
echo       .catch((error) => console.error('[Service Worker] Cache addAll failed:', error))
echo   );
echo });
echo.
echo self.addEventListener('activate', (event) => {
echo   console.log('[Service Worker] Activating...');
echo   event.waitUntil(
echo     caches.keys().then((cacheNames) => Promise.all(
echo       cacheNames.map((cacheName) => {
echo         if (cacheName !== CACHE_NAME) {
echo           console.log('[Service Worker] Deleting old cache:', cacheName);
echo           return caches.delete(cacheName);
echo         }
echo         return null;
echo       })
echo     ))
echo       .then(() => self.clients.claim()) // Take control of un-controlled clients immediately
echo   );
echo });
echo.
echo self.addEventListener('fetch', (event) => {
echo   // Only handle GET requests
echo   if (event.request.method !== 'GET') {
echo     return;
echo   }
echo.
echo   event.respondWith(
echo     caches.match(event.request)
echo       .then((cachedResponse) => {
echo         // Return cached response if found
echo         if (cachedResponse) {
echo           console.log('[Service Worker] Serving from cache:', event.request.url);
echo           return cachedResponse;
echo         }
echo.
echo         // Otherwise, fetch from network
echo         return fetch(event.request)
echo           .then((response) => {
echo             // If valid response, cache it and return
echo             if (response && response.status === 200 && response.type === 'basic') {
echo               console.log('[Service Worker] Caching new resource:', event.request.url);
echo               const responseToCache = response.clone();
echo               caches.open(CACHE_NAME)
echo                 .then((cache) => {
echo                   cache.put(event.request, responseToCache);
echo                 });
echo             }
echo             return response;
echo           })
echo           .catch(() => {
echo             // If network fails, serve offline page for navigation requests
echo             if (event.request.mode === 'navigate') {
echo               console.log('[Service Worker] Fetch failed, serving offline page.');
echo               return caches.match(OFFLINE_URL);
echo             }
echo             // For other types of requests (e.g., images, scripts),
echo             // you might return a generic fallback or just let it fail.
echo             // Here, we just let it fail naturally for non-navigate requests.
echo             return null; // Or caches.match('/fallback-image.png'); etc.
echo           });
echo       })
echo   );
echo });
) > service-worker.js

REM public/offline.html
(
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<head^>
echo   ^<meta charset="UTF-8"^>
echo   ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo   ^<title^>U bent offline - YourCompany BV^</title^>
echo   ^<style^>
echo     body {
echo       font-family: Arial, sans-serif;
echo       margin: 0;
echo       display: flex;
echo       justify-content: center;
echo       align-items: center;
echo       min-height: 100vh;
echo       background-color: #f8f9fa;
echo       color: #343a40;
echo       text-align: center;
echo       padding: 20px;
echo     }
echo     .container {
echo       background-color: #fff;
echo       padding: 40px;
echo       border-radius: 8px;
echo       box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
echo       max-width: 500px;
echo       width: 100%;
echo     }
echo     h1 {
echo       color: #dc3545;
echo       margin-bottom: 20px;
echo       font-size: 2.5em;
echo     }
echo     p {
echo       font-size: 1.1em;
echo       line-height: 1.6;
echo       margin-bottom: 25px;
echo     }
echo     .btn {
echo       display: inline-block;
echo       background-color: #007bff;
echo       color: #fff;
echo       padding: 12px 25px;
echo       border-radius: 5px;
echo       text-decoration: none;
echo       font-weight: bold;
echo       transition: background-color 0.3s ease;
echo     }
echo     .btn:hover {
echo       background-color: #0056b3;
echo     }
echo     .logo {
echo       margin-bottom: 30px;
echo     }
echo     .logo img {
echo       max-width: 150px;
echo       height: auto;
echo     }
echo   ^</style^>
echo ^</head^>
echo ^<body^>
echo   ^<div class="container"^>
echo     ^<div class="logo"^>
echo       ^<img src="/assets/images/logo.svg" alt="YourCompany BV Logo"^>
echo     ^</div^>
echo     ^<h1^>U bent offline!^</h1^>
echo     ^<p^>Het spijt ons, maar het lijkt erop dat u niet verbonden bent met het internet. Deze pagina is helaas niet beschikbaar in offline modus.^</p^>
echo     ^<p^>Controleer uw internetverbinding en probeer het opnieuw.^</p^>
echo     ^<a href="/" class="btn"^>Ga naar de homepage^</a^>
echo   ^</div^>
echo ^</body^>
echo ^</html^>
) > offline.html

REM public/404.html
(
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<head^>
echo   ^<meta charset="UTF-8"^>
echo   ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo   ^<title^>Pagina niet gevonden (404) - YourCompany BV^</title^>
echo   ^<style^>
echo     body {
echo       font-family: Arial, sans-serif;
echo       margin: 0;
echo       display: flex;
echo       justify-content: center;
echo       align-items: center;
echo       min-height: 100vh;
echo       background-color: #f8f9fa;
echo       color: #343a40;
echo       text-align: center;
echo       padding: 20px;
echo     }
echo     .container {
echo       background-color: #fff;
echo       padding: 40px;
echo       border-radius: 8px;
echo       box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
echo       max-width: 600px;
echo       width: 100%;
echo     }
echo     h1 {
echo       color: #dc3545;
echo       margin-bottom: 15px;
echo       font-size: 3em;
echo     }
echo     h2 {
echo       font-size: 1.8em;
echo       margin-bottom: 25px;
echo       color: #6c757d;
echo     }
echo     p {
echo       font-size: 1.1em;
echo       line-height: 1.6;
echo       margin-bottom: 20px;
echo     }
echo     .search-box {
echo       margin: 30px 0;
echo     }
echo     .search-box input[type="text"] {
echo       width: 70%%;
echo       padding: 10px 15px;
echo       border: 1px solid #ced4da;
echo       border-radius: 5px 0 0 5px;
echo       font-size: 1em;
echo       box-sizing: border-box;
echo       vertical-align: middle;
echo     }
echo     .search-box button {
echo       width: 25%%;
echo       padding: 10px 15px;
echo       background-color: #007bff;
echo       color: #fff;
echo       border: 1px solid #007bff;
echo       border-radius: 0 5px 5px 0;
echo       cursor: pointer;
echo       font-size: 1em;
echo       box-sizing: border-box;
echo       vertical-align: middle;
echo       transition: background-color 0.3s ease;
echo     }
echo     .search-box button:hover {
echo       background-color: #0056b3;
echo     }
echo     .nav-links a {
echo       color: #007bff;
echo       text-decoration: none;
echo       margin: 0 10px;
echo       font-weight: bold;
echo       transition: color 0.3s ease;
echo     }
echo     .nav-links a:hover {
echo       color: #0056b3;
echo     }
echo   ^</style^>
echo ^</head^>
echo ^<body^>
echo   ^<div class="container"^>
echo     ^<h1>404^</h1^>
echo     ^<h2^>Oeps! Pagina niet gevonden^</h2^>
echo     ^<p^>De pagina die u zoekt bestaat niet of is verplaatst. Het spijt ons voor het ongemak.^</p^>
echo     ^<p^>U kunt proberen terug te gaan naar de homepage of de zoekfunctie gebruiken.^</p^>
echo     ^<div class="search-box"^>
echo       ^<form action="/pages/blog.php" method="GET"^>
echo         ^<input type="text" name="s" placeholder="Zoek op de website..." aria-label="Zoekveld"^>
echo         ^<button type="submit"^>Zoeken^</button^>
echo       ^</form^>
echo     ^</div^>
echo     ^<div class="nav-links"^>
echo       ^<a href="/"^>Home^</a^>
echo       ^<a href="/pages/contact.php"^>Contact^</a^>
echo       ^<a href="/pages/blog.php"^>Blog^</a^>
echo     ^</div^>
echo   ^</div^>
echo ^</body^>
echo ^</html^>
) > 404.html

REM public/ads.txt
(
echo google.com, pub-0000000000000000, DIRECT, f08c47fec0942fa0
) > ads.txt

REM public/app-ads.txt
(
echo google.com, pub-0000000000000000, DIRECT, f08c47fec0942fa0
) > app-ads.txt

REM public/feed.xml
(
echo ^<?xml version="1.0" encoding="UTF-8"?^>
echo ^<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom"^>
echo   ^<channel^>
echo     ^<title^>YourCompany BV Blog^</title^>
echo     ^<link^>https://yourcompany.nl/pages/blog.php^</link^>
echo     ^<atom:link href="https://yourcompany.nl/feed.xml" rel="self" type="application/rss+xml" /^>
echo     ^<description^>Laatste nieuws en inzichten van YourCompany BV over technologie en innovatie.^</description^>
echo     ^<language^>nl-nl^</language^>
echo     ^<lastBuildDate^>Sun, 05 Oct 2025 17:00:00 +0000^</lastBuildDate^>
echo.
echo     ^<item^>
echo       ^<title^>De Toekomst van AI in Bedrijfsprocessen^</title^>
echo       ^<link^>https://yourcompany.nl/pages/blog-post.php?id=1^</link^>
echo       ^<pubDate^>Fri, 20 Sep 2025 10:00:00 +0000^</pubDate^>
echo       ^<guid^>https://yourcompany.nl/pages/blog-post.php?id=1^</guid^>
echo       ^<description^>^<![CDATA[Duik in de mogelijkheden van kunstmatige intelligentie en hoe deze de efficiëntie en innovatie binnen bedrijven stimuleert.]]^>^</description^>
echo     ^</item^>
echo.
echo     ^<item^>
echo       ^<title^>Cybersecurity Trends voor 2026^</title^>
echo       ^<link^>https://yourcompany.nl/pages/blog-post.php?id=2^</link^>
echo       ^<pubDate^>Mon, 15 Sep 2025 14:30:00 +0000^</pubDate^>
echo       ^<guid^>https://yourcompany.nl/pages/blog-post.php?id=2^</guid^>
echo       ^<description^>^<![CDATA[Een diepgaande analyse van de belangrijkste cybersecurity uitdagingen en oplossingen die u in 2026 kunt verwachten.]]^>^</description^>
echo     ^</item^>
echo.
echo     ^<item^>
echo       ^<title^>Cloud Adoptie: Kansen en Valkuilen^</title^>
echo       ^<link^>https://yourcompany.nl/pages/blog-post.php?id=3^</link^>
echo       ^<pubDate^>Wed, 10 Sep 2025 09:15:00 +0000^</pubDate^>
echo       ^<guid^>https://yourcompany.nl/pages/blog-post.php?id=3^</guid^>
echo       ^<description^>^<![CDATA[Ontdek de voordelen en potentiële risico's bij het implementeren van cloudstrategieën voor uw organisatie.]]^>^</description^>
echo     ^</item^>
echo   ^</channel^>
echo ^</rss^>
) > feed.xml

cd .well-known
REM public/.well-known/security.txt
(
echo Contact: mailto:info@yourcompany.nl
echo Contact: tel:+31201234567
echo Expires: 2026-10-05T17:00:00Z
echo Preferred-Languages: nl, en
echo Canonical: https://yourcompany.nl/.well-known/security.txt
echo Policy: https://yourcompany.nl/docs/security-policy.md
) > security.txt
cd ..

cd ..
echo ^✓ Public root files created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 10: Creating CSS Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [11/27] Generating CSS files...
cd public\assets\css

REM public/assets/css/critical.css
(
echo /*! normalize.css v8.0.1 | MIT License | github.com/necolas/normalize.css */
echo html { line-height: 1.15; -webkit-text-size-adjust: 100%%; }
echo body { margin: 0; }
echo h1 { font-size: 2em; margin: 0.67em 0; }
echo hr { box-sizing: content-box; height: 0; overflow: visible; }
echo pre { font-family: monospace, monospace; font-size: 1em; }
echo a { background-color: transparent; }
echo abbr[title] { border-bottom: none; text-decoration: underline; text-decoration: underline dotted; }
echo b, strong { font-weight: bolder; }
echo code, kbd, samp { font-family: monospace, monospace; font-size: 1em; }
echo small { font-size: 80%%; }
echo sub, sup { font-size: 75%%; line-height: 0; position: relative; vertical-align: baseline; }
echo sub { bottom: -0.25em; }
echo sup { top: -0.5em; }
echo img { border-style: none; }
echo button, input, optgroup, select, textarea { font-family: inherit; font-size: 100%%; line-height: 1.15; margin: 0; }
echo button, input { overflow: visible; }
echo button, select { text-transform: none; }
echo button::-moz-focus-inner, [type="button"]::-moz-focus-inner, [type="reset"]::-moz-focus-inner, [type="submit"]::-moz-focus-inner { border-style: none; padding: 0; }
echo fieldset { padding: 0.35em 0.75em 0.625em; }
echo legend { box-sizing: border-box; color: inherit; display: table; max-width: 100%%; padding: 0; white-space: normal; }
echo progress { vertical-align: baseline; }
echo textarea { overflow: auto; }
echo [type="checkbox"], [type="radio"] { box-sizing: border-box; padding: 0; }
echo [type="number"]::-webkit-inner-spin-button, [type="number"]::-webkit-outer-spin-button { height: auto; }
echo [type="search"] { -webkit-appearance: textfield; outline-offset: -2px; }
echo [type="search"]::-webkit-search-decoration { -webkit-appearance: none; }
echo ::-webkit-file-upload-button { -webkit-appearance: button; font: inherit; }
echo details { display: block; }
echo summary { display: list-item; }
echo template { display: none; }
echo [hidden] { display: none; }
echo /* End normalize.css */
echo.
echo /* YourCompany BV Critical CSS */
echo :root {
echo   --primary-color: #007bff;
echo   --secondary-color: #6c757d;
echo   --accent-color: #28a745;
echo   --text-color: #343a40;
echo   --heading-color: #212529;
echo   --light-bg: #f8f9fa;
echo   --white: #fff;
echo   --breakpoint-md: 768px;
echo   --header-height: 70px;
echo }
echo.
echo html {
echo   box-sizing: border-box;
echo   font-size: 16px;
echo }
echo *, *::before, *::after {
echo   box-sizing: inherit;
echo }
echo body {
echo   font-family: 'Inter', sans-serif; /* Fallback to sans-serif */
echo   line-height: 1.6;
echo   color: var(--text-color);
echo   -webkit-font-smoothing: antialiased;
echo   -moz-osx-font-smoothing: grayscale;
echo }
echo.
echo h1, h2, h3, h4, h5, h6 {
echo   font-family: 'Inter', sans-serif;
echo   color: var(--heading-color);
echo   margin-top: 0;
echo   line-height: 1.2;
echo }
echo h1 { font-size: 2.5rem; }
echo h2 { font-size: 2rem; }
echo h3 { font-size: 1.75rem; }
echo p { margin-bottom: 1rem; }
echo.
echo a {
echo   color: var(--primary-color);
echo   text-decoration: none;
echo }
echo a:hover {
echo   text-decoration: underline;
echo }
echo.
echo .container {
echo   max-width: 1200px;
echo   margin-left: auto;
echo   margin-right: auto;
echo   padding-left: 15px;
echo   padding-right: 15px;
echo   width: 100%;
echo }
echo.
echo /* Header */
echo .site-header {
echo   background-color: var(--white);
echo   padding: 1rem 0;
echo   box-shadow: 0 2px 4px rgba(0,0,0,0.05);
echo   position: sticky;
echo   top: 0;
echo   z-index: 1000;
echo   height: var(--header-height);
echo   display: flex;
echo   align-items: center;
echo }
echo .site-header .container {
echo   display: flex;
echo   justify-content: space-between;
echo   align-items: center;
echo }
echo .logo img {
echo   height: 40px; /* Adjust as needed */
echo   width: auto;
echo }
echo .main-nav {
echo   display: none; /* Hidden by default for mobile */
echo }
echo .main-nav ul {
echo   list-style: none;
echo   margin: 0;
echo   padding: 0;
echo   display: flex;
echo }
echo .main-nav li {
echo   margin-left: 20px;
echo }
echo .main-nav a {
echo   color: var(--heading-color);
echo   font-weight: bold;
echo   padding: 5px 0;
echo   display: block;
echo }
echo .mobile-menu-toggle {
echo   display: block; /* Visible by default for mobile */
echo   background: none;
echo   border: none;
echo   font-size: 1.5rem;
echo   cursor: pointer;
echo   color: var(--primary-color);
echo }
echo.
echo /* Buttons */
echo .btn {
echo   display: inline-block;
echo   padding: 10px 20px;
echo   border-radius: 5px;
echo   text-align: center;
echo   text-decoration: none;
echo   font-weight: 600;
echo   transition: background-color 0.3s ease, color 0.3s ease, border-color 0.3s ease;
echo   cursor: pointer;
echo }
echo .btn-primary {
echo   background-color: var(--primary-color);
echo   color: var(--white);
echo   border: 1px solid var(--primary-color);
echo }
echo .btn-primary:hover {
echo   background-color: #0056b3;
echo   border-color: #0056b3;
echo   text-decoration: none;
echo }
echo .btn-outline-primary {
echo   background-color: transparent;
echo   color: var(--primary-color);
echo   border: 1px solid var(--primary-color);
echo }
echo .btn-outline-primary:hover {
echo   background-color: var(--primary-color);
echo   color: var(--white);
echo   text-decoration: none;
echo }
echo.
echo /* Hero Section */
echo .hero-section {
echo   background: var(--light-bg) url('/assets/images/hero-bg.jpg') no-repeat center center/cover; /* Placeholder background */
echo   color: var(--heading-color);
echo   padding: 6rem 0;
echo   text-align: center;
echo }
echo .hero-section h1 {
echo   font-size: 3rem;
echo   margin-bottom: 1rem;
echo   color: var(--heading-color);
echo }
echo .hero-section p {
echo   font-size: 1.25rem;
echo   margin-bottom: 2rem;
echo   max-width: 800px;
echo   margin-left: auto;
echo   margin-right: auto;
echo }
echo.
echo /* Sections */
echo .section-padding {
echo   padding: 4rem 0;
echo }
echo .text-center {
echo   text-align: center;
echo }
echo.
echo /* Grid layout */
echo .grid-3-col {
echo   display: grid;
echo   grid-template-columns: 1fr;
echo   gap: 2rem;
echo }
echo.
echo /* Media Queries */
echo @media (min-width: 768px) {
echo   .mobile-menu-toggle {
echo     display: none;
echo   }
echo   .main-nav {
echo     display: block;
echo   }
echo   .hero-section {
echo     padding: 8rem 0;
echo   }
echo   .hero-section h1 {
echo     font-size: 4rem;
echo   }
echo   .grid-3-col {
echo     grid-template-columns: repeat(3, 1fr);
echo   }
echo }
) > critical.css

REM public/assets/css/main.css
(
echo /*! normalize.css v8.0.1 | MIT License | github.com/necolas/normalize.css */
echo /* See critical.css for included normalize.css styles */
echo.
echo /* Base Styles */
echo body {
echo   font-size: 1rem;
echo   line-height: 1.6;
echo   color: var(--text-color);
echo   background-color: var(--white);
echo }
echo.
echo h1, h2, h3, h4, h5, h6 {
echo   font-weight: 700;
echo }
echo.
echo /* Typography */
echo p {
echo   margin-bottom: 1rem;
echo }
echo.
echo ul, ol {
echo   margin-top: 0;
echo   margin-bottom: 1rem;
echo   padding-left: 20px;
echo }
echo.
echo /* Links */
echo a {
echo   text-decoration: none;
echo   color: var(--primary-color);
echo   transition: color 0.2s ease-in-out;
echo }
echo a:hover {
echo   color: #0056b3;
echo   text-decoration: underline;
echo }
echo.
echo /* Layout Utilities */
echo .section-padding {
echo   padding: 80px 0;
echo }
echo .text-center {
echo   text-align: center;
echo }
echo .mt-4 {
echo   margin-top: 1.5rem;
echo }
echo .mb-4 {
echo   margin-bottom: 1.5rem;
echo }
echo.
echo /* Header Styles (from critical.css, refined) */
echo .site-header {
echo   /* Styles defined in critical.css */
echo }
echo.
echo /* Navigation */
echo .main-nav {
echo   /* Styles defined in critical.css */
echo }
echo.
echo .main-nav li a {
echo   position: relative;
echo }
echo .main-nav li a::after {
echo   content: '';
echo   position: absolute;
echo   left: 0;
echo   bottom: -5px;
echo   width: 0;
echo   height: 2px;
echo   background-color: var(--primary-color);
echo   transition: width 0.3s ease;
echo }
echo .main-nav li a:hover::after,
echo .main-nav li a.active::after {
echo   width: 100%;
echo }
echo.
echo /* Footer */
echo .site-footer {
echo   background-color: var(--heading-color);
echo   color: var(--white);
echo   padding: 3rem 0;
echo   font-size: 0.9rem;
echo }
echo .site-footer .container {
echo   display: flex;
echo   flex-direction: column;
echo   gap: 2rem;
echo }
echo .footer-col {
echo   flex: 1;
echo }
echo .footer-col h3 {
echo   color: var(--white);
echo   font-size: 1.2rem;
echo   margin-bottom: 1rem;
echo }
echo .footer-col ul {
echo   list-style: none;
echo   padding: 0;
echo }
echo .footer-col ul li a {
echo   color: rgba(255,255,255,0.7);
echo   display: block;
echo   padding: 5px 0;
echo }
echo .footer-col ul li a:hover {
echo   color: var(--white);
echo   text-decoration: none;
echo }
echo .social-links a {
echo   color: var(--white);
echo   font-size: 1.5rem;
echo   margin-right: 15px;
echo   transition: color 0.2s ease;
echo }
echo .social-links a:hover {
echo   color: var(--primary-color);
echo }
echo .footer-bottom {
echo   text-align: center;
echo   margin-top: 2rem;
  border-top: 1px solid rgba(255,255,255,0.1);
echo   padding-top: 1.5rem;
echo }
echo.
echo /* Forms */
echo .form-group {
echo   margin-bottom: 1rem;
echo }
echo .form-group label {
echo   display: block;
echo   margin-bottom: 0.5rem;
echo   font-weight: 600;
echo }
echo .form-group input[type="text"],
echo .form-group input[type="email"],
echo .form-group input[type="tel"],
echo .form-group textarea {
echo   width: 100%;
echo   padding: 10px 15px;
echo   border: 1px solid #ced4da;
echo   border-radius: 5px;
echo   font-size: 1rem;
echo }
echo .form-group textarea {
echo   resize: vertical;
echo   min-height: 120px;
echo }
echo .form-group input:focus,
echo .form-group textarea:focus {
echo   outline: none;
echo   border-color: var(--primary-color);
echo   box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
echo }
echo.
echo /* Blog Post Card */
echo .blog-post-card {
echo   background-color: var(--white);
echo   border: 1px solid #e9ecef;
echo   border-radius: 8px;
echo   overflow: hidden;
echo   transition: box-shadow 0.3s ease;
echo }
echo .blog-post-card:hover {
echo   box-shadow: 0 5px 15px rgba(0,0,0,0.1);
echo }
echo .blog-post-card img {
echo   width: 100%;
echo   height: 200px;
echo   object-fit: cover;
echo }
echo .blog-post-card-content {
echo   padding: 1.5rem;
echo }
echo .blog-post-card h3 {
echo   font-size: 1.4rem;
echo   margin-bottom: 0.5rem;
echo }
echo .blog-post-card p {
echo   font-size: 0.95rem;
echo   color: var(--secondary-color);
echo }
echo .blog-post-card .read-more {
echo   display: inline-block;
echo   margin-top: 1rem;
echo   color: var(--primary-color);
echo   font-weight: 600;
echo }
echo.
echo /* Back to top button */
echo #back-to-top {
echo   display: none; /* Hidden by default */
echo   position: fixed;
echo   bottom: 30px;
echo   right: 30px;
echo   z-index: 99;
echo   border: none;
echo   outline: none;
echo   background-color: var(--primary-color);
echo   color: white;
echo   cursor: pointer;
echo   padding: 15px;
echo   border-radius: 50%;
echo   font-size: 18px;
echo   box-shadow: 0 2px 5px rgba(0,0,0,0.2);
echo   transition: background-color 0.3s ease;
echo }
echo #back-to-top:hover {
echo   background-color: #0056b3;
echo }
echo.
echo /* Responsive Adjustments */
echo @media (min-width: 768px) {
echo   .site-footer .container {
echo     flex-direction: row;
echo     justify-content: space-between;
echo   }
echo   .footer-col {
echo     max-width: 30%;
echo   }
echo }
) > main.css

cd ..\..
echo ^✓ CSS files created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 11: Creating JavaScript Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [12/27] Generating JavaScript files...
cd public\assets\js

REM public/assets/js/app.js
(
echo import { initMobileMenu } from './modules/mobileMenu.js';
echo import { initSmoothScroll } from './modules/smoothScroll.js';
echo import { initBackToTop } from './modules/backToTop.js';
echo import { handleFormFocus } from './utils/helpers.js';
echo.
echo document.addEventListener('DOMContentLoaded', () => {
echo   // Initialize Mobile Menu
echo   initMobileMenu();
echo.
echo   // Initialize Smooth Scrolling for internal links
echo   initSmoothScroll();
echo.
echo   // Initialize Back to Top button
echo   initBackToTop();
echo.
echo   // Handle form focus/blur states (optional, can be done with CSS too)
echo   handleFormFocus();
echo.
echo   console.log('App.js initialized.');
echo });
) > app.js

REM public/assets/js/lazy-loading.js
(
echo // public/assets/js/lazy-loading.js
echo // Intersection Observer-based lazy loading for images and iframes
echo.
echo const lazyLoad = () => {
echo   const lazyElements = document.querySelectorAll('img[data-src], iframe[data-src]');
echo.
echo   if ('IntersectionObserver' in window) {
echo     const lazyObserver = new IntersectionObserver((entries, observer) => {
echo       entries.forEach((entry) => {
echo         if (entry.isIntersecting) {
echo           const element = entry.target;
echo           const src = element.getAttribute('data-src');
echo           if (src) {
echo             element.src = src;
echo             element.removeAttribute('data-src');
echo             if (element.tagName === 'IMG' && element.getAttribute('data-srcset')) {
echo               element.srcset = element.getAttribute('data-srcset');
echo               element.removeAttribute('data-srcset');
echo             }
echo             if (element.tagName === 'IFRAME' && element.getAttribute('data-title')) {
echo               element.title = element.getAttribute('data-title');
echo               element.removeAttribute('data-title');
echo             }
echo             console.log(`Lazy loaded: ${src}`);
echo             observer.unobserve(element);
echo           }
echo         }
echo       });
echo     }, {
echo       rootMargin: '0px 0px 200px 0px' // Load images when they are 200px from viewport
echo     });
echo.
echo     lazyElements.forEach((element) => {
echo       lazyObserver.observe(element);
echo     });
echo   } else {
echo     // Fallback for browsers that do not support Intersection Observer
echo     console.warn('Intersection Observer not supported. Falling back to immediate load.');
echo     lazyElements.forEach((element) => {
echo       const src = element.getAttribute('data-src');
echo       if (src) {
echo         element.src = src;
echo         element.removeAttribute('data-src');
echo         if (element.tagName === 'IMG' && element.getAttribute('data-srcset')) {
echo           element.srcset = element.getAttribute('data-srcset');
echo           element.removeAttribute('data-srcset');
echo         }
echo         if (element.tagName === 'IFRAME' && element.getAttribute('data-title')) {
echo           element.title = element.getAttribute('data-title');
echo           element.removeAttribute('data-title');
echo         }
echo       }
echo     });
echo   }
echo };
echo.
echo export { lazyLoad };
) > lazy-loading.js

REM public/assets/js/cookie-consent.js
(
echo // public/assets/js/cookie-consent.js
echo // Handles cookie consent banner and integrates with GTM Consent Mode
echo.
echo const COOKIE_NAME = 'yourcompany_cookie_consent';
echo const COOKIE_EXPIRATION_DAYS = 365;
echo.
echo /**
echo  * Sets a cookie with a given name, value, and expiration days.
echo  * @param {string} name - The name of the cookie.
echo  * @param {string} value - The value of the cookie.
echo  * @param {number} days - The number of days until the cookie expires.
echo  */
echo const setCookie = (name, value, days) => {
echo   const date = new Date();
echo   date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
echo   const expires = `expires=${date.toUTCString()}`;
echo   document.cookie = `${name}=${value};${expires};path=/;SameSite=Lax`;
echo };
echo.
echo /**
echo  * Gets the value of a cookie by name.
echo  * @param {string} name - The name of the cookie.
echo  * @returns {string|null} The cookie value or null if not found.
echo  */
echo const getCookie = (name) => {
echo   const nameEQ = `${name}=`;
echo   const ca = document.cookie.split(';');
echo   for (let i = 0; i < ca.length; i += 1) {
echo     let c = ca[i];
echo     while (c.charAt(0) === ' ') c = c.substring(1, c.length);
echo     if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length, c.length);
echo   }
echo   return null;
echo };
echo.
echo /**
echo  * Updates GTM Consent Mode settings based on user preferences.
echo  * @param {string} analyticsConsent - 'granted' or 'denied'
echo  * @param {string} marketingConsent - 'granted' or 'denied'
echo  */
echo const updateGtmConsent = (analyticsConsent, marketingConsent) => {
echo   window.dataLayer = window.dataLayer || [];
echo   window.dataLayer.push('consent', 'update', {
echo     ad_storage: marketingConsent,
echo     analytics_storage: analyticsConsent,
echo     personalization_storage: marketingConsent, // Assuming personalization is tied to marketing
echo     functionality_storage: 'granted', // Essential cookies always granted
echo     security_storage: 'granted', // Essential cookies always granted
echo   });
echo   console.log('[Cookie Consent] GTM Consent updated:', { analytics_storage: analyticsConsent, ad_storage: marketingConsent });
echo };
echo.
echo /**
echo  * Handles user's cookie preferences and hides the banner.
echo  * @param {Object} preferences - An object indicating consent for different cookie types.
echo  * @param {boolean} preferences.analytics - User consent for analytics cookies.
echo  * @param {boolean} preferences.marketing - User consent for marketing cookies.
echo  */
echo const handleConsent = (preferences) => {
echo   const consentValue = JSON.stringify(preferences);
echo   setCookie(COOKIE_NAME, consentValue, COOKIE_EXPIRATION_DAYS);
echo.
echo   const analyticsConsent = preferences.analytics ? 'granted' : 'denied';
echo   const marketingConsent = preferences.marketing ? 'granted' : 'denied';
echo   updateGtmConsent(analyticsConsent, marketingConsent);
echo.
echo   // Hide the banner
echo   const cookieBanner = document.getElementById('cookie-consent-banner');
echo   if (cookieBanner) {
echo     cookieBanner.classList.add('hidden');
echo     cookieBanner.setAttribute('aria-hidden', 'true');
echo   }
echo   console.log('[Cookie Consent] Preferences saved:', preferences);
echo };
echo.
echo /**
echo  * Initializes the cookie consent banner.
echo  */
echo const initCookieConsent = () => {
echo   const existingConsent = getCookie(COOKIE_NAME);
echo   const cookieBanner = document.getElementById('cookie-consent-banner');
echo.
echo   if (existingConsent) {
echo     const preferences = JSON.parse(existingConsent);
echo     const analyticsConsent = preferences.analytics ? 'granted' : 'denied';
echo     const marketingConsent = preferences.marketing ? 'granted' : 'denied';
echo     updateGtmConsent(analyticsConsent, marketingConsent); // Initialize GTM with existing consent
echo     if (cookieBanner) {
echo       cookieBanner.classList.add('hidden');
echo       cookieBanner.setAttribute('aria-hidden', 'true');
echo     }
echo     console.log('[Cookie Consent] Existing consent found:', preferences);
echo   } else {
echo     // Default to denied and show banner
echo     updateGtmConsent('denied', 'denied'); // Default to denied for GTM
echo     if (cookieBanner) {
echo       cookieBanner.classList.remove('hidden');
echo       cookieBanner.setAttribute('aria-hidden', 'false');
echo.
echo       const acceptAllBtn = cookieBanner.querySelector('#accept-all-cookies');
echo       const rejectAllBtn = cookieBanner.querySelector('#reject-all-cookies');
echo       const manageSettingsBtn = cookieBanner.querySelector('#manage-cookie-settings');
echo       const saveSettingsBtn = cookieBanner.querySelector('#save-cookie-settings');
echo       const settingsModal = document.getElementById('cookie-settings-modal');
echo       const closeSettingsModalBtn = settingsModal ? settingsModal.querySelector('.close-modal') : null;
echo.
echo       if (acceptAllBtn) {
echo         acceptAllBtn.addEventListener('click', () => {
echo           handleConsent({ analytics: true, marketing: true });
echo         });
echo       }
echo       if (rejectAllBtn) {
echo         rejectAllBtn.addEventListener('click', () => {
echo           handleConsent({ analytics: false, marketing: false });
echo         });
echo       }
echo       if (manageSettingsBtn && settingsModal) {
echo         manageSettingsBtn.addEventListener('click', () => {
echo           settingsModal.classList.remove('hidden');
echo           settingsModal.setAttribute('aria-hidden', 'false');
echo           cookieBanner.classList.add('hidden'); // Hide main banner when settings open
echo         });
echo       }
echo       if (closeSettingsModalBtn && settingsModal) {
echo         closeSettingsModalBtn.addEventListener('click', () => {
echo           settingsModal.classList.add('hidden');
echo           settingsModal.setAttribute('aria-hidden', 'true');
echo           cookieBanner.classList.remove('hidden'); // Show main banner if user closes settings without saving
echo         });
echo       }
echo       if (saveSettingsBtn && settingsModal) {
echo         saveSettingsBtn.addEventListener('click', () => {
echo           const analyticsChecked = settingsModal.querySelector('#cookie-analytics').checked;
echo           const marketingChecked = settingsModal.querySelector('#cookie-marketing').checked;
echo           handleConsent({ analytics: analyticsChecked, marketing: marketingChecked });
echo           settingsModal.classList.add('hidden');
echo           settingsModal.setAttribute('aria-hidden', 'true');
echo         });
echo       }
echo     }
echo     console.log('[Cookie Consent] No consent found, showing banner.');
echo   }
echo };
echo.
echo export { initCookieConsent, getCookie, setCookie, updateGtmConsent };
) > cookie-consent.js

REM public/assets/js/analytics.js
(
echo // public/assets/js/analytics.js
echo // Google Analytics 4 (GA4) integration wrapper
echo import { getCookie } from './cookie-consent.js';
echo import { pushGtmEvent } from './gtm.js';
echo.
echo const GTM_ID = 'GTM-XXXXXXX'; // Placeholder GTM ID, should be loaded from config
echo.
echo /**
echo  * Checks if analytics cookies are granted.
echo  * @returns {boolean} True if analytics consent is granted, false otherwise.
echo  */
echo const hasAnalyticsConsent = () => {
echo   const consent = getCookie('yourcompany_cookie_consent');
echo   if (consent) {
echo     const preferences = JSON.parse(consent);
echo     return preferences.analytics === true;
echo   }
echo   return false;
echo };
echo.
echo /**
echo  * Tracks a page view event for GA4.
echo  * This is typically handled by GTM's Page View trigger, but can be manually called if needed.
echo  */
echo const trackPageView = () => {
echo   if (hasAnalyticsConsent()) {
echo     pushGtmEvent('page_view', {
echo       page_path: window.location.pathname + window.location.search,
echo       page_location: window.location.href,
echo       page_title: document.title,
echo     });
echo     console.log('[Analytics] Page view tracked:', document.title);
echo   } else {
echo     console.warn('[Analytics] Page view not tracked: Analytics consent denied.');
echo   }
echo };
echo.
echo /**
echo  * Tracks a custom event for GA4.
echo  * @param {string} eventName - The name of the event (e.g., 'button_click', 'form_submit').
echo  * @param {Object} eventParameters - An object containing event parameters (e.g., { category: 'CTA', label: 'Hero Button' }).
echo  */
echo const trackEvent = (eventName, eventParameters = {}) => {
echo   if (hasAnalyticsConsent()) {
echo     pushGtmEvent(eventName, eventParameters);
echo     console.log(`[Analytics] Event tracked: ${eventName}`, eventParameters);
echo   } else {
echo     console.warn(`[Analytics] Event '${eventName}' not tracked: Analytics consent denied.`);
echo   }
echo };
echo.
echo /**
echo  * Initializes GA4 (if GTM is not used for primary setup).
echo  * Typically, GTM handles the GA4 script loading and initial page_view.
echo  * This function ensures gtag is available if GTM is correctly configured.
echo  */
echo const initGA4 = () => {
echo   // If GTM is present, it will handle GA4 loading via its configuration.
echo   // We primarily use dataLayer.push for events through GTM.
echo   if (typeof window.dataLayer !== 'undefined' && typeof window.gtag === 'function') {
echo     console.log('[Analytics] Google Analytics 4 (via GTM) is ready.');
echo     // Initial page view is usually automatically sent by GTM
echo     // trackPageView(); // Uncomment if GTM is not configured to send initial page_view
echo   } else if (GTM_ID !== 'GTM-XXXXXXX') { // Only warn if a real GTM ID is set
echo     console.warn('[Analytics] GTM or gtag not found. GA4 might not be initialized correctly.');
echo   }
echo };
echo.
echo document.addEventListener('DOMContentLoaded', () => {
echo   // GTM init is handled in includes/google-tag-manager.php.
echo   // This simply ensures the GTM dataLayer is available and logs readiness.
echo   initGA4();
echo });
echo.
echo export { trackPageView, trackEvent };
) > analytics.js

REM public/assets/js/web-vitals.js
(
echo // public/assets/js/web-vitals.js
echo // Tracks Core Web Vitals (LCP, FID, CLS) and sends to analytics
echo // Requires 'web-vitals' library (npm install web-vitals)
echo import { getLCP, getFID, getCLS } from 'web-vitals';
echo import { trackEvent } from './analytics.js';
echo.
echo /**
echo  * Sends Core Web Vitals data to analytics.
echo  * @param {Object} metric - The web vital metric object.
echo  */
echo const sendToAnalytics = (metric) => {
echo   const { name, delta, id } = metric;
echo   trackEvent('web_vitals', {
echo     metric_name: name,
echo     metric_value: delta,
echo     metric_id: id,
echo     // You can add more context like page_path, etc.
echo     page_path: window.location.pathname,
echo   });
echo   console.log(`[Web Vitals] Metric sent: ${name} = ${delta}`);
echo };
echo.
echo /**
echo  * Initializes tracking for all Core Web Vitals.
echo  */
echo const initWebVitalsTracking = () => {
echo   if (typeof getLCP === 'function' && typeof getFID === 'function' && typeof getCLS === 'function') {
echo     // Ensure analytics consent is checked inside trackEvent
echo     getLCP(sendToAnalytics);
echo     getFID(sendToAnalytics);
echo     getCLS(sendToAnalytics);
echo     console.log('[Web Vitals] Core Web Vitals tracking initialized.');
echo   } else {
echo     console.warn('[Web Vitals] "web-vitals" library functions not found. Web Vitals tracking not initialized.');
echo     console.warn('Please ensure "web-vitals" is installed and imported correctly.');
echo   }
echo };
echo.
echo document.addEventListener('DOMContentLoaded', initWebVitalsTracking);
echo.
echo export { initWebVitalsTracking };
) > web-vitals.js

REM public/assets/js/performance.js (This was not explicitly detailed, creating a simple placeholder)
(
echo // public/assets/js/performance.js
echo // Basic performance monitoring and logging for browser
echo.
echo const measurePageLoadTime = () => {
echo   if (performance && performance.timing) {
echo     const { navigationStart, domContentLoadedEventEnd, loadEventEnd } = performance.timing;
echo     const loadTime = loadEventEnd - navigationStart;
echo     const domReadyTime = domContentLoadedEventEnd - navigationStart;
echo.
echo     if (loadTime > 0) {
echo       console.log(`[Performance] Page Load Time: ${loadTime}ms`);
echo     }
echo     if (domReadyTime > 0) {
echo       console.log(`[Performance] DOM Ready Time: ${domReadyTime}ms`);
echo     }
echo   } else {
echo     console.warn('[Performance] Performance Timing API not available.');
echo   }
echo };
echo.
echo document.addEventListener('DOMContentLoaded', measurePageLoadTime);
echo window.addEventListener('load', () => {
echo   // Ensure all resources are loaded
echo   console.log('[Performance] Window Load event fired.');
echo });
) > performance.js

REM public/assets/js/gtm.js
(
echo // public/assets/js/gtm.js
echo // Helper functions for Google Tag Manager dataLayer interaction
echo.
echo /**
echo  * Pushes an event to the Google Tag Manager dataLayer.
echo  * Ensures dataLayer is initialized.
echo  * @param {string} eventName - The name of the event to push.
echo  * @param {Object} [eventData={}] - Optional data object to associate with the event.
echo  */
echo const pushGtmEvent = (eventName, eventData = {}) => {
echo   window.dataLayer = window.dataLayer || [];
echo   window.dataLayer.push({
echo     event: eventName,
echo     ...eventData,
echo   });
echo   console.log(`[GTM] Event pushed: ${eventName}`, eventData);
echo };
echo.
echo /**
echo  * Pushes general data to the Google Tag Manager dataLayer.
echo  * This can be used for non-event data, like user properties or page information.
echo  * @param {Object} data - The data object to push.
echo  */
echo const pushGtmData = (data) => {
echo   window.dataLayer = window.dataLayer || [];
echo   window.dataLayer.push(data);
echo   console.log('[GTM] Data pushed:', data);
echo };
echo.
echo /**
echo  * Sets a GTM-compatible user property.
echo  * @param {string} key - The key for the user property.
echo  * @param {*} value - The value for the user property.
echo  */
echo const setGtmUserProperty = (key, value) => {
echo   window.dataLayer = window.dataLayer || [];
echo   window.dataLayer.push({
echo     event: 'set_user_property',
echo     [key]: value,
echo   });
echo   console.log(`[GTM] User property set: ${key}=${value}`);
echo };
echo.
echo export { pushGtmEvent, pushGtmData, setGtmUserProperty };
) > gtm.js

REM public/assets/js/conversion-tracking.js
(
echo // public/assets/js/conversion-tracking.js
echo // Handles various conversion goal tracking via GTM
echo import { trackEvent } from './analytics.js';
echo.
echo /**
echo  * Tracks a form submission conversion.
echo  * @param {string} formId - The ID of the submitted form.
echo  * @param {string} formName - A descriptive name for the form (e.g., 'Contact Form').
echo  * @param {Object} [additionalData={}] - Any additional data to send with the event.
echo  */
echo const trackFormSubmission = (formId, formName, additionalData = {}) => {
echo   trackEvent('form_submission', {
echo     event_category: 'Conversion',
echo     event_label: `Form: ${formName} Submitted`,
echo     form_id: formId,
echo     form_name: formName,
echo     ...additionalData,
echo   });
echo   console.log(`[Conversion] Form submission tracked: ${formName}`);
echo };
echo.
echo /**
echo  * Tracks a button click conversion.
echo  * @param {HTMLElement} buttonElement - The button element that was clicked.
echo  * @param {string} buttonText - The text content or aria-label of the button.
echo  * @param {Object} [additionalData={}] - Any additional data to send with the event.
echo  */
echo const trackButtonClick = (buttonElement, buttonText, additionalData = {}) => {
echo   trackEvent('button_click', {
echo     event_category: 'Engagement',
echo     event_label: `Button: ${buttonText} Clicked`,
echo     button_id: buttonElement.id || 'N/A',
echo     button_class: buttonElement.className || 'N/A',
echo     ...additionalData,
echo   });
echo   console.log(`[Conversion] Button click tracked: ${buttonText}`);
echo };
echo.
echo /**
echo  * Tracks scroll depth conversion.
echo  * This can be configured to trigger at certain percentages (e.g., 25%%, 50%%, 75%%, 100%%).
echo  * Uses a simple throttle to prevent excessive event firing.
echo  */
echo const initScrollDepthTracking = () => {
echo   const scrollThresholds = [25, 50, 75, 100]; // Percentages to track
echo   const trackedThresholds = new Set();
echo   let lastScrollY = window.scrollY;
echo   let ticking = false;
echo.
echo   const updateScrollDepth = () => {
echo     const scrollHeight = document.documentElement.scrollHeight - window.innerHeight;
echo     if (scrollHeight === 0) return; // Prevent division by zero
echo.
echo     const scrollPercentage = Math.floor((window.scrollY / scrollHeight) * 100);
echo.
echo     scrollThresholds.forEach((threshold) => {
echo       if (scrollPercentage >= threshold && !trackedThresholds.has(threshold)) {
echo         trackEvent('scroll_depth', {
echo           event_category: 'Engagement',
echo           event_label: `Scrolled ${threshold}%% of page`,
echo           scroll_percentage: threshold,
echo           page_path: window.location.pathname,
echo         });
echo         trackedThresholds.add(threshold);
echo       }
echo     });
echo   };
echo.
echo   const onScroll = () => {
echo     lastScrollY = window.scrollY;
echo     if (!ticking) {
echo       window.requestAnimationFrame(() => {
echo         updateScrollDepth();
echo         ticking = false;
echo       });
echo       ticking = true;
echo     }
echo   };
echo.
echo   window.addEventListener('scroll', onScroll, { passive: true });
echo   // Initial check in case user loads page already scrolled
echo   document.addEventListener('DOMContentLoaded', updateScrollDepth);
echo   console.log('[Conversion] Scroll depth tracking initialized.');
echo };
echo.
echo document.addEventListener('DOMContentLoaded', () => {
echo   // Example: Track contact form submission
echo   const contactForm = document.getElementById('contactForm');
echo   if (contactForm) {
echo     contactForm.addEventListener('submit', () => {
echo       trackFormSubmission('contactForm', 'Contact Form');
echo     });
echo   }
echo.
echo   // Example: Track hero CTA button click
echo   const heroCtaButton = document.querySelector('.hero-section .btn-primary');
echo   if (heroCtaButton) {
echo     heroCtaButton.addEventListener('click', () => {
echo       trackButtonClick(heroCtaButton, 'Hero Contact CTA', { placement: 'Hero Section' });
echo     });
echo   }
echo.
echo   // Initialize scroll depth tracking
echo   initScrollDepthTracking();
echo });
echo.
echo export { trackFormSubmission, trackButtonClick, initScrollDepthTracking };
) > conversion-tracking.js

REM public/assets/js/search.js
(
echo // public/assets/js/search.js
echo // Internal search functionality with autocomplete suggestions
echo import { debounce } from './utils/helpers.js';
echo.
echo const searchInput = document.getElementById('search-input');
echo const searchResultsContainer = document.getElementById('search-results');
echo const searchSuggestionsContainer = document.getElementById('search-suggestions');
echo.
echo /**
echo  * Fetches search results from a simulated API endpoint.
echo  * In a real application, this would call a backend API.
echo  * @param {string} query - The search query.
echo  * @returns {Promise<Array>} A promise that resolves to an array of search results.
echo  */
echo const fetchSearchResults = async (query) => {
echo   if (!query.trim()) {
echo     return [];
echo   }
echo   try {
echo     // Simulate API call to includes/search/search-engine.php or a JSON file
echo     const response = await fetch(`/includes/search/search-engine.php?q=${encodeURIComponent(query)}`);
echo     if (!response.ok) {
echo       throw new Error(`HTTP error! status: ${response.status}`);
echo     }
echo     return await response.json();
echo   } catch (error) {
echo     console.error('Error fetching search results:', error);
echo     return [];
echo   }
echo };
echo.
echo /**
echo  * Fetches search suggestions from a simulated API endpoint.
echo  * @param {string} query - The search query for suggestions.
echo  * @returns {Promise<Array>} A promise that resolves to an array of suggestion strings.
echo  */
echo const fetchSearchSuggestions = async (query) => {
echo   if (!query.trim() || query.length < 2) { // Only suggest for queries >= 2 chars
echo     return [];
echo   }
echo   try {
echo     const response = await fetch(`/includes/search/search-suggestions.php?q=${encodeURIComponent(query)}`);
echo     if (!response.ok) {
echo       throw new Error(`HTTP error! status: ${response.status}`);
echo     }
echo     const suggestions = await response.json();
echo     return suggestions.slice(0, 5); // Limit to 5 suggestions
echo   } catch (error) {
echo     console.error('Error fetching search suggestions:', error);
echo     return [];
echo   }
echo };
echo.
echo /**
echo  * Renders search results in the UI.
echo  * @param {Array} results - An array of search result objects.
echo  */
echo const renderSearchResults = (results) => {
echo   if (!searchResultsContainer) return;
echo.
echo   searchResultsContainer.innerHTML = '';
echo   if (results.length === 0) {
echo     searchResultsContainer.innerHTML = '<p class="no-results">Geen resultaten gevonden.</p>';
echo     return;
echo   }
echo.
echo   const ul = document.createElement('ul');
echo   results.forEach((result) => {
echo     const li = document.createElement('li');
echo     li.innerHTML = `
echo       <h3><a href="${result.url}">${result.title}</a></h3>
echo       <p>${result.snippet}...</p>
echo     `;
echo     ul.appendChild(li);
echo   });
echo   searchResultsContainer.appendChild(ul);
echo };
echo.
echo /**
echo  * Renders search suggestions in the UI.
echo  * @param {Array} suggestions - An array of suggestion strings.
echo  */
echo const renderSearchSuggestions = (suggestions) => {
echo   if (!searchSuggestionsContainer) return;
echo.
echo   searchSuggestionsContainer.innerHTML = '';
echo   if (suggestions.length === 0) {
echo     searchSuggestionsContainer.classList.add('hidden');
echo     return;
echo   }
echo.
echo   const ul = document.createElement('ul');
echo   suggestions.forEach((suggestion) => {
echo     const li = document.createElement('li');
echo     li.classList.add('suggestion-item');
echo     li.textContent = suggestion;
echo     li.addEventListener('click', () => {
echo       if (searchInput) {
echo         searchInput.value = suggestion;
echo         searchSuggestionsContainer.classList.add('hidden');
echo         performSearch(suggestion);
echo       }
echo     });
echo     ul.appendChild(li);
echo   });
echo   searchSuggestionsContainer.appendChild(ul);
echo   searchSuggestionsContainer.classList.remove('hidden');
echo };
echo.
echo /**
echo  * Performs the main search operation.
echo  * @param {string} query - The search query.
echo  */
echo const performSearch = async (query) => {
echo   const results = await fetchSearchResults(query);
echo   renderSearchResults(results);
echo };
echo.
echo /**
echo  * Event handler for input changes with debouncing for suggestions.
echo  */
echo const handleSearchInput = debounce(async (event) => {
echo   const query = event.target.value;
echo   if (query.length > 0) {
echo     const suggestions = await fetchSearchSuggestions(query);
echo     renderSearchSuggestions(suggestions);
echo   } else {
echo     if (searchSuggestionsContainer) {
echo       searchSuggestionsContainer.classList.add('hidden');
echo     }
echo     if (searchResultsContainer) {
echo       searchResultsContainer.innerHTML = '';
echo     }
echo   }
echo }, 300); // Debounce for 300ms
echo.
echo document.addEventListener('DOMContentLoaded', () => {
echo   if (searchInput) {
echo     searchInput.addEventListener('input', handleSearchInput);
echo     searchInput.addEventListener('focus', handleSearchInput); // Show suggestions on focus if query exists
echo     searchInput.addEventListener('blur', () => {
echo       // Delay hiding suggestions to allow click events on them
echo       setTimeout(() => {
echo         if (searchSuggestionsContainer) {
echo           searchSuggestionsContainer.classList.add('hidden');
echo         }
echo       }, 100);
echo     });
echo.
echo     // Check for a query parameter in the URL on page load (e.g., from 404 page)
echo     const urlParams = new URLSearchParams(window.location.search);
echo     const initialQuery = urlParams.get('q') || urlParams.get('s');
echo     if (initialQuery) {
echo       searchInput.value = initialQuery;
echo       performSearch(initialQuery);
echo     }
echo   }
echo.
echo   // Handle search form submission (if there's a dedicated search form)
echo   const searchForm = document.getElementById('search-form'); // Assuming a search form exists
echo   if (searchForm) {
echo     searchForm.addEventListener('submit', (event) => {
echo       event.preventDefault();
echo       if (searchInput && searchInput.value.trim()) {
echo         performSearch(searchInput.value.trim());
echo       }
echo     });
echo   }
echo });
) > search.js

cd ..\..
echo ^✓ JavaScript files created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 12: Creating Image Placeholders
echo ════════════════════════════════════════════════════════════════
echo.

echo [13/27] Creating image placeholders...
cd public\assets\images

echo. > logo.svg
echo. > og-image.jpg
echo. > hero-bg.jpg REM Add a placeholder image here for the hero section background

cd favicons
echo. > favicon.ico
echo. > favicon-16x16.png
echo. > favicon-32x32.png
echo. > apple-touch-icon.png
echo. > android-chrome-192x192.png
echo. > android-chrome-512x512.png
echo. > mstile-144x144.png
echo. > safari-pinned-tab.svg
echo. > maskable_icon.png REM Placeholder for PWA maskable icon
cd ..

cd blog
echo. > .gitkeep
REM Add a placeholder blog image here for testing:
echo. > sample-blog-post-image.jpg
cd ..

cd ..
echo ^✓ Image placeholders created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 13: Creating Font Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [14/27] Creating font placeholders...
cd public\assets\fonts

echo. > inter-var.woff2 REM Placeholder for a variable font file

cd ..\..
echo ^✓ Font files created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 14: Creating Upload Directories
echo ════════════════════════════════════════════════════════════════
echo.

echo [15/27] Setting up upload directories...
cd public\assets\uploads

echo. > .gitkeep

cd optimized
echo. > .gitkeep
cd ..

cd ..\..
echo ^✓ Upload directories created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 15: Creating Page Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [16/27] Generating page files...
cd public\pages

REM public/pages/contact.php
(
echo ^<?php
echo require_once '../../includes/config.php';
echo require_once '../../includes/functions.php';
echo require_once '../../includes/security/csrf-token.php';
echo require_once '../../includes/security/input-validation.php';
echo require_once '../../includes/forms/honeypot.php';
echo require_once '../../includes/forms/contact-handler.php';
echo.
echo // Define page-specific variables
echo $pageTitle = "Contact - YourCompany BV";
echo $pageDescription = "Neem contact op met YourCompany BV voor al uw vragen, projectaanvragen of support. Ons team staat voor u klaar.";
echo $pageKeywords = "contact, YourCompany BV, vragen, support, Amsterdam";
echo $pageCanonical = SITE_URL . '/pages/contact.php';
echo $ogImage = SITE_URL . '/assets/images/og-image.jpg';
echo.
echo // Set security headers
echo App\Security\Headers::setAllHeaders();
echo.
echo $form_success = false;
echo $form_errors = [];
echo $form_data = [
echo     'name' => '',
echo     'email' => '',
echo     'phone' => '',
echo     'subject' => '',
echo     'message' => ''
echo ];
echo.
echo if (^$_SERVER['REQUEST_METHOD'] === 'POST') {
echo     // Honeypot check
echo     if (App\Forms\Honeypot::checkHoneypotField('website')) {
echo         // Log as bot, but act like success to prevent enumeration
echo         error_log("Honeypot triggered from IP: " . ^$_SERVER['REMOTE_ADDR']);
echo         $form_success = true;
echo     } else {
echo         // CSRF Token validation
echo         if (!App\Security\CsrfToken::validate_csrf_token(^$_POST['csrf_token'] ?? '')) {
echo             $form_errors[] = 'Ongeldige CSRF token. Probeer het opnieuw.';
echo         } else {
echo             // Sanitize and validate input
echo             $name = App\Security\Sanitizer::sanitize_string(^$_POST['name'] ?? '');
echo             $email = App\Security\Sanitizer::sanitize_email(^$_POST['email'] ?? '');
echo             $phone = App\Security\Sanitizer::sanitize_string(^$_POST['phone'] ?? ''); // Simple string sanitize, more complex validation below
echo             $subject = App\Security\Sanitizer::sanitize_string(^$_POST['subject'] ?? '');
echo             $message = App\Security\Sanitizer::sanitize_html(^$_POST['message'] ?? '');
echo.
echo             // Store sanitized data back for repopulation
echo             $form_data = compact('name', 'email', 'phone', 'subject', 'message');
echo.
echo             if (empty($name)) {
echo                 $form_errors[] = 'Naam is verplicht.';
echo             } elseif (!App\Security\InputValidation::validate_min_length($name, 2)) {
echo                 $form_errors[] = 'Naam is te kort.';
echo             }
echo.
echo             if (empty($email)) {
echo                 $form_errors[] = 'E-mailadres is verplicht.';
echo             } elseif (!App\Security\InputValidation::validate_email($email)) {
echo                 $form_errors[] = 'Ongeldig e-mailadres.';
echo             }
echo.
echo             if (!empty($phone) && !App\Security\InputValidation::validate_phone($phone)) {
echo                 $form_errors[] = 'Ongeldig telefoonnummer.';
echo             }
echo.
echo             if (empty($subject)) {
echo                 $form_errors[] = 'Onderwerp is verplicht.';
echo             } elseif (!App\Security\InputValidation::validate_min_length($subject, 5)) {
echo                 $form_errors[] = 'Onderwerp is te kort.';
echo             }
echo.
echo             if (empty($message)) {
echo                 $form_errors[] = 'Bericht is verplicht.';
echo             } elseif (!App\Security\InputValidation::validate_min_length($message, 10)) {
echo                 $form_errors[] = 'Bericht is te kort.';
echo             }
echo.
echo             // If no validation errors, process the form
echo             if (empty($form_errors)) {
echo                 if (App\Forms\ContactHandler::handleSubmission($form_data)) {
echo                     $form_success = true;
echo                     // Clear form data on successful submission
echo                     $form_data = [
echo                         'name' => '',
echo                         'email' => '',
echo                         'phone' => '',
echo                         'subject' => '',
echo                         'message' => ''
echo                     ];
echo                 } else {
echo                     $form_errors[] = 'Er is een fout opgetreden bij het verzenden van uw bericht. Probeer het later opnieuw.';
echo                 }
echo             }
echo         }
echo     }
echo }
echo.
echo $csrf_token = App\Security\CsrfToken::generate_csrf_token();
echo ?^>
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<?php include_once '../../includes/head.php'; ?^>
echo ^<body^>
echo   ^<?php include_once '../../includes/header.php'; ?^>
echo.
echo   ^<main id="main-content"^>
echo     ^<section class="section-padding"^>
echo       ^<div class="container"^>
echo         ^<h1 class="text-center"^>Neem Contact Op^</h1^>
echo         ^<p class="text-center lead mb-4"^>Heeft u vragen, wilt u een project bespreken of heeft u ondersteuning nodig? Vul het onderstaande formulier in, of gebruik onze contactgegevens.^</p^>
echo.
echo         ^<div class="row g-4"^>
echo           ^<div class="col-md-6"^>
echo             ^<div class="contact-info-block p-4 bg-light rounded"^>
echo               ^<h3^>Direct Contact^</h3^>
echo               ^<p^>^<strong^>Adres:^</strong^> ^<?php echo ADDRESS; ?^>^</p^>
echo               ^<p^>^<strong^>Telefoon:^</strong^> ^<a href="tel:^<?php echo PHONE; ?^>"^>^<?php echo PHONE; ?^>^</a^>^</p^>
echo               ^<p^>^<strong^>E-mail:^</strong^> ^<a href="mailto:^<?php echo EMAIL; ?^>"^>^<?php echo EMAIL; ?^>^</a^>^</p^>
echo               ^<h3 class="mt-4"^>Openingstijden^</h3^>
echo               ^<p^>Maandag - Vrijdag: 09:00 - 17:00^</p^>
echo               ^<p^>Zaterdag - Zondag: Gesloten^</p^>
echo.
echo               ^<h3 class="mt-4"^>Locatie^</h3^>
echo               ^<!-- Google Maps Embed Placeholder -->
echo               ^<div class="map-container"^>
echo                 ^<iframe
echo                   src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2435.836814234057!2d4.896944615967664!3d52.37021577977467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c609c11874b29f%%3A0x6b4c1a5d7c8e9b0!2sHoofdstraat%%20123%2C%%201234%%20AB%%20Amsterdam!5e0!3m2!1sen!2snl!4v1678912345678!5m2!1sen!2snl"
echo                   width="100%%" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"
echo                   title="Locatie van YourCompany BV in Amsterdam"^>
echo                 ^</iframe^>
echo               ^</div^>
echo             ^</div^>
echo           ^</div^>
echo.
echo           ^<div class="col-md-6"^>
echo             ^<div class="contact-form-block p-4 bg-light rounded"^>
echo               ^<h3^>Stuur ons een bericht^</h3^>
echo.
echo               ^<?php if ($form_success): ?^>
echo                 ^<div class="alert alert-success"^>Bedankt voor uw bericht! We nemen zo spoedig mogelijk contact met u op.^</div^>
echo               ^<?php endif; ?^>
echo.
echo               ^<?php if (!empty($form_errors)): ?^>
echo                 ^<div class="alert alert-danger"^>
echo                   ^<ul^>
echo                     ^<?php foreach ($form_errors as $error): ?^>
echo                       ^<li^>^<?php echo htmlspecialchars($error); ?^>^</li^>
echo                     ^<?php endforeach; ?^>
echo                   ^</ul^>
echo                 ^</div^>
echo               ^<?php endif; ?^>
echo.
echo               ^<form id="contactForm" action="/pages/contact.php" method="POST"^>
echo                 ^<?php echo App\Security\CsrfToken::get_csrf_input($csrf_token); ?^>
echo                 ^<?php echo App\Forms\Honeypot::generateHoneypotField('website'); ?^>
echo                 ^<div class="form-group"^>
echo                   ^<label for="name"^>Naam:^</label^>
echo                   ^<input type="text" id="name" name="name" class="form-control" value="^<?php echo htmlspecialchars($form_data['name']); ?^>" required aria-required="true"^>
echo                 ^</div^>
echo                 ^<div class="form-group"^>
echo                   ^<label for="email"^>E-mailadres:^</label^>
echo                   ^<input type="email" id="email" name="email" class="form-control" value="^<?php echo htmlspecialchars($form_data['email']); ?^>" required aria-required="true"^>
echo                 ^</div^>
echo                 ^<div class="form-group"^>
echo                   ^<label for="phone"^>Telefoonnummer (^optioneel^):^</label^>
echo                   ^<input type="tel" id="phone" name="phone" class="form-control" value="^<?php echo htmlspecialchars($form_data['phone']); ?^>"^>
echo                 ^</div^>
echo                 ^<div class="form-group"^>
echo                   ^<label for="subject"^>Onderwerp:^</label^>
echo                   ^<input type="text" id="subject" name="subject" class="form-control" value="^<?php echo htmlspecialchars($form_data['subject']); ?^>" required aria-required="true"^>
echo                 ^</div^>
echo                 ^<div class="form-group"^>
echo                   ^<label for="message"^>Uw bericht:^</label^>
echo                   ^<textarea id="message" name="message" class="form-control" rows="5" required aria-required="true"^>^<?php echo htmlspecialchars($form_data['message']); ?^>^</textarea^>
echo                 ^</div^>
echo                 ^<button type="submit" class="btn btn-primary"^>Verzenden^</button^>
echo               ^</form^>
echo             ^</div^>
echo           ^</div^>
echo         ^</div^>
echo       ^</div^>
echo     ^</section^>
echo   ^</main^>
echo.
echo   ^<?php include_once '../../includes/footer.php'; ?^>
echo ^</body^>
echo ^</html^>
) > contact.php

REM public/pages/privacybeleid.php
(
echo ^<?php
echo require_once '../../includes/config.php';
echo require_once '../../includes/functions.php';
echo.
echo // Define page-specific variables
echo $pageTitle = "Privacybeleid - YourCompany BV";
echo $pageDescription = "Lees het privacybeleid van YourCompany BV om te begrijpen hoe wij omgaan met uw persoonlijke gegevens.";
echo $pageKeywords = "privacybeleid, AVG, GDPR, gegevensbescherming, YourCompany BV";
echo $pageCanonical = SITE_URL . '/pages/privacybeleid.php';
echo $ogImage = SITE_URL . '/assets/images/og-image.jpg';
echo.
echo // Set security headers
echo App\Security\Headers::setAllHeaders();
echo ?^>
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<?php include_once '../../includes/head.php'; ?^>
echo ^<body^>
echo   ^<?php include_once '../../includes/header.php'; ?^>
echo.
echo   ^<main id="main-content"^>
echo     ^<section class="section-padding"^>
echo       ^<div class="container"^>
echo         ^<h1^>Privacybeleid^</h1^>
echo         ^<p^>Laatst bijgewerkt: 5 oktober 2025^</p^>
echo.
echo         ^<p^>YourCompany BV, gevestigd aan ^<?php echo ADDRESS; ?^>, is verantwoordelijk voor de verwerking van persoonsgegevens zoals weergegeven in deze privacyverklaring. Wij respecteren uw privacy en dragen er zorg voor dat de persoonlijke informatie die u ons verschaft vertrouwelijk wordt behandeld.^</p^>
echo.
echo         ^<h2^>Contactgegevens:^</h2^>
echo         ^<p^>YourCompany BV^<br^>
echo            ^<?php echo ADDRESS; ?^>^<br^>
echo            Telefoon: ^<?php echo PHONE; ?^>^<br^>
echo            E-mail: ^<?php echo EMAIL; ?^>^<br^>
echo            Website: ^<a href="^<?php echo SITE_URL; ?^>"^>^<?php echo SITE_URL; ?^>^</a^>^</p^>
echo.
echo         ^<h2^>Persoonsgegevens die wij verwerken^</h2^>
echo         ^<p^>YourCompany BV verwerkt uw persoonsgegevens omdat u gebruik maakt van onze diensten en/of omdat u deze zelf aan ons verstrekt. Hieronder vindt u een overzicht van de persoonsgegevens die wij mogelijk verwerken, afhankelijk van uw interactie met onze website en diensten:^</p^>
echo         ^<ul^>
echo           ^<li^>Voor- en achternaam^</li^>
echo           ^<li^>Adresgegevens^</li^>
echo           ^<li^>Telefoonnummer^</li^>
echo           ^<li^>E-mailadres^</li^>
echo           ^<li^>IP-adres^</li^>
echo           ^<li^>Locatiegegevens^</li^>
echo           ^<li^>Gegevens over uw activiteiten op onze website^</li^>
echo           ^<li^>Gegevens over uw surfgedrag over verschillende websites heen (bijvoorbeeld omdat dit bedrijf onderdeel is van een advertentienetwerk)^</li^>
echo           ^<li^>Internetbrowser en apparaat type^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>Met welk doel en op basis van welke grondslag wij persoonsgegevens verwerken^</h2^>
echo         ^<p^>YourCompany BV verwerkt uw persoonsgegevens voor de volgende doelen:^</p^>
echo         ^<ul^>
echo           ^<li^>Om contact met u op te nemen indien dit nodig is om onze dienstverlening uit te kunnen voeren.^</li^>
echo           ^<li^>Het afhandelen van uw betaling.^</li^>
echo           ^<li^>Verzenden van onze nieuwsbrief en/of reclamefolder.^</li^>
echo           ^<li^>U te informeren over wijzigingen van onze diensten en producten.^</li^>
echo           ^<li^>YourCompany BV analyseert uw gedrag op de website om daarmee de website te verbeteren en het aanbod van producten en diensten af te stemmen op uw voorkeuren.^</li^>
echo           ^<li^>YourCompany BV volgt uw surfgedrag over verschillende websites waarmee wij onze producten en diensten afstemmen op uw behoefte.^</li^>
echo           ^<li^>YourCompany BV verwerkt ook persoonsgegevens als wij hier wettelijk toe verplicht zijn, zoals gegevens die wij nodig hebben voor onze belastingaangifte.^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>Geautomatiseerde besluitvorming^</h2^>
echo         ^<p^>YourCompany BV neemt geen besluiten op basis van geautomatiseerde verwerkingen over zaken die (aanzienlijke) gevolgen kunnen hebben voor personen. Het gaat hier om besluiten die worden genomen door computerprogramma's of -systemen, zonder dat daar een mens (bijvoorbeeld een medewerker van YourCompany BV) tussen zit.^</p^>
echo.
echo         ^<h2^>Hoe lang we persoonsgegevens bewaren^</h2^>
echo         ^<p^>YourCompany BV bewaart uw persoonsgegevens niet langer dan strikt nodig is om de doelen te realiseren waarvoor uw gegevens worden verzameld. Wij hanteren de volgende bewaartermijnen voor de volgende (categorieën) van persoonsgegevens:^</p^>
echo         ^<ul^>
echo           ^<li^><strong>Contactgegevens:</strong> Totdat uw vraag is beantwoord en een redelijke periode daarna voor opvolging, of zolang u klant van ons bent.^</li^>
echo           ^<li^><strong>Websitegedrag (via cookies):</strong> Zie ons ^<a href="/pages/cookiebeleid.php"^>Cookiebeleid^</a^> voor details.^</li^>
echo           ^<li^><strong>Administratieve gegevens:</strong> Zolang als wettelijk verplicht (meestal 7 jaar voor fiscale doeleinden).^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>Delen van persoonsgegevens met derden^</h2^>
echo         ^<p^>YourCompany BV verkoopt uw gegevens niet aan derden en zal deze uitsluitend verstrekken indien dit nodig is voor de uitvoering van onze overeenkomst met u of om te voldoen aan een wettelijke verplichting. Met bedrijven die uw gegevens verwerken in onze opdracht, sluiten wij een verwerkersovereenkomst om te zorgen voor eenzelfde niveau van beveiliging en vertrouwelijkheid van uw gegevens. YourCompany BV blijft verantwoordelijk voor deze verwerkingen.^</p^>
echo.
echo         ^<h2^>Cookies, of vergelijkbare technieken, die wij gebruiken^</h2^>
echo         ^<p^>YourCompany BV gebruikt functionele, analytische en tracking cookies. Een cookie is een klein tekstbestand dat bij het eerste bezoek aan deze website wordt opgeslagen in de browser van uw computer, tablet of smartphone. Voor een gedetailleerd overzicht van de cookies die wij gebruiken, verwijzen wij u naar ons ^<a href="/pages/cookiebeleid.php"^>Cookiebeleid^</a^>.^</p^>
echo.
echo         ^<h2^>Gegevens inzien, aanpassen of verwijderen^</h2^>
echo         ^<p^>U heeft het recht om uw persoonsgegevens in te zien, te corrigeren of te verwijderen. Daarnaast heeft u het recht om uw eventuele toestemming voor de gegevensverwerking in te trekken of bezwaar te maken tegen de verwerking van uw persoonsgegevens door YourCompany BV en heeft u het recht op gegevensoverdraagbaarheid. Dat betekent dat u bij ons een verzoek kunt indienen om de persoonsgegevens die wij van u beschikken in een computerbestand naar u of een ander, door u genoemde organisatie, te sturen.^</p^>
echo         ^<p^>U kunt een verzoek tot inzage, correctie, verwijdering, gegevensoverdraging van uw persoonsgegevens of verzoek tot intrekking van uw toestemming of bezwaar op de verwerking van uw persoonsgegevens sturen naar ^<a href="mailto:^<?php echo EMAIL; ?^>"^>^<?php echo EMAIL; ?^>^</a^>.^</p^>
echo.
echo         ^<p^>Om er zeker van te zijn dat het verzoek tot inzage door u is gedaan, vragen wij u een kopie van uw identiteitsbewijs met het verzoek mee te sturen. Maak in deze kopie uw pasfoto, MRZ (machine readable zone, de strook met nummers onderaan het paspoort), paspoortnummer en Burgerservicenummer (BSN) zwart. Dit ter bescherming van uw privacy. We reageren zo snel mogelijk, maar uiterlijk binnen vier weken, op uw verzoek.^</p^>
echo.
echo         ^<h2^>Hoe wij persoonsgegevens beveiligen^</h2^>
echo         ^<p^>YourCompany BV neemt de bescherming van uw gegevens serieus en neemt passende maatregelen om misbruik, verlies, onbevoegde toegang, ongewenste openbaarmaking en ongeoorloofde wijziging tegen te gaan. Als u de indruk heeft dat uw gegevens niet goed beveiligd zijn of er aanwijzingen zijn van misbruik, neem dan contact op met onze klantenservice of via ^<a href="mailto:^<?php echo EMAIL; ?^>"^>^<?php echo EMAIL; ?^>^</a^>.^</p^>
echo       ^</div^>
echo     ^</section^>
echo   ^</main^>
echo.
echo   ^<?php include_once '../../includes/footer.php'; ?^>
echo ^</body^>
echo ^</html^>
) > privacybeleid.php

REM public/pages/voorwaarden.php
(
echo ^<?php
echo require_once '../../includes/config.php';
echo require_once '../../includes/functions.php';
echo.
echo // Define page-specific variables
echo $pageTitle = "Algemene Voorwaarden - YourCompany BV";
echo $pageDescription = "Lees de algemene voorwaarden van YourCompany BV die van toepassing zijn op al onze diensten en producten.";
echo $pageKeywords = "algemene voorwaarden, gebruiksvoorwaarden, YourCompany BV, diensten, producten";
echo $pageCanonical = SITE_URL . '/pages/voorwaarden.php';
echo $ogImage = SITE_URL . '/assets/images/og-image.jpg';
echo.
echo // Set security headers
echo App\Security\Headers::setAllHeaders();
echo ?^>
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<?php include_once '../../includes/head.php'; ?^>
echo ^<body^>
echo   ^<?php include_once '../../includes/header.php'; ?^>
echo.
echo   ^<main id="main-content"^>
echo     ^<section class="section-padding"^>
echo       ^<div class="container"^>
echo         ^<h1^>Algemene Voorwaarden^</h1^>
echo         ^<p^>Laatst bijgewerkt: 5 oktober 2025^</p^>
echo.
echo         ^<p^>Deze algemene voorwaarden zijn van toepassing op alle diensten en producten die YourCompany BV levert. Door gebruik te maken van onze diensten en producten, stemt u in met deze voorwaarden.^</p^>
echo.
echo         ^<h2^>1. Definities^</h2^>
echo         ^<ul^>
echo           ^<li^><strong>Diensten:</strong> Alle werkzaamheden en services die YourCompany BV levert, inclusief, maar niet beperkt tot, advies, ontwikkeling, implementatie en onderhoud van software en systemen.^</li^>
echo           ^<li^><strong>Klant:</strong> De natuurlijke of rechtspersoon die een overeenkomst aangaat met YourCompany BV.^</li^>
echo           ^<li^><strong>Overeenkomst:</strong> Elke afspraak of contract tussen YourCompany BV en de Klant met betrekking tot de levering van Diensten of producten.^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>2. Toepasselijkheid^</h2^>
echo         ^<ul^>
echo           ^<li^>Deze algemene voorwaarden zijn van toepassing op elk aanbod van YourCompany BV en op elke tot stand gekomen overeenkomst tussen YourCompany BV en de Klant.^</li^>
echo           ^<li^>Afwijkingen van deze voorwaarden zijn alleen geldig indien deze uitdrukkelijk schriftelijk zijn overeengekomen.^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>3. Offertes en Totstandkoming Overeenkomst^</h2^>
echo         ^<ul^>
echo           ^<li^>Alle offertes van YourCompany BV zijn vrijblijvend, tenzij uitdrukkelijk anders vermeld.^</li^>
echo           ^<li^>Een overeenkomst komt tot stand op het moment van aanvaarding door de Klant van het aanbod van YourCompany BV en het voldoen aan de daarbij gestelde voorwaarden.^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>4. Uitvoering van de Overeenkomst^</h2^>
echo         ^<ul^>
echo           ^<li^>YourCompany BV zal de overeenkomst naar beste inzicht en vermogen en overeenkomstig de eisen van goed vakmanschap uitvoeren.^</li^>
echo           ^<li^>De Klant draagt er zorg voor dat alle gegevens, waarvan YourCompany BV aangeeft dat deze noodzakelijk zijn of waarvan de Klant redelijkerwijs behoort te begrijpen dat deze noodzakelijk zijn voor het uitvoeren van de overeenkomst, tijdig aan YourCompany BV worden verstrekt.^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>5. Prijzen en Betaling^</h2^>
echo         ^<ul^>
echo           ^<li^>Alle prijzen zijn exclusief BTW, tenzij anders vermeld.^</li^>
echo           ^<li^>Betaling dient te geschieden binnen 14 dagen na factuurdatum, op een door YourCompany BV aan te geven wijze.^</li^>
echo           ^<li^>Bij niet-tijdige betaling is de Klant zonder ingebrekestelling in verzuim en is de Klant de wettelijke rente verschuldigd.^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>6. Intellectuele Eigendom^</h2^>
echo         ^<ul^>
echo           ^<li^>Alle rechten van intellectuele eigendom op de ontwikkelde of ter beschikking gestelde Diensten en producten berusten uitsluitend bij YourCompany BV, tenzij anders overeengekomen.^</li^>
echo           ^<li^>De Klant verkrijgt een niet-exclusief en niet-overdraagbaar gebruiksrecht op de Diensten en producten voor de duur van de overeenkomst, tenzij anders schriftelijk overeengekomen.^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>7. Aansprakelijkheid^</h2^>
echo         ^<ul^>
echo           ^<li^>YourCompany BV is uitsluitend aansprakelijk voor directe schade die voortvloeit uit een toerekenbare tekortkoming in de nakoming van de overeenkomst.^</li^>
echo           ^<li^>De aansprakelijkheid van YourCompany BV is beperkt tot het bedrag dat in het desbetreffende geval door de bedrijfsaansprakelijkheidsverzekering van YourCompany BV wordt uitbetaald, vermeerderd met het eigen risico.^</li^>
echo           ^<li^>YourCompany BV is niet aansprakelijk voor indirecte schade, daaronder begrepen gevolgschade, gederfde winst, gemiste besparingen en schade door bedrijfsstagnatie.^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>8. Overmacht^</h2^>
echo         ^<p^>YourCompany BV is niet gehouden tot het nakomen van enige verplichting jegens de Klant indien zij daartoe gehinderd wordt als gevolg van een omstandigheid die niet is te wijten aan haar schuld, noch krachtens wet, rechtshandeling of in het verkeer geldende opvattingen voor haar rekening komt.^</p^>
echo.
echo         ^<h2^>9. Klachten^</h2^>
echo         ^<p^>Klachten over de uitvoering van de overeenkomst moeten binnen bekwame tijd, volledig en duidelijk omschreven worden ingediend bij YourCompany BV, nadat de Klant de gebreken heeft geconstateerd.^</p^>
echo.
echo         ^<h2^>10. Toepasselijk Recht en Geschillen^</h2^>
echo         ^<ul^>
echo           ^<li^>Op elke overeenkomst tussen YourCompany BV en de Klant is uitsluitend Nederlands recht van toepassing.^</li^>
echo           ^<li^>Geschillen zullen uitsluitend worden voorgelegd aan de bevoegde rechter in Amsterdam.^</li^>
echo         ^</ul^>
echo       ^</div^>
echo     ^</section^>
echo   ^</main^>
echo.
echo   ^<?php include_once '../../includes/footer.php'; ?^>
echo ^</body^>
echo ^</html^>
) > voorwaarden.php

REM public/pages/cookiebeleid.php
(
echo ^<?php
echo require_once '../../includes/config.php';
echo require_once '../../includes/functions.php';
echo.
echo // Define page-specific variables
echo $pageTitle = "Cookiebeleid - YourCompany BV";
echo $pageDescription = "Lees ons cookiebeleid om te begrijpen welke cookies YourCompany BV gebruikt en hoe u uw voorkeuren kunt beheren.";
echo $pageKeywords = "cookiebeleid, cookies, AVG, GDPR, privacy, YourCompany BV";
echo $pageCanonical = SITE_URL . '/pages/cookiebeleid.php';
echo $ogImage = SITE_URL . '/assets/images/og-image.jpg';
echo.
echo // Set security headers
echo App\Security\Headers::setAllHeaders();
echo ?^>
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<?php include_once '../../includes/head.php'; ?^>
echo ^<body^>
echo   ^<?php include_once '../../includes/header.php'; ?^>
echo.
echo   ^<main id="main-content"^>
echo     ^<section class="section-padding"^>
echo       ^<div class="container"^>
echo         ^<h1^>Cookiebeleid^</h1^>
echo         ^<p^>Laatst bijgewerkt: 5 oktober 2025^</p^>
echo.
echo         ^<p^>YourCompany BV maakt gebruik van cookies en vergelijkbare technologieën om uw bezoek aan onze website zo soepel en persoonlijk mogelijk te maken. In dit cookiebeleid leggen we uit welke cookies we gebruiken, waarvoor ze dienen en hoe u uw cookievoorkeuren kunt beheren.^</p^>
echo.
echo         ^<h2^>Wat zijn cookies?^</h2^>
echo         ^<p^>Cookies zijn kleine tekstbestandjes die tijdens uw bezoek aan een website op uw computer, tablet of smartphone worden opgeslagen. Deze bestandjes onthouden informatie over uw websitebezoek. Cookies maken het voor een website mogelijk om u te herkennen bij een volgend bezoek en om de inhoud af te stemmen op uw voorkeuren.^</p^>
echo.
echo         ^<h2^>Welke soorten cookies gebruiken wij?^</h2^>
echo         ^<p^>Wij gebruiken verschillende soorten cookies voor diverse doeleinden:^</p^>
echo.
echo         ^<h3^>1. Noodzakelijke cookies (altijd actief)^</h3^>
echo         ^<p^>Deze cookies zijn essentieel voor de basisfunctionaliteit van de website en om de door u gevraagde diensten te leveren, zoals het onthouden van uw inloggegevens of de inhoud van uw winkelwagentje. Zonder deze cookies kan de website niet correct functioneren. Hiervoor is geen toestemming vereist.^</p^>
echo         ^<ul^>
echo           ^<li^><strong>Voorbeeld:</strong> Sessiecookies, cookie-consent cookie (om uw voorkeuren te onthouden).^</li^>
echo         ^</ul^>
echo.
echo         ^<h3^>2. Analytische cookies^</h3^>
echo         ^<p^>Deze cookies verzamelen informatie over hoe bezoekers onze website gebruiken, zoals welke pagina's het meest bezocht worden, vanaf welke website bezoekers komen en welke foutmeldingen ze te zien krijgen. De verzamelde gegevens zijn geanonimiseerd en helpen ons om de website te verbeteren en de gebruikservaring te optimaliseren.^</p^>
echo         ^<ul^>
echo           ^<li^><strong>Voorbeeld:</strong> Google Analytics (indien correct geconfigureerd met IP-anonimisatie en zonder delen van gegevens).^</li^>
echo           ^<li^><strong>Dienst:</strong> Google Analytics (GTM-XXXXXXX)^</li^>
echo         ^</ul^>
echo.
echo         ^<h3^>3. Marketing- en trackingcookies^</h3^>
echo         ^<p^>Deze cookies worden gebruikt om gepersonaliseerde advertenties te tonen die relevant zijn voor u. Ze volgen uw surfgedrag over verschillende websites en bouwen een profiel op op basis van uw interesses. Deze cookies worden ook gebruikt om de effectiviteit van onze advertentiecampagnes te meten. Voor het plaatsen van deze cookies vragen wij uw uitdrukkelijke toestemming.^</p^>
echo         ^<ul^>
echo           ^<li^><strong>Voorbeeld:</strong> Facebook Pixel, LinkedIn Insight Tag.^</li^>
echo           ^<li^><strong>Diensten:</strong> Facebook (1234567890), LinkedIn (123456).^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>Uw cookievoorkeuren beheren^</h2^>
echo         ^<p^>U kunt uw cookievoorkeuren op elk moment wijzigen via de instellingen van onze website. Bij uw eerste bezoek aan onze website heeft u de keuze gekregen om cookies te accepteren, te weigeren of uw voorkeuren aan te passen. Deze keuze wordt opgeslagen in een noodzakelijke cookie.^</p^>
echo.
echo         ^<p^>Om uw voorkeuren te wijzigen, kunt u de knop "Cookie-instellingen" hieronder gebruiken. U kunt ook via de instellingen van uw browser (bijvoorbeeld Chrome, Firefox, Safari) cookies verwijderen of de opslag ervan blokkeren. Houd er rekening mee dat het blokkeren van alle cookies de functionaliteit van vele websites kan beïnvloeden.^</p^>
echo.
echo         ^<div class="mt-4"^>
echo           ^<button class="btn btn-primary" onclick="window.YourCompanyCookieConsent.showSettingsModal()"^>Wijzig cookie-instellingen^</button^>
echo         ^</div^>
echo.
echo         ^<h2^>Contact^</h2^>
echo         ^<p^>Voor vragen over ons cookiebeleid kunt u contact met ons opnemen via ^<a href="mailto:^<?php echo EMAIL; ?^>"^>^<?php echo EMAIL; ?^>^</a^>.^</p^>
echo       ^</div^>
echo     ^</section^>
echo   ^</main^>
echo.
echo   ^<?php include_once '../../includes/footer.php'; ?^>
echo.
echo   ^<!-- Cookie Settings Modal (example structure, actual HTML might be in a separate include or generated by JS) -->
echo   ^<div id="cookie-settings-modal" class="modal hidden" aria-hidden="true"^>
echo     ^<div class="modal-content"^>
echo       ^<div class="modal-header"^>
echo         ^<h3^>Cookie-instellingen^</h3^>
echo         ^<button type="button" class="close-modal" aria-label="Sluit"^>^&times;^</button^>
echo       ^</div^>
echo       ^<div class="modal-body"^>
echo         ^<p^>U kunt hieronder aangeven welke cookies u wilt accepteren.^</p^>
echo         ^<div class="form-group"^>
echo           ^<input type="checkbox" id="cookie-necessary" checked disabled^>
echo           ^<label for="cookie-necessary"^>Noodzakelijke cookies (altijd aan)^</label^>
echo           ^<p class="text-muted"^>Deze cookies zijn essentieel voor de werking van de website.^</p^>
echo         ^</div^>
echo         ^<div class="form-group"^>
echo           ^<input type="checkbox" id="cookie-analytics"^>
echo           ^<label for="cookie-analytics"^>Analytische cookies^</label^>
echo           ^<p class="text-muted"^>Hiermee verzamelen we geanonimiseerde gegevens om de website te verbeteren.^</p^>
echo         ^</div^>
echo         ^<div class="form-group"^>
echo           ^<input type="checkbox" id="cookie-marketing"^>
echo           ^<label for="cookie-marketing"^>Marketingcookies^</label^>
echo           ^<p class="text-muted"^>Deze cookies worden gebruikt om advertenties relevanter te maken.^</p^>
echo         ^</div^>
echo       ^</div^>
echo       ^<div class="modal-footer"^>
echo         ^<button type="button" id="save-cookie-settings" class="btn btn-primary"^>Voorkeuren opslaan^</button^>
echo       ^</div^>
echo     ^</div^>
echo   ^</div^>
echo.
echo   ^<script^>
echo     document.addEventListener('DOMContentLoaded', () => {
echo       // Simple function to simulate showing the modal.
echo       // In a real scenario, this would interact with the cookie-consent.js module.
echo       window.YourCompanyCookieConsent = {
echo         showSettingsModal: function() {
echo           const modal = document.getElementById('cookie-settings-modal');
echo           if (modal) {
echo             modal.classList.remove('hidden');
echo             modal.setAttribute('aria-hidden', 'false');
echo             // Pre-fill checkboxes based on current consent (if any)
echo             const currentConsent = window.YourCompanyCookieConsent.getCookie('yourcompany_cookie_consent');
echo             if (currentConsent) {
echo               const preferences = JSON.parse(currentConsent);
echo               document.getElementById('cookie-analytics').checked = preferences.analytics;
echo               document.getElementById('cookie-marketing').checked = preferences.marketing;
echo             }
echo           }
echo         },
echo         // Expose other functions from the module if needed, or re-initialize it
echo         // This is a placeholder; actual integration should be through imports in app.js
echo         getCookie: function(name) { return null; }, // Placeholder for now
echo         setCookie: function(name, value, days) { console.log('Simulating setCookie'); },
echo         updateGtmConsent: function() { console.log('Simulating GTM consent update'); }
echo       };
echo.
echo       // Bind close button
echo       const closeButton = document.querySelector('#cookie-settings-modal .close-modal');
echo       if (closeButton) {
echo         closeButton.addEventListener('click', () => {
echo           document.getElementById('cookie-settings-modal').classList.add('hidden');
echo           document.getElementById('cookie-settings-modal').setAttribute('aria-hidden', 'true');
echo         });
echo       }
echo       // Bind save button
echo       const saveButton = document.getElementById('save-cookie-settings');
echo       if (saveButton) {
echo         saveButton.addEventListener('click', () => {
echo           const analyticsChecked = document.getElementById('cookie-analytics').checked;
echo           const marketingChecked = document.getElementById('cookie-marketing').checked;
echo           // In a real app, this would call handleConsent from cookie-consent.js
echo           console.log('Simulating save settings:', { analytics: analyticsChecked, marketing: marketingChecked });
echo           document.getElementById('cookie-settings-modal').classList.add('hidden');
echo           document.getElementById('cookie-settings-modal').setAttribute('aria-hidden', 'true');
echo         });
echo       }
echo     });
echo   ^</script^>
echo.
echo ^</body^>
echo ^</html^>
) > cookiebeleid.php

REM public/pages/toegankelijkheid.php
(
echo ^<?php
echo require_once '../../includes/config.php';
echo require_once '../../includes/functions.php';
echo.
echo // Define page-specific variables
echo $pageTitle = "Toegankelijkheidsverklaring - YourCompany BV";
echo $pageDescription = "Lees de toegankelijkheidsverklaring van YourCompany BV en onze inzet voor een toegankelijke website voor iedereen.";
echo $pageKeywords = "toegankelijkheid, WCAG, digitoegankelijk, YourCompany BV, verklaring";
echo $pageCanonical = SITE_URL . '/pages/toegankelijkheid.php';
echo $ogImage = SITE_URL . '/assets/images/og-image.jpg';
echo.
echo // Set security headers
echo App\Security\Headers::setAllHeaders();
echo ?^>
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<?php include_once '../../includes/head.php'; ?^>
echo ^<body^>
echo   ^<?php include_once '../../includes/header.php'; ?^>
echo.
echo   ^<main id="main-content"^>
echo     ^<section class="section-padding"^>
echo       ^<div class="container"^>
echo         ^<h1^>Toegankelijkheidsverklaring^</h1^>
echo         ^<p^>YourCompany BV streeft ernaar om haar online informatie en diensten voor iedereen toegankelijk te maken. Dit betekent dat onze website, voor zover redelijkerwijs mogelijk, voldoet aan de internationale richtlijnen voor webtoegankelijkheid (WCAG 2.1 niveau AA).^</p^>
echo.
echo         ^<h2^>Nalevingstatus^</h2^>
echo         ^<p^>De website van YourCompany BV voldoet grotendeels aan de eisen van WCAG 2.1 niveau AA. Wij werken continu aan het verbeteren van de toegankelijkheid van onze website en streven naar volledige naleving.^</p^>
echo         ^<p^>Deze verklaring is opgesteld op 5 oktober 2025.^</p^>
echo.
echo         ^<h2^>Waarom toegankelijkheid?^</h2^>
echo         ^<p^>Wij vinden het belangrijk dat iedereen onze informatie kan vinden en gebruiken. Of u nu visueel gehandicapt bent, een auditieve beperking heeft, of om andere redenen moeite heeft met het gebruik van computers, wij doen ons best om onze website voor u bruikbaar te maken.^</p^>
echo.
echo         ^<h2^>Wat hebben wij gedaan om de website toegankelijk te maken?^</h2^>
echo         ^<ul^>
echo           ^<li^><strong>Contrast:</strong> Voldoende contrast tussen tekst en achtergrondkleuren.^</li^>
echo           ^<li^><strong>Toetsenbordnavigatie:</strong> Alle functionaliteiten zijn bereikbaar via het toetsenbord.^</li^>
echo           ^<li^><strong>Semantische HTML:</strong> Correct gebruik van HTML-elementen voor structuur en betekenis.^</li^>
echo           ^<li^><strong>Alt-teksten:</strong> Afbeeldingen voorzien van beschrijvende alternatieve teksten.^</li^>
echo           ^<li^><strong>Formulieren:</strong> Duidelijke labels en foutmeldingen voor formuliervelden.^</li^>
echo           ^<li^><strong>Responsief design:</strong> De website is goed bruikbaar op diverse apparaten (desktop, tablet, mobiel).^</li^>
echo           ^<li^><strong>Tekstgrootte:</strong> De tekst is schaalbaar zonder verlies van functionaliteit.^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>Bekende beperkingen^</h2^>
echo         ^<p^>Hoewel wij er alles aan doen om onze website toegankelijk te maken, zijn er mogelijk enkele punten die nog verbetering behoeven:^</p^>
echo         ^<ul^>
echo           ^<li^>Sommige oudere PDF-documenten zijn mogelijk nog niet volledig toegankelijk.^</li^>
echo           ^<li^>Video's van derden (bijvoorbeeld YouTube-integraties) kunnen beperkingen hebben buiten onze controle.^</li^>
echo           ^<li^>Complexe datavisualisaties zijn mogelijk nog niet optimaal toegankelijk voor schermlezers.^</li^>
echo         ^</ul^>
echo.
echo         ^<h2^>Hulp nodig of feedback?^</h2^>
echo         ^<p^>Mocht u ondanks onze inspanningen toch een toegankelijkheidsprobleem ervaren op onze website, of heeft u suggesties voor verbetering? Laat het ons weten! Wij zijn altijd bereid om met u mee te denken en onze website verder te optimaliseren.^</p^>
echo         ^<p^>U kunt contact met ons opnemen via ^<a href="mailto:^<?php echo EMAIL; ?^>"^>^<?php echo EMAIL; ?^>^</a^> of telefonisch via ^<a href="tel:^<?php echo PHONE; ?^>"^>^<?php echo PHONE; ?^>^</a^>.^</p^>
echo.
echo         ^<h2^>Verbeteringsplan^</h2^>
echo         ^<p^>YourCompany BV heeft een actief verbeteringsplan opgesteld om de resterende toegankelijkheidspunten aan te pakken. Dit omvat onder andere:^</p^>
echo         ^<ul^>
echo           ^<li^>Periodieke audits door externe toegankelijkheidsexperts.^</li^>
echo           ^<li^>Training van onze contentbeheerders en ontwikkelaars.^</li^>
echo           ^<li^>Het toegankelijk maken van nieuwe en bestaande documenten.^</li^>
echo           ^<li^>Implementatie van specifieke oplossingen voor datavisualisaties.^</li^>
echo         ^</ul^>
echo       ^</div^>
echo     ^</section^>
echo   ^</main^>
echo.
echo   ^<?php include_once '../../includes/footer.php'; ?^>
echo ^</body^>
echo ^</html^>
) > toegankelijkheid.php

REM public/pages/disclaimer.php
(
echo ^<?php
echo require_once '../../includes/config.php';
echo require_once '../../includes/functions.php';
echo.
echo // Define page-specific variables
echo $pageTitle = "Disclaimer - YourCompany BV";
echo $pageDescription = "Lees de disclaimer van YourCompany BV met betrekking tot de inhoud en het gebruik van onze website.";
echo $pageKeywords = "disclaimer, aansprakelijkheid, website gebruik, YourCompany BV";
echo $pageCanonical = SITE_URL . '/pages/disclaimer.php';
echo $ogImage = SITE_URL . '/assets/images/og-image.jpg';
echo.
echo // Set security headers
echo App\Security\Headers::setAllHeaders();
echo ?^>
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<?php include_once '../../includes/head.php'; ?^>
echo ^<body^>
echo   ^<?php include_once '../../includes/header.php'; ?^>
echo.
echo   ^<main id="main-content"^>
echo     ^<section class="section-padding"^>
echo       ^<div class="container"^>
echo         ^<h1^>Disclaimer^</h1^>
echo         ^<p^>Laatst bijgewerkt: 5 oktober 2025^</p^>
echo.
echo         ^<p^>Deze disclaimer regelt uw gebruik van de website van YourCompany BV. Door deze website te bezoeken en/of de op of via deze website aangeboden informatie te gebruiken, stemt u in met de toepasselijkheid van deze disclaimer.^</p^>
echo.
echo         ^<h2^>Informatie op deze website^</h2^>
echo         ^<p^>YourCompany BV besteedt constante zorg en aandacht aan de samenstelling van de informatie op deze website. Desondanks is het mogelijk dat informatie die op deze site wordt gepubliceerd onvolledig of onjuist is. De informatie op onze website wordt regelmatig aangevuld en eventuele wijzigingen kunnen te allen tijde met onmiddellijke ingang en zonder enige kennisgeving worden aangebracht.^</p^>
echo.
echo         ^<p^>Wij aanvaarden geen aansprakelijkheid voor enigerlei directe of indirecte schade, van welke aard dan ook, die voortvloeit uit of in enig opzicht verband houdt met het gebruik van deze website of met de tijdelijke onmogelijkheid om de website te kunnen raadplegen.^</p^>
echo.
echo         ^<h2^>Externe links^</h2^>
echo         ^<p^>De website van YourCompany BV bevat links naar websites van derden. Wij zijn niet verantwoordelijk voor de inhoud van websites waarnaar wordt verwezen en sluiten elke aansprakelijkheid uit voor enigerlei schade die voortvloeit uit het gebruik van deze websites van derden.^</p^>
echo.
echo         ^<h2^>Intellectuele eigendomsrechten^</h2^>
echo         ^<p^>Alle intellectuele eigendomsrechten met betrekking tot de website van YourCompany BV, waaronder mede begrepen de programmatuur, teksten, beelden en geluiden, berusten bij YourCompany BV of haar licentiegevers. Het is niet toegestaan om zonder voorafgaande schriftelijke toestemming van YourCompany BV informatie van deze website te kopiëren, te downloaden of op enigerlei wijze openbaar te maken, te verspreiden of te verveelvoudigen.^</p^>
echo.
echo         ^<h2^>Wijzigingen^</h2^>
echo         ^<p^>YourCompany BV behoudt zich het recht voor deze disclaimer op elk moment te wijzigen. Wijzigingen treden in werking op het moment dat ze op deze website zijn gepubliceerd.^</p^>
echo.
echo         ^<h2^>Toepasselijk recht^</h2^>
echo         ^<p^>Op deze website en de disclaimer is het Nederlands recht van toepassing. Alle geschillen die voortvloeien uit of verband houden met deze disclaimer zullen worden voorgelegd aan de bevoegde rechter in Nederland.^</p^>
echo       ^</div^>
echo     ^</section^>
echo   ^</main^>
echo.
echo   ^<?php include_once '../../includes/footer.php'; ?^>
echo ^</body^>
echo ^</html^>
) > disclaimer.php

REM public/pages/blog.php
(
echo ^<?php
echo require_once '../../includes/config.php';
echo require_once '../../includes/functions.php';
echo.
echo // Define page-specific variables
echo $pageTitle = "Blog - YourCompany BV: Nieuws & Insights";
echo $pageDescription = "Ontdek de laatste artikelen, analyses en nieuws van YourCompany BV over innovatie, technologie en de digitale wereld.";
echo $pageKeywords = "blog, nieuws, insights, YourCompany BV, technologie, innovatie, artikelen";
echo $pageCanonical = SITE_URL . '/pages/blog.php';
echo $ogImage = SITE_URL . '/assets/images/og-image.jpg';
echo.
echo // Set security headers
echo App\Security\Headers::setAllHeaders();
echo.
echo // Pagination settings
echo $postsPerPage = 6;
echo $currentPage = isset(^$_GET['p']) ? (int)^$_GET['p'] : 1;
echo if ($currentPage ^< 1) $currentPage = 1;
echo.
echo // Category filter
echo $categoryFilter = isset(^$_GET['category']) ? App\Security\Sanitizer::sanitize_string(^$_GET['category']) : null;
echo.
echo // Search query
echo $searchQuery = isset(^$_GET['s']) ? App\Security\Sanitizer::sanitize_string(^$_GET['s']) : null;
echo.
echo // Fetch blog posts
echo $allPosts = App\Functions::get_blog_posts(); // Get all posts
echo $filteredPosts = [];
echo.
echo foreach ($allPosts as $post) {
echo     $matchCategory = true;
echo     $matchSearch = true;
echo.
echo     // Filter by category
echo     if ($categoryFilter && (!isset($post['category']) || strtolower($post['category']) !== strtolower($categoryFilter))) {
echo         $matchCategory = false;
echo     }
echo.
echo     // Filter by search query
echo     if ($searchQuery) {
echo         $searchQueryLower = strtolower($searchQuery);
echo         if (strpos(strtolower($post['title']), $searchQueryLower) === false ^&&
echo             strpos(strtolower($post['summary']), $searchQueryLower) === false) {
echo             $matchSearch = false;
echo         }
echo     }
echo.
echo     if ($matchCategory ^&& $matchSearch) {
echo         $filteredPosts[] = $post;
echo     }
echo }
echo.
echo $totalPosts = count($filteredPosts);
echo $totalPages = ceil($totalPosts / $postsPerPage);
echo.
echo $startIndex = ($currentPage - 1) * $postsPerPage;
echo $displayPosts = array_slice($filteredPosts, $startIndex, $postsPerPage);
echo.
echo // Get unique categories for filter
echo $allCategories = [];
echo foreach ($allPosts as $post) {
echo     if (isset($post['category']) ^&& !in_array($post['category'], $allCategories)) {
echo         $allCategories[] = $post['category'];
echo     }
echo }
echo sort($allCategories);
echo ?^>
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<?php include_once '../../includes/head.php'; ?^>
echo ^<body^>
echo   ^<?php include_once '../../includes/header.php'; ?^>
echo.
echo   ^<main id="main-content"^>
echo     ^<section class="section-padding"^>
echo       ^<div class="container"^>
echo         ^<h1 class="text-center"^>Ons Blog^</h1^>
echo         ^<p class="text-center lead mb-4"^>Blijf op de hoogte van de nieuwste ontwikkelingen, trends en inzichten in de wereld van technologie en innovatie.^</p^>
echo.
echo         ^<div class="row g-4 mb-4"^>
echo           ^<div class="col-md-4"^>
echo             ^<div class="blog-sidebar"^>
echo               ^<h3^>Zoek artikelen^</h3^>
echo               ^<form action="/pages/blog.php" method="GET" class="search-form"^>
echo                 ^<div class="form-group d-flex"^>
echo                   ^<input type="text" name="s" placeholder="Zoek op trefwoord..." class="form-control" value="^<?php echo htmlspecialchars($searchQuery ?? ''); ?^>"^>
echo                   ^<button type="submit" class="btn btn-primary"^>Zoek^</button^>
echo                 ^</div^>
echo               ^</form^>
echo.
echo               ^<h3 class="mt-4"^>Categorieën^</h3^>
echo               ^<ul class="category-list"^>
echo                 ^<li^>^<a href="/pages/blog.php" class="^<?php echo $categoryFilter === null ? 'active' : ''; ?^>"^>Alle Categorieën^</a^>^</li^>
echo                 ^<?php foreach ($allCategories as $category): ?^>
echo                   ^<li^>^<a href="/pages/blog.php?category=^<?php echo urlencode($category); ?^>" class="^<?php echo strtolower($categoryFilter) === strtolower($category) ? 'active' : ''; ?^>"^>^<?php echo htmlspecialchars($category); ?^>^</a^>^</li^>
echo                 ^<?php endforeach; ?^>
echo               ^</ul^>
echo             ^</div^>
echo           ^</div^>
echo.
echo           ^<div class="col-md-8"^>
echo             ^<div class="grid-2-col-md blog-posts-grid"^>
echo               ^<?php if (!empty($displayPosts)): ?^>
echo                 ^<?php foreach ($displayPosts as $post): ?^>
echo                   ^<?php include '../../includes/blog/post-card.php'; ?^>
echo                 ^<?php endforeach; ?^>
echo               ^<?php else: ?^>
echo                 ^<p class="col-span-full"^>Geen blogberichten gevonden die voldoen aan de criteria.^</p^>
echo               ^<?php endif; ?^>
echo             ^</div^>
echo.
echo             ^<?php
echo             // Include pagination
echo             $paginationBaseUrl = '/pages/blog.php';
echo             $paginationParams = [];
echo             if ($categoryFilter) {
echo                 $paginationParams['category'] = $categoryFilter;
echo             }
echo             if ($searchQuery) {
echo                 $paginationParams['s'] = $searchQuery;
echo             }
echo             include '../../includes/blog/pagination.php';
echo             ?^>
echo           ^</div^>
echo         ^</div^>
echo       ^</div^>
echo     ^</section^>
echo   ^</main^>
echo.
echo   ^<?php include_once '../../includes/footer.php'; ?^>
echo ^</body^>
echo ^</html^>
) > blog.php

REM public/pages/blog-post.php
(
echo ^<?php
echo require_once '../../includes/config.php';
echo require_once '../../includes/functions.php';
echo require_once '../../includes/seo/schema-article.php';
echo.
echo // Get post ID from URL
echo $postId = isset(^$_GET['id']) ? (int)App\Security\Sanitizer::sanitize_string(^$_GET['id']) : 0;
echo.
echo // Fetch all blog posts
echo $allPosts = App\Functions::get_blog_posts();
echo $currentPost = null;
echo foreach ($allPosts as $post) {
echo     if ($post['id'] === $postId) {
echo         $currentPost = $post;
echo         break;
echo     }
echo }
echo.
echo if (!$currentPost) {
echo     header("Location: /404.html"); // Redirect to 404 if post not found
echo     exit();
echo }
echo.
echo // Define page-specific variables
echo $pageTitle = $currentPost['title'] . " - YourCompany BV Blog";
echo $pageDescription = App\Functions::truncate_text($currentPost['content'], 160);
echo $pageKeywords = implode(', ', $currentPost['tags']);
echo $pageCanonical = SITE_URL . '/pages/blog-post.php?id=' . $currentPost['id'];
echo $ogImage = SITE_URL . $currentPost['image'];
echo.
echo // Set security headers
echo App\Security\Headers::setAllHeaders();
echo ?^>
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<?php include_once '../../includes/head.php'; ?^>
echo ^<body^>
echo   ^<?php include_once '../../includes/header.php'; ?^>
echo.
echo   ^<main id="main-content"^>
echo     ^<section class="section-padding blog-post-section"^>
echo       ^<div class="container"^>
echo         ^<article^>
echo           ^<header class="blog-post-header text-center mb-5"^>
echo             ^<h1^>^<?php echo htmlspecialchars($currentPost['title']); ?^>^</h1^>
echo             ^<div class="post-meta"^>
echo               ^<span class="post-date"^>Gepubliceerd op: ^<?php echo App\Functions::format_date($currentPost['date']); ?^>^</span^>
echo               ^<span class="post-author"^>Door: ^<?php echo htmlspecialchars($currentPost['author']); ?^>^</span^>
echo               ^<?php if (isset($currentPost['category'])): ?^>
echo                 ^<span class="post-category"^>Categorie: ^<a href="/pages/blog-category.php?category=^<?php echo urlencode($currentPost['category']); ?^>"^>^<?php echo htmlspecialchars($currentPost['category']); ?^>^</a^>^</span^>
echo               ^<?php endif; ?^>
echo             ^</div^>
echo             ^<?php if (isset($currentPost['image'])): ?^>
echo               ^<img src="^<?php echo htmlspecialchars($currentPost['image']); ?^>" alt="^<?php echo htmlspecialchars($currentPost['title']); ?^>" class="img-fluid post-featured-image mt-4 mb-4"^>
echo             ^<?php endif; ?^>
echo           ^</header^>
echo.
echo           ^<div class="blog-post-content content-formatted"^>
echo             ^<?php echo $currentPost['content']; ?^>
echo             ^<!-- The content should ideally be loaded from a markdown file or database and converted to HTML -->
echo           ^</div^>
echo.
echo           ^<footer class="blog-post-footer mt-5"^>
echo             ^<div class="post-tags mb-3"^>
echo               ^<strong^>Tags:^</strong^>
echo               ^<?php foreach ($currentPost['tags'] as $tag): ?^>
echo                 ^<span class="badge bg-secondary me-1"^>^<?php echo htmlspecialchars($tag); ?^>^</span^>
echo               ^<?php endforeach; ?^>
echo             ^</div^>
echo.
echo             ^<div class="social-sharing mb-4"^>
echo               ^<strong^>Deel dit artikel:^</strong^>
echo               ^<a href="https://www.facebook.com/sharer/sharer.php?u=^<?php echo urlencode($pageCanonical); ?^>" target="_blank" rel="noopener noreferrer" class="btn btn-outline-secondary me-2"^>Facebook^</a^>
echo               ^<a href="https://twitter.com/intent/tweet?url=^<?php echo urlencode($pageCanonical); ?^>&text=^<?php echo urlencode($pageTitle); ?^>" target="_blank" rel="noopener noreferrer" class="btn btn-outline-secondary me-2"^>Twitter^</a^>
echo               ^<a href="https://www.linkedin.com/shareArticle?mini=true&url=^<?php echo urlencode($pageCanonical); ?^>&title=^<?php echo urlencode($pageTitle); ?^>" target="_blank" rel="noopener noreferrer" class="btn btn-outline-secondary"^>LinkedIn^</a^>
echo             ^</div^>
echo.
echo             ^<div class="related-posts"^>
echo               ^<h3^>Gerelateerde Artikelen^</h3^>
echo               ^<div class="grid-3-col"^>
echo                 ^<?php
echo                 // Fetch related posts (logic in includes/blog/related-posts.php)
echo                 $relatedPosts = App\Blog\RelatedPosts::get_related_posts($currentPost, 3);
echo                 if (!empty($relatedPosts)) {
echo                   foreach ($relatedPosts as $post) {
echo                     include '../../includes/blog/post-card.php'; // Reuse post card template
echo                   }
echo                 } else {
echo                   echo '^<p^>Geen gerelateerde artikelen gevonden.^</p^>';
echo                 }
echo                 ?^>
echo               ^</div^>
echo             ^</div^>
echo           ^</footer>^
echo         ^</article^>
echo       ^</div^>
echo     ^</section^>
echo   ^</main^>
echo.
echo   ^<?php include_once '../../includes/footer.php'; ?^>
echo.
echo   ^<?php
echo   // Output Schema.org Article JSON-LD
echo   echo App\SEO\SchemaArticle::generate_article_schema($currentPost);
echo   ?^>
echo ^</body^>
echo ^</html^>
) > blog-post.php

REM public/pages/blog-category.php
(
echo ^<?php
echo require_once '../../includes/config.php';
echo require_once '../../includes/functions.php';
echo.
echo // Get category from URL
echo $category = isset(^$_GET['category']) ? App\Security\Sanitizer::sanitize_string(^$_GET['category']) : null;
echo.
echo if (!$category) {
echo     header("Location: /pages/blog.php"); // Redirect to main blog if no category specified
echo     exit();
echo }
echo.
echo // Define page-specific variables
echo $pageTitle = "Blog Categorie: " . htmlspecialchars($category) . " - YourCompany BV";
echo $pageDescription = "Bekijk alle blogberichten van YourCompany BV in de categorie '" . htmlspecialchars($category) . "'.";
echo $pageKeywords = "blog, categorie, " . htmlspecialchars($category) . ", YourCompany BV, artikelen";
echo $pageCanonical = SITE_URL . '/pages/blog-category.php?category=' . urlencode($category);
echo $ogImage = SITE_URL . '/assets/images/og-image.jpg';
echo.
echo // Set security headers
echo App\Security\Headers::setAllHeaders();
echo.
echo // Pagination settings
echo $postsPerPage = 6;
echo $currentPage = isset(^$_GET['p']) ? (int)^$_GET['p'] : 1;
echo if ($currentPage ^< 1) $currentPage = 1;
echo.
echo // Fetch blog posts
echo $allPosts = App\Functions::get_blog_posts();
echo $filteredPosts = [];
echo.
echo foreach ($allPosts as $post) {
echo     if (isset($post['category']) ^&& strtolower($post['category']) === strtolower($category)) {
echo         $filteredPosts[] = $post;
echo     }
echo }
echo.
echo $totalPosts = count($filteredPosts);
echo $totalPages = ceil($totalPosts / $postsPerPage);
echo.
echo $startIndex = ($currentPage - 1) * $postsPerPage;
echo $displayPosts = array_slice($filteredPosts, $startIndex, $postsPerPage);
echo.
echo // Get unique categories for sidebar (same as blog.php)
echo $allCategories = [];
echo foreach (App\Functions::get_blog_posts() as $post) { // Get all posts for full category list
echo     if (isset($post['category']) ^&& !in_array($post['category'], $allCategories)) {
echo         $allCategories[] = $post['category'];
echo     }
echo }
echo sort($allCategories);
echo ?^>
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<?php include_once '../../includes/head.php'; ?^>
echo ^<body^>
echo   ^<?php include_once '../../includes/header.php'; ?^>
echo.
echo   ^<main id="main-content"^>
echo     ^<section class="section-padding"^>
echo       ^<div class="container"^>
echo         ^<h1 class="text-center"^>Blog Categorie: ^<?php echo htmlspecialchars($category); ?^>^</h1^>
echo         ^<p class="text-center lead mb-4"^>Alle artikelen binnen de categorie "^<?php echo htmlspecialchars($category); ?^>".^</p^>
echo.
echo         ^<div class="row g-4 mb-4"^>
echo           ^<div class="col-md-4"^>
echo             ^<div class="blog-sidebar"^>
echo               ^<h3^>Zoek artikelen^</h3^>
echo               ^<form action="/pages/blog.php" method="GET" class="search-form"^>
echo                 ^<div class="form-group d-flex"^>
echo                   ^<input type="text" name="s" placeholder="Zoek op trefwoord..." class="form-control"^>
echo                   ^<button type="submit" class="btn btn-primary"^>Zoek^</button^>
echo                 ^</div^>
echo               ^</form^>
echo.
echo               ^<h3 class="mt-4"^>Categorieën^</h3^>
echo               ^<ul class="category-list"^>
echo                 ^<li^>^<a href="/pages/blog.php"^>Alle Categorieën^</a^>^</li^>
echo                 ^<?php foreach ($allCategories as ^$_cat): ?^>
echo                   ^<li^>^<a href="/pages/blog.php?category=^<?php echo urlencode(^$_cat); ?^>" class="^<?php echo strtolower($category) === strtolower(^$_cat) ? 'active' : ''; ?^>"^>^<?php echo htmlspecialchars(^$_cat); ?^>^</a^>^</li^>
echo                 ^<?php endforeach; ?^>
echo               ^</ul^>
echo             ^</div^>
echo           ^</div^>
echo.
echo           ^<div class="col-md-8"^>
echo             ^<div class="grid-2-col-md blog-posts-grid"^>
echo               ^<?php if (!empty($displayPosts)): ?^>
echo                 ^<?php foreach ($displayPosts as $post): ?^>
echo                   ^<?php include '../../includes/blog/post-card.php'; ?^>
echo                 ^<?php endforeach; ?^>
echo               ^<?php else: ?^>
echo                 ^<p class="col-span-full"^>Geen blogberichten gevonden in deze categorie.^</p^>
echo               ^<?php endif; ?^>
echo             ^</div^>
echo.
echo             ^<?php
echo             // Include pagination
echo             $paginationBaseUrl = '/pages/blog-category.php';
echo             $paginationParams = ['category' => $category];
echo             include '../../includes/blog/pagination.php';
echo             ?^>
echo           ^</div^>
echo         ^</div^>
echo       ^</div^>
echo     ^</section^>
echo   ^</main^>
echo.
echo   ^<?php include_once '../../includes/footer.php'; ?^>
echo ^</body^>
echo ^</html^>
) > blog-category.php

cd ..
cd ..
echo ^✓ Page files created

echo.
echo ════════════════════════════════════════════════════════════════
echo PHASE 16: Creating Include Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [17/27] Generating include files...
cd includes

REM includes/head.php
(
echo ^<?php
echo // Ensure necessary variables are defined or set defaults
echo $pageTitle = $pageTitle ?? SITE_NAME;
echo $pageDescription = $pageDescription ?? 'Uw toonaangevende partner voor innovatieve IT-oplossingen.';
echo $pageKeywords = $pageKeywords ?? 'bedrijfsnaam, innovatie, technologie, oplossingen, diensten';
echo $pageCanonical = $pageCanonical ?? SITE_URL;
echo $ogImage = $ogImage ?? SITE_URL . '/assets/images/og-image.jpg';
echo.
echo // Load helper functions for SEO and performance
echo require_once __DIR__ . '/seo/meta-tags.php';
echo require_once __DIR__ . '/seo/social-meta.php';
echo require_once __DIR__ . '/seo/schema-organization.php';
echo require_once __DIR__ . '/seo/schema-localbusiness.php'; // If applicable
echo require_once __DIR__ . '/performance/dns-prefetch.php';
echo require_once __DIR__ . '/performance/preconnect.php';
echo require_once __DIR__ . '/performance/preload.php';
echo require_once __DIR__ . '/marketing/google-tag-manager.php';
echo.
echo // GTM Data Layer initialization (required for Consent Mode)
echo App\Marketing\GoogleTagManager::dataLayerInit();
echo ?^>
echo ^<head^>
echo   ^<meta charset="UTF-8"^>
echo   ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo   ^<meta name="robots" content="index, follow"^>
echo   ^<link rel="canonical" href="^<?php echo htmlspecialchars($pageCanonical); ?^>"^>
echo.
echo   ^<title^>^<?php echo htmlspecialchars($pageTitle); ?^>^</title^>
echo   ^<?php App\SEO\MetaTags::generate_meta_description($pageDescription); ?^>
echo   ^<?php App\SEO\MetaTags::generate_meta_keywords($pageKeywords); ?^>
echo.
echo   ^<!-- Favicons -->
echo   ^<link rel="apple-touch-icon" sizes="180x180" href="/assets/images/favicons/apple-touch-icon.png"^>
echo   ^<link rel="icon" type="image/png" sizes="32x32" href="/assets/images/favicons/favicon-32x32.png"^>
echo   ^<link rel="icon" type="image/png" sizes="16x16" href="/assets/images/favicons/favicon-16x16.png"^>
echo   ^<link rel="manifest" href="/manifest.json"^>
echo   ^<link rel="mask-icon" href="/assets/images/favicons/safari-pinned-tab.svg" color="#007bff"^>
echo   ^<meta name="msapplication-TileColor" content="#ffffff"^>
echo   ^<meta name="theme-color" content="#007bff"^>
echo.
echo   ^<!-- Social Media Meta Tags -->
echo   ^<?php App\SEO\SocialMeta::generate_open_graph_tags(
echo       $pageTitle,
echo       $pageDescription,
echo       $pageCanonical,
echo       $ogImage
echo   ); ?^>
echo   ^<?php App\SEO\SocialMeta::generate_twitter_card_tags(
echo       $pageTitle,
echo       $pageDescription,
echo       $ogImage
echo   ); ?^>
echo.
echo   ^<!-- Resource Hints -->
echo   ^<?php App\Performance\DnsPrefetch::output_dns_prefetch_links(); ?^>
echo   ^<?php App\Performance\Preconnect::output_preconnect_links(); ?^>
echo   ^<?php App\Performance\Preload::output_preload_links(); ?^>
echo.
echo   ^<!-- Critical CSS (inline for FCP) -->
echo   ^<style^>
echo     ^<?php
echo     $criticalCssPath = __DIR__ . '/../public/assets/css/critical.css';
echo     if (file_exists($criticalCssPath)) {
echo         echo file_get_contents($criticalCssPath);
echo     }
echo     ?^>
echo   ^</style^>
echo.
echo   ^<!-- Main CSS -->
echo   ^<link rel="stylesheet" href="/assets/css/main.css"^>
echo.
echo   ^<!-- Google Tag Manager (Head part) -->
echo   ^<?php App\Marketing\GoogleTagManager::headSnippet(); ?^>
echo.
echo   ^<!-- Schema.org JSON-LD -->
echo   ^<?php echo App\SEO\SchemaOrganization::generate_organization_schema(
echo       SITE_NAME,
echo       SITE_URL,
echo       SITE_URL . '/assets/images/logo.svg',
echo       ADDRESS,
echo       PHONE,
echo       EMAIL,
echo       ['https://www.facebook.com/YourCompanyBV', 'https://twitter.com/YourCompanyBV', 'https://www.linkedin.com/company/yourcompanybv']
echo   ); ?^>
echo   ^<?php // echo App\SEO\SchemaLocalBusiness::generate_local_business_schema(); // Uncomment if applicable ?^>
echo.
echo ^</head^>
) > head.php

REM includes/header.php
(
echo ^<?php
echo // Ensure SITE_NAME and SITE_URL are defined in config.php
echo require_once __DIR__ . '/config.php';
echo ?^>
echo ^<header class="site-header"^>
echo   ^<div class="container"^>
echo     ^<div class="logo"^>
echo       ^<a href="^<?php echo SITE_URL; ?^>" title="^<?php echo SITE_NAME; ?^> Home"^>
echo         ^<img src="/assets/images/logo.svg" alt="^<?php echo SITE_NAME; ?^> Logo"^>
echo       ^</a^>
echo     ^</div^>
echo.
echo     ^<nav class="main-nav" id="main-navigation"^>
echo       ^<ul^>
echo         ^<li^>^<a href="^<?php echo SITE_URL; ?^>" class="^<?php echo (basename(^$_SERVER['PHP_SELF']) == 'index.php') ? 'active' : ''; ?^>"^>Home^</a^>^</li^>
echo         ^<li^>^<a href="/pages/blog.php" class="^<?php echo (strpos(^$_SERVER['PHP_SELF'], 'blog') !== false) ? 'active' : ''; ?^>"^>Blog^</a^>^</li^>
echo         ^<li^>^<a href="/pages/contact.php" class="^<?php echo (basename(^$_SERVER['PHP_SELF']) == 'contact.php') ? 'active' : ''; ?^>"^>Contact^</a^>^</li^>
echo         ^<!-- Add more navigation items here -->
echo       ^</ul^>
echo     ^</nav^>
echo.
echo     ^<div class="header-actions"^>
echo       ^<button class="mobile-menu-toggle" id="mobile-menu-toggle" aria-label="Open mobiel menu"^>
echo         ^<span aria-hidden="true"^>&#9776;^</span^>
echo       ^</button^>
echo       ^<a href="/pages/contact.php" class="btn btn-primary d-none d-md-inline-block"^>Vraag Offerte Aan^</a^>
echo     ^</div^>
echo   ^</div^>
echo   ^<!-- Mobile Navigation Overlay (hidden by default) -->
echo   ^<nav class="mobile-nav-overlay" id="mobile-nav-overlay" aria-hidden="true"^>
echo     ^<div class="mobile-nav-header"^>
echo       ^<button class="mobile-menu-close" id="mobile-menu-close" aria-label="Sluit mobiel menu"^>
echo         ^<span aria-hidden="true"^>&times;^</span^>
echo       ^</button^>
echo     ^</div^>
echo     ^<ul class="mobile-nav-links"^>
echo       ^<li^>^<a href="^<?php echo SITE_URL; ?^>"^>Home^</a^>^</li^>
echo       ^<li^>^<a href="/pages/blog.php"^>Blog^</a^>^</li^>
echo       ^<li^>^<a href="/pages/contact.php"^>Contact^</a^>^</li^>
echo       ^<!-- Add more mobile navigation items here -->
echo       ^<li^>^<a href="/pages/contact.php" class="btn btn-primary mt-3"^>Vraag Offerte Aan^</a^>^</li^>
echo     ^</ul^>
echo   ^</nav^>
echo ^</header^>
) > header.php

REM includes/footer.php
(
echo ^<?php
echo // Ensure SITE_NAME, SITE_URL, EMAIL, PHONE, ADDRESS are defined in config.php
echo require_once __DIR__ . '/config.php';
echo.
echo // Load marketing scripts and core JS
echo require_once __DIR__ . '/marketing/google-tag-manager.php';
echo require_once __DIR__ . '/marketing/facebook-pixel.php';
echo require_once __DIR__ . '/marketing/linkedin-insight.php';
echo ?^>
echo ^<footer class="site-footer"^>
echo   ^<div class="container"^>
echo     ^<div class="footer-row"^>
echo       ^<div class="footer-col about-us"^>
echo         ^<h3^>Over ^<?php echo SITE_NAME; ?^>^</h3^>
echo         ^<p^>YourCompany BV levert innovatieve en duurzame IT-oplossingen die uw bedrijf vooruit helpen. Met expertise en passie bouwen we aan de digitale toekomst.^</p^>
echo         ^<div class="social-links"^>
echo           ^<a href="https://www.facebook.com/YourCompanyBV" target="_blank" rel="noopener noreferrer" aria-label="Facebook"^>^<i class="fab fa-facebook-f"^>^</i^>^</a^>
echo           ^<a href="https://twitter.com/YourCompanyBV" target="_blank" rel="noopener noreferrer" aria-label="Twitter"^>^<i class="fab fa-twitter"^>^</i^>^</a^>
echo           ^<a href="https://www.linkedin.com/company/yourcompanybv" target="_blank" rel="noopener noreferrer" aria-label="LinkedIn"^>^<i class="fab fa-linkedin-in"^>^</i^>^</a^>
echo           ^<a href="https://www.instagram.com/YourCompanyBV" target="_blank" rel="noopener noreferrer" aria-label="Instagram"^>^<i class="fab fa-instagram"^>^</i^>^</a^>
echo         ^</div^>
echo       ^</div^>
echo.
echo       ^<div class="footer-col navigation"^>
echo         ^<h3^>Snel naar^</h3^>
echo         ^<ul^>
echo           ^<li^>^<a href="^<?php echo SITE_URL; ?^>/pages/blog.php"^>Blog^</a^>^</li^>
echo           ^<li^>^<a href="^<?php echo SITE_URL; ?^>/pages/contact.php"^>Contact^</a^>^</li^>
echo           ^<li^>^<a href="^<?php echo SITE_URL; ?^>/#services"^>Diensten^</a^>^</li^>
echo           ^<li^>^<a href="^<?php echo SITE_URL; ?^>/#projects"^>Projecten^</a^>^</li^>
echo         ^</ul^>
echo       ^</div^>
echo.
echo       ^<div class="footer-col legal-info"^>
echo         ^<h3^>Juridisch^</h3^>
echo         ^<ul^>
echo           ^<li^>^<a href="^<?php echo SITE_URL; ?^>/pages/privacybeleid.php"^>Privacybeleid^</a^>^</li^>
echo           ^<li^>^<a href="^<?php echo SITE_URL; ?^>/pages/cookiebeleid.php"^>Cookiebeleid^</a^>^</li^>
echo           ^<li^>^<a href="^<?php echo SITE_URL; ?^>/pages/voorwaarden.php"^>Algemene Voorwaarden^</a^>^</li^>
echo           ^<li^>^<a href="^<?php echo SITE_URL; ?^>/pages/disclaimer.php"^>Disclaimer^</a^>^</li^>
echo           ^<li^>^<a href="^<?php echo SITE_URL; ?^>/pages/toegankelijkheid.php"^>Toegankelijkheid^</a^>^</li^>
echo         ^</ul^>
echo       ^</div^>
echo.
echo       ^<div class="footer-col contact-details"^>
echo         ^<h3^>Contacteer ons^</h3^>
echo         ^<p^>Adres: ^<?php echo ADDRESS; ?^>^</p^>
echo         ^<p^>Telefoon: ^<a href="tel:^<?php echo PHONE; ?^>"^>^<?php echo PHONE; ?^>^</a^>^</p^>
echo         ^<p^>E-mail: ^<a href="mailto:^<?php echo EMAIL; ?^>"^>^<?php echo EMAIL; ?^>^</a^>^</p^>
echo       ^</div^>
echo     ^</div^>
echo.
echo     ^<div class="footer-bottom"^>
echo       ^<p^>&copy; ^<?php echo date('Y'); ?^> ^<?php echo SITE_NAME; ?^>. Alle rechten voorbehouden.^</p^>
echo     ^</div^>
echo   ^</div^>
echo   ^<button id="back-to-top" aria-label="Naar boven scrollen"^>^<i class="fas fa-arrow-up"^>^</i^>^</button^>
echo ^</footer^>
echo.
echo ^<!-- Font Awesome for icons -->
echo ^<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/js/all.min.js" integrity="sha512-u3fPA7V8qQmhBPNT5quVAhg4MNXaNeXTaPO+LwDgpxPTncHWPJqWmpLk2RhfjkWnNmsjjtdiZmUSIDWP1gA5Vw==" crossorigin="anonymous" referrerpolicy="no-referrer" async^>^</script^>
echo.
echo ^<!-- Main Application JavaScript -->
echo ^<script src="/assets/js/app.js" type="module"^>^</script^>
echo ^<script src="/assets/js/lazy-loading.js" type="module"^>^</script^>
echo ^<script src="/assets/js/cookie-consent.js" type="module"^>^</script^>
echo ^<script src="/assets/js/analytics.js" type="module"^>^</script^>
echo ^<script src="/assets/js/web-vitals.js" type="module"^>^</script^>
echo ^<script src="/assets/js/gtm.js" type="module"^>^</script^>
echo ^<script src="/assets/js/conversion-tracking.js" type="module"^>^</script^>
echo ^<script src="/assets/js/search.js" type="module"^>^</script^>
echo.
echo ^<!-- Google Tag Manager (Body part) -->
echo ^<?php App\Marketing\GoogleTagManager::bodySnippet(); ?^>
) > footer.php

REM includes/config.php
(
echo ^<?php
echo.
echo // Load environment variables from .env file
echo require_once __DIR__ . '/../vendor/autoload.php';
echo $dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . '/../config');
echo $dotenv->load();
echo.
echo // Define application constants
echo define('APP_ENV', ^$_ENV['APP_ENV'] ?? 'development'); // development, production, testing
echo define('SITE_URL', ^$_ENV['SITE_URL'] ?? 'http://localhost');
echo define('SITE_NAME', 'YourCompany BV');
echo define('EMAIL', 'info@yourcompany.nl');
echo define('PHONE', '+31 20 123 4567');
echo define('ADDRESS', 'Hoofdstraat 123, 1234 AB Amsterdam');
echo.
echo define('DB_HOST', ^$_ENV['DB_HOST'] ?? 'localhost');
echo define('DB_NAME', ^$_ENV['DB_NAME'] ?? 'yourcompany_db');
echo define('DB_USER', ^$_ENV['DB_USER'] ?? 'root');
echo define('DB_PASS', ^$_ENV['DB_PASS'] ?? '');
echo.
echo define('GTM_ID', ^$_ENV['GTM_ID'] ?? 'GTM-XXXXXXX');
echo define('FB_PIXEL_ID', ^$_ENV['FB_PIXEL_ID'] ?? '1234567890');
echo define('LI_PARTNER_ID', ^$_ENV['LI_PARTNER_ID'] ?? '123456');
echo.
echo // Error reporting based on environment
echo if (APP_ENV === 'development') {
echo     error_reporting(E_ALL);
echo     ini_set('display_errors', '1');
echo } else {
echo     error_reporting(E_ALL ^& ~E_DEPRECATED ^& ~E_STRICT);
echo     ini_set('display_errors', '0');
echo     ini_set('log_errors', '1');
echo     ini_set('error_log', __DIR__ . '/../logs/error.log');
echo }
echo.
echo // Set default timezone
echo date_default_timezone_set('Europe/Amsterdam');
echo.
echo // Start session if not already started
echo if (session_status() === PHP_SESSION_NONE) {
echo     session_start();
echo }
echo.
echo // Include main utility functions (auto-loaded via composer.json 'files' array)
echo // require_once __DIR__ . '/functions.php';
echo.
echo // Autoload all PHP classes via Composer
echo // Composer's autoloader handles this: require_once __DIR__ . '/../vendor/autoload.php';
) > config.php

REM includes/functions.php
(
echo ^<?php
echo.
echo namespace App;
echo.
echo use HTMLPurifier_Config;
echo use HTMLPurifier;
echo.
echo class Functions {
echo     /**
echo      * Sanitizes input data.
echo      *
echo      * @param string $data The input string to sanitize.
echo      * @return string The sanitized string.
echo      */
echo     public static function sanitize_input(string $data): string {
echo         $data = trim($data);
echo         $data = stripslashes($data);
echo         $data = htmlspecialchars($data, ENT_QUOTES, 'UTF-8');
echo         return $data;
echo     }
echo.
echo     /**
echo      * Validates an email address.
echo      *
echo      * @param string $email The email address to validate.
echo      * @return bool True if the email is valid, false otherwise.
echo      */
echo     public static function validate_email(string $email): bool {
echo         return filter_var($email, FILTER_VALIDATE_EMAIL) !== false;
echo     }
echo.
echo     /**
echo      * Generates a CSRF token and stores it in the session.
echo      *
echo      * @return string The generated CSRF token.
echo      */
echo     public static function generate_csrf_token(): string {
echo         if (empty(^$_SESSION['csrf_token'])) {
echo             ^$_SESSION['csrf_token'] = bin2hex(random_bytes(32));
echo         }
echo         return ^$_SESSION['csrf_token'];
echo     }
echo.
echo     /**
echo      * Verifies a CSRF token.
echo      *
echo      * @param string $token The token submitted by the user.
echo      * @return bool True if the token is valid, false otherwise.
echo      */
echo     public static function verify_csrf_token(string $token): bool {
echo         if (isset(^$_SESSION['csrf_token']) ^&& hash_equals(^$_SESSION['csrf_token'], $token)) {
echo             unset(^$_SESSION['csrf_token']); // Token should be single-use
echo             return true;
echo         }
echo         return false;
echo     }
echo.
echo     /**
echo      * Formats a date string to a human-readable format.
echo      *
echo      * @param string $dateString The date string (e.g., 'YYYY-MM-DD').
echo      * @param string $format The desired date format (default: 'd F Y').
echo      * @return string The formatted date.
echo      */
echo     public static function format_date(string $dateString, string $format = 'd F Y'): string {
echo         try {
echo             $date = new \DateTime($dateString);
echo             return $date->format($format);
echo         } catch (\Exception $e) {
echo             error_log("Date formatting error: " . $e->getMessage());
echo             return $dateString; // Return original string on error
echo         }
echo     }
echo.
echo     /**
echo      * Truncates a given text to a specified length, appending an ellipsis if truncated.
echo      *
echo      * @param string $text The text to truncate.
echo      * @param int $length The maximum length of the truncated text.
echo      * @param string $suffix The suffix to append if text is truncated (default: '...').
echo      * @return string The truncated text.
echo      */
echo     public static function truncate_text(string $text, int $length = 150, string $suffix = '...'): string {
echo         if (mb_strlen($text) ^<= $length) {
echo             return $text;
echo         }
echo         $truncated = mb_substr($text, 0, $length);
echo         // Ensure no half-words are cut
echo         $lastSpace = mb_strrpos($truncated, ' ');
echo         if ($lastSpace !== false) {
echo             $truncated = mb_substr($truncated, 0, $lastSpace);
echo         }
echo         return $truncated . $suffix;
echo     }
echo.
echo     /**
echo      * Retrieves blog posts from a JSON file.
echo      * In a real application, this would fetch from a database.
echo      *
echo      * @param int|null $limit Optional. The maximum number of posts to return.
echo      * @return array An array of blog post data.
echo      */
echo     public static function get_blog_posts(?int $limit = null): array {
echo         $postsPath = __DIR__ . '/../content/blog/posts.json';
echo         if (!file_exists($postsPath)) {
echo             error_log("Blog posts JSON file not found: " . $postsPath);
echo             return [];
echo         }
echo.
echo         $postsJson = file_get_contents($postsPath);
echo         $posts = json_decode($postsJson, true);
echo.
echo         if (json_last_error() !== JSON_ERROR_NONE) {
echo             error_log("Error decoding blog posts JSON: " . json_last_error_msg());
echo             return [];
echo         }
echo.
echo         // Sort by date (newest first)
echo         usort($posts, function($a, $b) {
echo             return strtotime($b['date']) ^<=> strtotime($a['date']);
echo         });
echo.
echo         if ($limit !== null ^&& $limit > 0) {
echo             return array_slice($posts, 0, $limit);
echo         }
echo.
echo         return $posts;
echo     }
echo }
) > functions.php

REM includes/blog/post-card.php
(
echo ^<?php
echo // Requires $post variable to be set, e.g., from App\Functions::get_blog_posts()
echo if (!isset($post) ^|| !is_array($post)) {
echo     return; // Silently exit if no valid post data
echo }
echo.
echo $postUrl = '/pages/blog-post.php?id=' . htmlspecialchars($post['id']);
echo $imageUrl = htmlspecialchars($post['image'] ?? '/assets/images/blog/sample-blog-post-image.jpg');
echo $title = htmlspecialchars($post['title'] ?? 'Onbekende Titel');
echo $summary = App\Functions::truncate_text(strip_tags($post['content'] ?? 'Geen samenvatting beschikbaar.'), 120);
echo $date = App\Functions::format_date($post['date'] ?? date('Y-m-d'));
echo $author = htmlspecialchars($post['author'] ?? 'Redactie');
echo $category = htmlspecialchars($post['category'] ?? 'Algemeen');
echo ?^>
echo ^<div class="blog-post-card"^>
echo   ^<a href="^<?php echo $postUrl; ?^>" title="Lees meer over ^<?php echo $title; ?^>"^>
echo     ^<img src="^<?php echo $imageUrl; ?^>" alt="^<?php echo $title; ?^>" loading="lazy"^>
echo   ^</a^>
echo   ^<div class="blog-post-card-content"^>
echo     ^<div class="post-meta-card mb-2"^>
echo       ^<span class="category-tag"^>^<?php echo $category; ?^>^</span^>
echo       ^<span class="post-date"^>^<?php echo $date; ?^>^</span^>
echo     ^</div^>
echo     ^<h3^>^<a href="^<?php echo $postUrl; ?^>"^>^<?php echo $title; ?^>^</a^>^</h3^>
echo     ^<p^>^<?php echo $summary; ?^>^</p^>
echo     ^<a href="^<?php echo $postUrl; ?^>" class="read-more"^>Lees meer ^&raquo;^</a^>
echo   ^</div^>
echo ^</div^>
) > blog/post-card.php

REM includes/blog/pagination.php
(
echo ^<?php
echo // Requires $currentPage, $totalPages, $paginationBaseUrl, $paginationParams (optional array)
echo if (!isset($currentPage, $totalPages, $paginationBaseUrl) ^|| $totalPages ^<= 1) {
echo     return;
echo }
echo.
echo $range = 2; // Number of pages to show around the current page
echo $params = http_build_query($paginationParams ?? []);
echo $queryStringSeparator = empty($params) ? '?' : '&';
echo ?^>
echo ^<nav aria-label="Blog paginatie" class="pagination-nav mt-5"^>
echo   ^<ul class="pagination justify-content-center"^>
echo     ^<?php if ($currentPage > 1): ?^>
echo       ^<li class="page-item"^>
echo         ^<a class="page-link" href="^<?php echo htmlspecialchars($paginationBaseUrl . (empty($params) ? '' : '?' . $params) . (empty($params) ? '?' : '&') . 'p=1'); ?^>" aria-label="Eerste pagina"^>
echo           ^<span aria-hidden="true"^>^&laquo;^</span^>
echo         ^</a^>
echo       ^</li^>
echo       ^<li class="page-item"^>
echo         ^<a class="page-link" href="^<?php echo htmlspecialchars($paginationBaseUrl . (empty($params) ? '' : '?' . $params) . (empty($params) ? '?' : '&') . 'p=' . ($currentPage - 1)); ?^>" aria-label="Vorige pagina"^>
echo           ^<span aria-hidden="true"^>Vorige^</span^>
echo         ^</a^>
echo       ^</li^>
echo     ^<?php endif; ?^>
echo.
echo     ^<?php for ($i = 1; $i ^<= $totalPages; $i++): ?^>
echo       ^<?php
echo       // Only show pages around the current page, plus first/last
echo       if ($i == 1 ^|| $i == $totalPages ^|| ($i ^>= $currentPage - $range ^&& $i ^<= $currentPage + $range)):
echo       ?^>
echo         ^<li class="page-item ^<?php echo ($i === $currentPage) ? 'active' : ''; ?^>"^>
echo           ^<a class="page-link" href="^<?php echo htmlspecialchars($paginationBaseUrl . (empty($params) ? '' : '?' . $params) . $queryStringSeparator . 'p=' . $i); ?^>"^>
echo             ^<?php echo $i; ?^>
echo           ^</a^>
echo         ^</li^>
echo       ^<?php elseif (($i == $currentPage - $range - 1 ^&& $i > 1) ^|| ($i == $currentPage + $range + 1 ^&& $i ^< $totalPages)): ?^>
echo         ^<li class="page-item disabled"^>^<span class="page-link"^>...^</span^>^</li^>
echo       ^<?php endif; ?^>
echo     ^<?php endfor; ?^>
echo.
echo     ^<?php if ($currentPage ^< $totalPages): ?^>
echo       ^<li class="page-item"^>
echo         ^<a class="page-link" href="^<?php echo htmlspecialchars($paginationBaseUrl . (empty($params) ? '' : '?' . $params) . (empty($params) ? '?' : '&') . 'p=' . ($currentPage + 1)); ?^>" aria-label="Volgende pagina"^>
echo           ^<span aria-hidden="true"^>Volgende^</span^>
echo         ^</a^>
echo       ^</li^>
echo       ^<li class="page-item"^>
echo         ^<a class="page-link" href="^<?php echo htmlspecialchars($paginationBaseUrl . (empty($params) ? '' : '?' . $params) . (empty($params) ? '?' : '&') . 'p=' . $totalPages); ?^>" aria-label="Laatste pagina"^>
echo           ^<span aria-hidden="true"^>^&raquo;^</span^>
echo         ^</a^>
echo       ^</li^>
echo     ^<?php endif; ?^>
echo   ^</ul^>
echo ^</nav^>
) > blog/pagination.php

REM includes/blog/related-posts.php
(
echo ^<?php
echo.
echo namespace App\Blog;
echo.
echo use App\Functions;
echo.
echo class RelatedPosts {
echo     /**
echo      * Retrieves related blog posts based on common tags or category.
echo      *
echo      * @param array $currentPost The current blog post array.
echo      * @param int $limit The maximum number of related posts to return.
echo      * @return array An array of related blog post data.
echo      */
echo     public static function get_related_posts(array $currentPost, int $limit = 3): array {
echo         $allPosts = Functions::get_blog_posts();
echo         $relatedPosts = [];
echo         $currentPostId = $currentPost['id'] ?? null;
echo         $currentPostTags = $currentPost['tags'] ?? [];
echo         $currentPostCategory = $currentPost['category'] ?? null;
echo.
echo         if (!$currentPostId) {
echo             return [];
echo         }
echo.
echo         // Score posts based on relevance
echo         $scoredPosts = [];
echo         foreach ($allPosts as $post) {
echo             if ($post['id'] === $currentPostId) {
echo                 continue; // Exclude the current post itself
echo             }
echo.
echo             $score = 0;
echo             // Boost score for common tags
echo             $commonTags = array_intersect($currentPostTags, $post['tags'] ?? []);
echo             $score += count($commonTags) * 2; // Each common tag adds 2 points
echo.
echo             // Boost score for same category
echo             if ($currentPostCategory ^&& isset($post['category']) ^&& strtolower($post['category']) === strtolower($currentPostCategory)) {
echo                 $score += 5; // Same category adds 5 points
echo             }
echo.
echo             if ($score > 0) {
echo                 $scoredPosts[] = ['post' => $post, 'score' => $score];
echo             }
echo         }
echo.
echo         // Sort by score in descending order
echo         usort($scoredPosts, function($a, $b) {
echo             return $b['score'] ^<=> $a['score'];
echo         });
echo.
echo         // Extract posts and limit
echo         foreach ($scoredPosts as $scoredPost) {
echo             $relatedPosts[] = $scoredPost['post'];
echo             if (count($relatedPosts) ^>= $limit) {
echo                 break;
echo             }
echo         }
echo.
echo         return $relatedPosts;
echo     }
echo }
) > blog/related-posts.php

REM includes/forms/contact-handler.php
(
echo ^<?php
echo.
echo namespace App\Forms;
echo.
echo use App\Config;
echo use App\Functions;
echo use PHPMailer\PHPMailer\PHPMailer;
echo use PHPMailer\PHPMailer\Exception as PHPMailerException;
echo use Monolog\Logger;
echo use Monolog\Handler\StreamHandler;
echo.
echo class ContactHandler {
echo     private static Logger ^$logger;
echo.
echo     public static function initializeLogger() {
echo         if (!isset(self::^$logger)) {
echo             self::^$logger = new Logger('contact_form');
echo             self::^$logger->pushHandler(new StreamHandler(__DIR__ . '/../../logs/security.log', Logger::INFO));
echo             self::^$logger->pushHandler(new StreamHandler(__DIR__ . '/../../logs/error.log', Logger::ERROR));
echo         }
echo     }
echo.
echo     /**
echo      * Handles the submission of the contact form.
echo      * Assumes input has already been sanitized and validated.
echo      *
echo      * @param array $formData An associative array containing form data (name, email, phone, subject, message).
echo      * @return bool True if the form was successfully processed (email sent), false otherwise.
echo      */
echo     public static function handleSubmission(array $formData): bool {
echo         self::initializeLogger();
echo.
echo         $name = $formData['name'];
echo         $email = $formData['email'];
echo         $phone = $formData['phone'];
echo         $subject = $formData['subject'];
echo         $message = $formData['message'];
echo.
echo         // Prepare emails for admin and user
echo         $adminEmailSubject = "Nieuw contactformulier ingediend van " . Functions::sanitize_input($name);
echo         $userEmailSubject = "Bevestiging van uw bericht aan YourCompany BV";
echo.
echo         $adminEmailBody = self::getAdminNotificationEmail($name, $email, $phone, $subject, $message);
echo         $userEmailBody = self::getUserConfirmationEmail($name, $subject, $message);
echo.
echo         try {
echo             // Send email to admin
echo             self::sendEmail(Config::EMAIL, $adminEmailSubject, $adminEmailBody, $email, $name);
echo.
echo             // Send confirmation email to user
echo             self::sendEmail($email, $userEmailSubject, $userEmailBody, Config::EMAIL, Config::SITE_NAME);
echo.
echo             self::^$logger->info("Contact form submitted successfully by " . $email);
echo             return true;
echo         } catch (PHPMailerException $e) {
echo             self::^$logger->error("Failed to send contact form email: " . $e->getMessage(), ['email' => $email, 'subject' => $subject]);
echo             return false;
echo         } catch (\Exception $e) {
echo             self::^$logger->error("General error in contact form submission: " . $e->getMessage(), ['email' => $email, 'subject' => $subject]);
echo             return false;
echo         }
echo     }
echo.
echo     /**
echo      * Sends an email using PHPMailer.
echo      *
echo      * @param string $to Email address of the recipient.
echo      * @param string $subject Subject of the email.
echo      * @param string $body HTML body of the email.
echo      * @param string $fromEmail Email address of the sender.
echo      * @param string $fromName Name of the sender.
echo      * @throws PHPMailerException If email sending fails.
echo      */
echo     private static function sendEmail(string $to, string $subject, string $body, string $fromEmail, string $fromName): void {
echo         $mail = new PHPMailer(true); // Enable exceptions
echo         try {
echo             // Server settings
echo             $mail->isSMTP();
echo             $mail->Host = ^$_ENV['SMTP_HOST'];
echo             $mail->SMTPAuth = true;
echo             $mail->Username = ^$_ENV['SMTP_USER'];
echo             $mail->Password = ^$_ENV['SMTP_PASS'];
echo             $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Use ENCRYPTION_SMTPS for SSL/465
echo             $mail->Port = 587; // 465 for SSL, 587 for TLS
echo             $mail->CharSet = 'UTF-8';
echo.
echo             // Recipients
echo             $mail->setFrom($fromEmail, $fromName);
echo             $mail->addAddress($to);
echo             $mail->addReplyTo($fromEmail, $fromName);
echo.
echo             // Content
echo             $mail->isHTML(true);
echo             $mail->Subject = $subject;
echo             $mail->Body = $body;
echo             $mail->AltBody = strip_tags($body); // Plain text for non-HTML mail clients
echo.
echo             $mail->send();
echo         } catch (PHPMailerException $e) {
echo             throw new PHPMailerException("Mailer Error: " . $mail->ErrorInfo . " | " . $e->getMessage());
echo         }
echo     }
echo.
echo     /**
echo      * Generates the HTML body for the admin notification email.
echo      *
echo      * @param string $name
echo      * @param string $email
echo      * @param string $phone
echo      * @param string $subject
echo      * @param string $message
echo      * @return string
echo      */
echo     private static function getAdminNotificationEmail(string $name, string $email, string $phone, string $subject, string $message): string {
echo         ob_start();
echo         include __DIR__ . '/../email/templates/contact-notification.php';
echo         return ob_get_clean();
echo     }
echo.
echo     /**
echo      * Generates the HTML body for the user confirmation email.
echo      *
echo      * @param string $name
echo      * @param string $subject
echo      * @param string $message
echo      * @return string
echo      */
echo     private static function getUserConfirmationEmail(string $name, string $subject, string $message): string {
echo         ob_start();
echo         include __DIR__ . '/../email/templates/contact-confirmation.php';
echo         return ob_get_clean();
echo     }
echo }
echo.
echo ContactHandler::initializeLogger(); // Initialize the logger when the class is loaded
) > forms/contact-handler.php

REM includes/forms/validator.php
(
echo ^<?php
echo.
echo namespace App\Forms;
echo.
echo use App\Security\InputValidation;
echo use App\Security\Sanitizer;
echo.
echo class Validator {
echo     private array ^$errors = [];
echo     private array ^$data;
echo.
echo     public function __construct(array $data) {
echo         $this->^$data = $data;
echo     }
echo.
echo     /**
echo      * Validates a field based on provided rules.
echo      *
echo      * @param string $field The name of the field to validate.
echo      * @param string $label A human-readable label for the field (for error messages).
echo      * @param array $rules An array of validation rules.
echo      * @return self
echo      */
echo     public function validate(string $field, string $label, array $rules): self {
echo         $value = $this->^$data[$field] ?? null;
echo.
echo         foreach ($rules as $rule => $param) {
echo             switch ($rule) {
echo                 case 'required':
echo                     if (InputValidation::validate_required($value)) {
echo                         $this->addError($field, sprintf('%s is verplicht.', $label));
echo                     }
echo                     break;
echo                 case 'email':
echo                     if (!InputValidation::validate_email($value)) {
echo                         $this->addError($field, sprintf('Vul een geldig e-mailadres in voor %s.', $label));
echo                     }
echo                     break;
echo                 case 'min_length':
echo                     if (!InputValidation::validate_min_length($value, $param)) {
echo                         $this->addError($field, sprintf('%s moet minimaal %d tekens lang zijn.', $label, $param));
echo                     }
echo                     break;
echo                 case 'max_length':
echo                     if (!InputValidation::validate_max_length($value, $param)) {
echo                         $this->addError($field, sprintf('%s mag maximaal %d tekens lang zijn.', $label, $param));
echo                     }
echo                     break;
echo                 case 'phone':
echo                     if (!empty($value) ^&& !InputValidation::validate_phone($value)) {
echo                         $this->addError($field, sprintf('Vul een geldig telefoonnummer in voor %s.', $label));
echo                     }
echo                     break;
echo                 case 'url':
echo                     if (!empty($value) ^&& !InputValidation::validate_url($value)) {
echo                         $this->addError($field, sprintf('Vul een geldige URL in voor %s.', $label));
echo                     }
echo                     break;
echo                 // Add more validation rules as needed
echo             }
echo         }
echo         return $this;
echo     }
echo.
echo     /**
echo      * Adds an error message for a specific field.
echo      *
echo      * @param string $field The field name.
echo      * @param string $message The error message.
echo      */
echo     private function addError(string $field, string $message): void {
echo         $this->^$errors[$field] = $message;
echo     }
echo.
echo     /**
echo      * Returns all validation errors.
echo      *
echo      * @return array An associative array of errors.
echo      */
echo     public function getErrors(): array {
echo         return $this->^$errors;
echo     }
echo.
echo     /**
echo      * Checks if there are any validation errors.
echo      *
echo      * @return bool True if there are errors, false otherwise.
echo      */
echo     public function fails(): bool {
echo         return !empty($this->^$errors);
echo     }
echo.
echo     /**
echo      * Sanitizes all data based on a defined scheme.
echo      *
echo      * @param array $data The input data to sanitize.
echo      * @param array $sanitizationMap An associative array where keys are field names and values are sanitization types ('string', 'email', 'url', 'html').
echo      * @return array The sanitized data.
echo      */
echo     public static function sanitizeAll(array $data, array $sanitizationMap): array {
echo         $sanitizedData = [];
echo         foreach ($data as $key => $value) {
echo             if (isset($sanitizationMap[$key])) {
echo                 switch ($sanitizationMap[$key]) {
echo                     case 'string':
echo                         $sanitizedData[$key] = Sanitizer::sanitize_string($value);
echo                         break;
echo                     case 'email':
echo                         $sanitizedData[$key] = Sanitizer::sanitize_email($value);
echo                         break;
echo                     case 'url':
echo                         $sanitizedData[$key] = Sanitizer::sanitize_url($value);
echo                         break;
echo                     case 'html':
echo                         $sanitizedData[$key] = Sanitizer::sanitize_html($value);
echo                         break;
echo                     default:
echo                         $sanitizedData[$key] = $value; // No specific sanitization, keep as is
echo                         break;
echo                 }
echo             } else {
echo                 $sanitizedData[$key] = Sanitizer::sanitize_string($value); // Default to string sanitization
echo             }
echo         }
echo         return $sanitizedData;
echo     }
echo }
) > forms/validator.php

REM includes/forms/spam-filter.php
(
echo ^<?php
echo.
echo namespace App\Forms;
echo.
echo use Monolog\Logger;
echo use Monolog\Handler\StreamHandler;
echo.
echo class SpamFilter {
echo     private static Logger ^$logger;
echo.
echo     public static function initializeLogger() {
echo         if (!isset(self::^$logger)) {
echo             self::^$logger = new Logger('spam_filter');
echo             self::^$logger->pushHandler(new StreamHandler(__DIR__ . '/../../logs/security.log', Logger::WARNING));
echo         }
echo     }
echo.
echo     /**
echo      * Checks for common spam indicators in form data.
echo      * This is a basic example; real spam filters are more complex.
echo      *
echo      * @param array $formData Associative array of form data.
echo      * @return bool True if spam is detected, false otherwise.
echo      */
echo     public static function isSpam(array $formData): bool {
echo         self::initializeLogger();
echo.
echo         // 1. Keyword check (simple example)
echo         $spamKeywords = ['buy now', 'cheap viagra', 'money back guarantee', 'forex', 'casino', 'porn', 'sex', 'investment', 'loan'];
echo         foreach ($formData as $key => $value) {
echo             if (is_string($value)) {
echo                 $valueLower = strtolower($value);
echo                 foreach ($spamKeywords as $keyword) {
echo                     if (strpos($valueLower, $keyword) !== false) {
echo                         self::^$logger->warning("Spam detected: Keyword '" . $keyword . "' found in field '" . $key . "'", ['ip' => ^$_SERVER['REMOTE_ADDR'] ?? 'N/A']);
echo                         return true;
echo                     }
echo                 }
echo             }
echo         }
echo.
echo         // 2. Link count check (too many links often indicates spam)
echo         $linkCount = 0;
echo         foreach ($formData as $value) {
echo             if (is_string($value)) {
echo                 // Regex to find common URL patterns
echo                 $linkCount += preg_match_all('/(http|https):\/\/[^\s]+/i', $value);
echo             }
echo         }
echo         $maxLinks = 3; // Allow up to 3 links
echo         if ($linkCount ^> $maxLinks) {
echo             self::^$logger->warning("Spam detected: Too many links (" . $linkCount . ") in form data", ['ip' => ^$_SERVER['REMOTE_ADDR'] ?? 'N/A']);
echo             return true;
echo         }
echo.
echo         // 3. Very long single lines or unusual characters (could indicate obfuscated spam)
echo         foreach ($formData as $key => $value) {
echo             if (is_string($value)) {
echo                 // Check for unusually long words without spaces
echo                 if (preg_match('/\b[a-zA-Z0-9]{50,}\b/', $value)) {
echo                     self::^$logger->warning("Spam detected: Very long word in field '" . $key . "'", ['ip' => ^$_SERVER['REMOTE_ADDR'] ?? 'N/A']);
echo                     return true;
echo                 }
echo                 // Check for excessive non-alphanumeric characters (could be base64 encoded, etc.)
echo                 $alphanumCount = preg_match_all('/[a-zA-Z0-9\s]/', $value);
echo                 $totalCharCount = mb_strlen($value);
echo                 if ($totalCharCount > 50 ^&& $alphanumCount / $totalCharCount ^< 0.5) { // Less than 50% alphanumeric
echo                     self::^$logger->warning("Spam detected: High ratio of special characters in field '" . $key . "'", ['ip' => ^$_SERVER['REMOTE_ADDR'] ?? 'N/A']);
echo                     return true;
echo                 }
echo             }
echo         }
echo.
echo         // More advanced spam checks could include:
echo         // - IP blacklists
echo         // - DNSBL lookups
echo         // - Time-based submission (too fast = bot)
echo         // - Machine learning models (external services)
echo.
echo         return false;
echo     }
echo }
echo.
echo SpamFilter::initializeLogger(); // Initialize the logger when the class is loaded
) > forms/spam-filter.php

REM includes/forms/honeypot.php
(
echo ^<?php
echo.
echo namespace App\Forms;
echo.
echo class Honeypot {
echo     /**
echo      * Generates a hidden honeypot field for spam protection.
echo      * Bots often fill out all fields, including hidden ones.
echo      *
echo      * @param string $fieldName A unique name for the honeypot field.
echo      * @param string $label Optional. A label for screen readers.
echo      * @return string The HTML for the honeypot field.
echo      */
echo     public static function generateHoneypotField(string $fieldName = 'website', string $label = 'Please leave this field empty'): string {
echo         // Use a common field name that bots might target, but make it hidden.
echo         $html = '^<div style="display: none; visibility: hidden; position: absolute; left: -9999px;">';
echo         $html .= '^<label for="' . htmlspecialchars($fieldName) . '">' . htmlspecialchars($label) . '</label>';
echo         $html .= '^<input type="text" id="' . htmlspecialchars($fieldName) . '" name="' . htmlspecialchars($fieldName) . '" autocomplete="off" tabindex="-1">';
echo         $html .= '^</div>';
echo         return $html;
echo     }
echo.
echo     /**
echo      * Checks if the honeypot field was filled, indicating a bot.
echo      *
echo      * @param string $fieldName The name of the honeypot field to check.
echo      * @return bool True if the honeypot field was filled (potential bot), false otherwise.
echo      */
echo     public static function checkHoneypotField(string $fieldName = 'website'): bool {
echo         // If the hidden field has any value, it's likely a bot.
echo         return !empty(^$_POST[$fieldName]);
echo     }
echo }
) > forms/honeypot.php

REM includes/email/templates/contact-notification.php
(
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo     ^<title^>Nieuw contactformulier ingediend^</title^>
echo     ^<style^>
echo         body { font-family: Arial, sans-serif; line-height: 1.6; color: #333; }
echo         .container { width: 100%%; max-width: 600px; margin: 0 auto; padding: 20px; background-color: #f9f9f9; border: 1px solid #ddd; }
echo         .header { background-color: #007bff; color: #ffffff; padding: 10px 20px; text-align: center; }
echo         .content { padding: 20px; }
echo         .content p { margin-bottom: 10px; }
echo         .content strong { color: #007bff; }
echo         .footer { margin-top: 20px; font-size: 0.8em; text-align: center; color: #666; }
echo         .button { display: inline-block; background-color: #007bff; color: #ffffff; padding: 10px 20px; text-decoration: none; border-radius: 5px; }
echo     ^</style^>
echo ^</head^>
echo ^<body^>
echo     ^<div class="container"^>
echo         ^<div class="header"^>
echo             ^<h2^>Nieuw contactformulier ingediend^</h2^>
echo         ^</div^>
echo         ^<div class="content"^>
echo             ^<p^>Beste beheerder,^</p^>
echo             ^<p^>Er is zojuist een nieuw bericht ingediend via het contactformulier op de website van YourCompany BV.^</p^>
echo             ^<p^>^<strong>Naam:^</strong^> ^<?php echo htmlspecialchars($name); ?^>^<br^>
echo                ^<strong>E-mail:^</strong^> ^<?php echo htmlspecialchars($email); ?^>^<br^>
echo                ^<strong>Telefoon:^</strong^> ^<?php echo htmlspecialchars($phone); ?^>^</p^>
echo             ^<p^>^<strong>Onderwerp:^</strong^> ^<?php echo htmlspecialchars($subject); ?^>^</p^>
echo             ^<p^>^<strong>Bericht:^</strong^>^</p^>
echo             ^<p style="border-left: 3px solid #007bff; padding-left: 10px; margin-left: 10px; background-color: #eaf6ff;"^>^<?php echo nl2br(htmlspecialchars($message)); ?^>^</p^>
echo             ^<p^>Met vriendelijke groet,^<br^>
echo             Het YourCompany BV Website Systeem^</p^>
echo         ^</div^>
echo         ^<div class="footer"^>
echo             ^<p^>Dit is een automatisch gegenereerd bericht. Antwoord niet op deze e-mail.^</p^>
echo             ^<p^>&copy; ^<?php echo date('Y'); ?^> YourCompany BV. Alle rechten voorbehouden.^</p^>
echo         ^</div^>
echo     ^</div^>
echo ^</body^>
echo ^</html^>
) > email/templates/contact-notification.php

REM includes/email/templates/contact-confirmation.php
(
echo ^<!DOCTYPE html^>
echo ^<html lang="nl"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo     ^<title^>Bevestiging van uw bericht^</title^>
echo     ^<style^>
echo         body { font-family: Arial, sans-serif; line-height: 1.6; color: #333; }
echo         .container { width: 100%%; max-width: 600px; margin: 0 auto; padding: 20px; background-color: #f9f9f9; border: 1px solid #ddd; }
echo         .header { background-color: #28a745; color: #ffffff; padding: 10px 20px; text-align: center; }
echo         .content { padding: 20px; }
echo         .content p { margin-bottom: 10px; }
echo         .content strong { color: #28a745; }
echo         .footer { margin-top: 20px; font-size: 0.8em; text-align: center; color: #666; }
echo         .button { display: inline-block; background-color: #007bff; color: #ffffff; padding: 10px 20px; text-decoration: none; border-radius: 5px; }
echo     ^</style^>
echo ^</head^>
echo ^<body^>
echo     ^<div class="container"^>
echo         ^<div class="header"^>
echo             ^<h2^>Bevestiging: Uw bericht is ontvangen^</h2^>
echo         ^</div^>
echo         ^<div class="content"^>
echo             ^<p^>Beste ^<?php echo htmlspecialchars($name); ?^>,^</p^>
echo             ^<p^>Hartelijk dank voor uw bericht aan YourCompany BV. We hebben uw aanvraag met onderwerp "^<strong>^<?php echo htmlspecialchars($subject); ?^>^</strong^>" in goede orde ontvangen.^</p^>
echo             ^<p^>We streven ernaar om binnen één werkdag te reageren. Hieronder vindt u een kopie van uw bericht ter referentie:^</p^>
echo             ^<p^>^<strong>Uw bericht:^</strong^>^</p^>
echo       ^<div class="message-preview"^>
echo         ^<p^>^<?php echo nl2br(htmlspecialchars($message)); ?^>^</p^>
echo       ^</div^>
echo       ^<p^>We nemen zo spoedig mogelijk contact met u op via ^<strong>^<?php echo htmlspecialchars($email); ?^>^</strong^>.^</p^>
echo       ^<p^>Mocht u in de tussentijd nog vragen hebben, dan kunt u altijd contact met ons opnemen via ^<a href="mailto:info@yourcompany.nl"^>info@yourcompany.nl^</a^> of telefonisch via ^<a href="tel:+31201234567"^>+31 20 123 4567^</a^>.^</p^>
echo       ^<p^>Met vriendelijke groet,^</p^>
echo       ^<p^>^<strong>YourCompany BV^</strong^>^<br^>
echo       Hoofdstraat 123, 1234 AB Amsterdam^<br^>
echo       ^<a href="https://yourcompany.nl"^>yourcompany.nl^</a^>^</p^>
echo       ^<p class="text-center"^>^<a href="/" class="button"^>Terug naar de homepage^</a^>^</p^>
echo     ^</div^>
echo   ^</div^>
echo   ^<style^>
echo     body { font-family: Arial, sans-serif; line-height: 1.6; color: #333; margin: 0; padding: 20px; background-color: #f4f4f4; }
echo     .container { max-width: 700px; margin: 20px auto; background: #fff; padding: 30px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
echo     .header { text-align: center; margin-bottom: 30px; }
echo     h2 { color: #0056b3; }
echo     .message-preview { border-left: 4px solid #0056b3; padding-left: 15px; margin: 20px 0; background-color: #f9f9f9; padding: 15px; border-radius: 4px; }
echo     .button { display: inline-block; background-color: #0056b3; color: #fff; padding: 10px 20px; text-decoration: none; border-radius: 5px; margin-top: 20px; }
echo     .button:hover { background-color: #004494; }
echo     .text-center { text-align: center; }
echo     a { color: #0056b3; text-decoration: none; }
echo     a:hover { text-decoration: underline; }
echo   ^</style^>
echo ^</body^>
echo ^</html^>