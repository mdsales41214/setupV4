@echo off
chcp 65001 >nul
color 0A
echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║                                                                ║
echo ║        Professional Website Structure Generator v2.0           ║
echo ║        Complete 80+ File Deployment System                     ║
echo ║                                                                ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.
echo [INFO] This script will create a complete professional website structure
echo [INFO] Location: %CD%\website\
echo.
pause

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 1: Creating Root Directory Structure
echo ════════════════════════════════════════════════════════════════
echo.

REM Create main website directory
mkdir website 2>nul
cd website

REM Create all main directories
echo [1/15] Creating main folders...
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
echo ✓ Main folders created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 2: Creating Public Folder Structure
echo ════════════════════════════════════════════════════════════════
echo.

echo [2/15] Building public directory...
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
echo ✓ Public structure created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 3: Creating Includes Folder Structure
echo ════════════════════════════════════════════════════════════════
echo.

echo [3/15] Building includes directory...
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
echo ✓ Includes structure created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 4: Creating Content Structure
echo ════════════════════════════════════════════════════════════════
echo.

echo [4/15] Building content directory...
cd content
mkdir blog 2>nul
cd blog
mkdir posts 2>nul
cd ..
cd ..
echo ✓ Content structure created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 5: Creating Source Files Structure
echo ════════════════════════════════════════════════════════════════
echo.

echo [5/15] Building src directory...
cd src
mkdir scss 2>nul
mkdir js 2>nul

cd js
mkdir modules 2>nul
mkdir utils 2>nul
cd ..

cd ..
echo ✓ Source structure created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 6: Creating Backup Directories
echo ════════════════════════════════════════════════════════════════
echo.

echo [6/15] Building backup structure...
cd backups
mkdir daily 2>nul
mkdir weekly 2>nul
mkdir monthly 2>nul
cd ..
echo ✓ Backup structure created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 7: Creating Root Configuration Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [7/15] Generating root files...

REM .gitignore
echo. > .gitignore

REM .editorconfig
echo. > .editorconfig

REM .prettierrc
echo. > .prettierrc

REM .eslintrc.json
echo. > .eslintrc.json

REM package.json
echo. > package.json

REM package-lock.json
echo. > package-lock.json

REM composer.json
echo. > composer.json

REM composer.lock
echo. > composer.lock

REM gulpfile.js
echo. > gulpfile.js

REM lighthouse.config.js
echo. > lighthouse.config.js

REM README.md
echo. > README.md

REM CHANGELOG.md
echo. > CHANGELOG.md

REM LICENSE
echo. > LICENSE

echo ✓ Root configuration files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 8: Creating Public Root Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [8/15] Generating public root files...
cd public

echo. > index.php
echo. > robots.txt
echo. > sitemap.xml
echo. > security.txt
echo. > humans.txt
echo. > browserconfig.xml
echo. > manifest.json
echo. > service-worker.js
echo. > offline.html
echo. > 404.html
echo. > ads.txt
echo. > app-ads.txt
echo. > feed.xml

cd .well-known
echo. > security.txt
cd ..

echo ✓ Public root files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 9: Creating CSS Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [9/15] Generating CSS files...
cd assets\css

echo. > critical.css
echo. > main.css

cd ..\..
echo ✓ CSS files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 10: Creating JavaScript Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [10/15] Generating JavaScript files...
cd assets\js

echo. > app.js
echo. > lazy-loading.js
echo. > cookie-consent.js
echo. > analytics.js
echo. > web-vitals.js
echo. > performance.js
echo. > gtm.js
echo. > conversion-tracking.js
echo. > search.js

cd ..\..
echo ✓ JavaScript files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 11: Creating Image Placeholders
echo ════════════════════════════════════════════════════════════════
echo.

echo [11/15] Creating image placeholders...
cd assets\images

echo. > logo.svg
echo. > og-image.jpg

cd favicons
echo. > favicon.ico
echo. > favicon-16x16.png
echo. > favicon-32x32.png
echo. > apple-touch-icon.png
echo. > android-chrome-192x192.png
echo. > android-chrome-512x512.png
echo. > mstile-144x144.png
echo. > safari-pinned-tab.svg
cd ..

cd blog
echo. > .gitkeep
cd ..

cd ..
echo ✓ Image placeholders created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 12: Creating Font Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [12/15] Creating font placeholders...
cd assets\fonts

echo. > inter-var.woff2

cd ..\..
echo ✓ Font files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 13: Creating Upload Directories
echo ════════════════════════════════════════════════════════════════
echo.

echo [13/15] Setting up upload directories...
cd assets\uploads

echo. > .gitkeep

cd optimized
echo. > .gitkeep
cd ..

cd ..\..
echo ✓ Upload directories created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 14: Creating Page Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [14/15] Generating page files...
cd pages

echo. > contact.php
echo. > privacybeleid.php
echo. > voorwaarden.php
echo. > cookiebeleid.php
echo. > toegankelijkheid.php
echo. > disclaimer.php
echo. > blog.php
echo. > blog-post.php
echo. > blog-category.php

cd ..
cd ..
echo ✓ Page files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 15: Creating Include Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [15/15] Generating include files...
cd includes

REM Main includes
echo. > head.php
echo. > header.php
echo. > footer.php
echo. > config.php
echo. > functions.php

REM Blog includes
cd blog
echo. > post-card.php
echo. > pagination.php
echo. > related-posts.php
cd ..

REM Form includes
cd forms
echo. > contact-handler.php
echo. > validator.php
echo. > spam-filter.php
echo. > honeypot.php
cd ..

REM Email templates
cd email\templates
echo. > contact-notification.php
echo. > contact-confirmation.php
cd ..\..

REM Security includes
cd security
echo. > headers.php
echo. > sanitizer.php
echo. > rate-limiter.php
echo. > csrf-token.php
echo. > file-upload.php
echo. > input-validation.php
cd ..

REM Performance includes
cd performance
echo. > dns-prefetch.php
echo. > preconnect.php
echo. > preload.php
echo. > cache-control.php
echo. > minification.php
cd ..

REM Marketing includes
cd marketing
echo. > google-tag-manager.php
echo. > facebook-pixel.php
echo. > linkedin-insight.php
cd ..

REM Search includes
cd search
echo. > search-engine.php
echo. > search-index.json
echo. > search-suggestions.php
cd ..

REM SEO includes
cd seo
echo. > meta-tags.php
echo. > structured-data.php
echo. > schema-organization.php
echo. > schema-localbusiness.php
echo. > schema-faq.php
echo. > schema-breadcrumb.php
echo. > schema-article.php
echo. > schema-product.php
echo. > canonical-urls.php
echo. > social-meta.php
echo. > redirect-manager.php
echo. > robots-meta.php
echo. > json-ld-generator.php
echo. > rss-generator.php
cd ..

cd ..
echo ✓ Include files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 16: Creating Content Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [16/20] Setting up content structure...
cd content\blog

echo. > posts.json

cd posts
echo. > .gitkeep
cd ..

cd ..\..
echo ✓ Content files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 17: Creating Script Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [17/20] Generating utility scripts...
cd scripts

echo. > backup.sh
echo. > restore.sh
echo. > db-backup.php
echo. > generate-search-index.php
echo. > generate-sitemap.php

cd ..
echo ✓ Script files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 18: Creating Source Files (SCSS/JS Modules)
echo ════════════════════════════════════════════════════════════════
echo.

echo [18/20] Creating source files...
cd src

REM SCSS files
cd scss
echo. > _variables.scss
echo. > _mixins.scss
echo. > _critical.scss
echo. > _base.scss
echo. > _components.scss
echo. > main.scss
cd ..

REM JS modules
cd js\modules
echo. > cookieConsent.js
echo. > lazyLoad.js
echo. > smoothScroll.js
echo. > formValidation.js
cd ..

cd utils
echo. > helpers.js
echo. > api.js
cd ..

cd ..\..
echo ✓ Source files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 19: Creating Configuration Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [19/20] Setting up configuration...
cd config

echo. > .env
echo. > .env.example
echo. > database.php
echo. > constants.php
echo. > csp-policy.php
echo. > image-processing.php
echo. > redirects.json

cd ..
echo ✓ Configuration files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 20: Creating Server Configuration Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [20/20] Creating server configs...
cd server

echo. > .htaccess
echo. > nginx.conf
echo. > web.config
echo. > php.ini

cd ..
echo ✓ Server configuration created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 21: Creating Log Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [21/23] Setting up logging...
cd logs

echo. > .gitkeep
echo. > error.log
echo. > access.log
echo. > security.log

cd ..
echo ✓ Log files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 22: Creating Backup Placeholders
echo ════════════════════════════════════════════════════════════════
echo.

echo [22/23] Initializing backup system...
cd backups

echo. > .gitkeep

cd daily
echo. > .gitkeep
cd ..

cd weekly
echo. > .gitkeep
cd ..

cd monthly
echo. > .gitkeep
cd ..

cd ..
echo ✓ Backup system initialized

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 23: Creating Test Files
echo ════════════════════════════════════════════════════════════════
echo.

echo [23/23] Setting up testing framework...
cd tests

echo. > SecurityTest.php
echo. > SEOTest.php
echo. > PerformanceTest.php
echo. > FormTest.php

cd ..
echo ✓ Test files created

echo.
echo ════════════════════════════════════════════════════════════════
echo  PHASE 24: Creating Documentation
echo ════════════════════════════════════════════════════════════════
echo.

echo [24/24] Generating documentation...
cd docs

echo. > deployment.md
echo. > security-policy.md
echo. > backup-restore.md

cd ..
echo ✓ Documentation created

echo.
echo ════════════════════════════════════════════════════════════════
echo  DEPLOYMENT COMPLETE!
echo ════════════════════════════════════════════════════════════════
echo.
echo ✓ Total Files Created: 80+
echo ✓ Total Directories: 40+
echo.
echo 📂 Structure Location: %CD%
echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║                    NEXT STEPS                                  ║
echo ╠════════════════════════════════════════════════════════════════╣
echo ║                                                                ║
echo ║  1. Review the structure in: website\                          ║
echo ║  2. Configure: config\.env                                     ║
echo ║  3. Install dependencies: npm install                          ║
echo ║  4. Install PHP packages: composer install                     ║
echo ║  5. Start development: npm run dev                             ║
echo ║  6. Fill in placeholder files with your content                ║
echo ║                                                                ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.
echo [SUCCESS] Professional website structure deployed successfully!
echo.
pause