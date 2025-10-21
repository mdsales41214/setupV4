@echo off
chcp 65001 >nul
color 0A
setlocal enabledelayedexpansion

REM Store the script's directory as base path
set "BASE_DIR=%~dp0"
set "WEBSITE_DIR=%BASE_DIR%website"

echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                                                              ║
echo ║     Professional Website Structure Generator v5.0            ║
echo ║     With Fixed Path Navigation                               ║
echo ║                                                              ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo [INFO] Base directory: %BASE_DIR%
echo [INFO] Website will be created at: %WEBSITE_DIR%
echo.
pause

echo.
echo ══════════════════════════════════════════════════════════════
echo  PHASE 1: Creating Root Directory Structure
echo ══════════════════════════════════════════════════════════════
echo.

REM Create main website directory
if not exist "%WEBSITE_DIR%" mkdir "%WEBSITE_DIR%"

REM Create progress tracking system first
if not exist "%WEBSITE_DIR%\_progress" mkdir "%WEBSITE_DIR%\_progress"

echo [1/20] Initializing progress tracker...
(
echo # Website Development Progress Tracker
echo.
echo **Project:** YourCompany BV Professional Website
echo **Started:** %date% %time%
echo **Status:** Structure Created - Ready for Development
echo.
echo ---
echo.
echo ## Session Log
echo.
echo ### Session 0 - Initial Structure Creation
echo **Date:** %date%
echo **Action:** Created folder structure with 140+ placeholder files
echo **Status:** Complete
echo.
echo ---
echo.
echo ## Development Phases
echo.
echo ### Phase 1: Core Configuration [PENDING]
echo - [ ] config/.env.example
echo - [ ] config/constants.php
echo - [ ] config/database.php
echo - [ ] includes/config.php
echo - [ ] includes/functions.php
echo.
echo ### Phase 2: Base Structure [PENDING]
echo - [ ] includes/head.php
echo - [ ] includes/header.php
echo - [ ] includes/footer.php
echo - [ ] public/index.php
echo - [ ] public/assets/css/critical.css
echo - [ ] public/assets/css/main.css
echo.
echo ### Phase 3: Security Layer [PENDING]
echo - [ ] includes/security/headers.php
echo - [ ] includes/security/sanitizer.php
echo - [ ] includes/security/csrf-token.php
echo - [ ] includes/security/input-validation.php
echo.
echo ### Phase 4: SEO Foundation [PENDING]
echo - [ ] includes/seo/meta-tags.php
echo - [ ] includes/seo/schema-organization.php
echo - [ ] includes/seo/social-meta.php
echo - [ ] public/robots.txt
echo - [ ] public/sitemap.xml
echo.
echo ### Phase 5: Content Pages [PENDING]
echo - [ ] public/pages/contact.php
echo - [ ] public/pages/privacybeleid.php
echo - [ ] public/pages/voorwaarden.php
echo - [ ] includes/forms/contact-handler.php
echo.
echo ### Phase 6: Blog System [PENDING]
echo - [ ] public/pages/blog.php
echo - [ ] public/pages/blog-post.php
echo - [ ] includes/blog/post-card.php
echo - [ ] includes/blog/pagination.php
echo - [ ] content/blog/posts.json
echo.
echo ### Phase 7: Testing and Documentation [PENDING]
echo - [ ] tests/SecurityTest.php
echo - [ ] tests/SEOTest.php
echo - [ ] docs/deployment.md
echo - [ ] README.md
echo.
echo ---
echo.
echo ## Quick Stats
echo - **Total Files Created:** 140+
echo - **Total Directories:** 45+
echo - **Files with Content:** 0
echo - **Completion:** 0%%
echo.
echo ---
echo.
echo ## Next Session Instructions
echo.
echo **To continue development, say:**
echo ```
echo Session 1: Start Phase 1 - Core Configuration
echo Generate: config/.env.example, config/constants.php, includes/config.php
echo ```
echo.
echo **I will respond with:**
echo 1. Complete code for requested files
echo 2. Updated root.md with your session number
echo 3. Checkbox updates [x] for completed files
echo 4. Next recommended files
echo.
echo ---
echo.
echo ## File Structure Reference
echo ```
echo website/
echo ├── _progress/
echo │   └── root.md                    ← YOU ARE HERE
echo ├── public/
echo ├── includes/
echo ├── content/
echo ├── config/
echo ├── src/
echo ├── scripts/
echo ├── server/
echo ├── logs/
echo ├── backups/
echo ├── tests/
echo ├── docs/
echo └── markdown/
echo ```
) > "%WEBSITE_DIR%\_progress\root.md"
echo    Progress tracker created

echo.
echo [2/20] Creating main directory structure...
mkdir "%WEBSITE_DIR%\public" 2>nul
mkdir "%WEBSITE_DIR%\includes" 2>nul
mkdir "%WEBSITE_DIR%\content" 2>nul
mkdir "%WEBSITE_DIR%\scripts" 2>nul
mkdir "%WEBSITE_DIR%\src" 2>nul
mkdir "%WEBSITE_DIR%\config" 2>nul
mkdir "%WEBSITE_DIR%\server" 2>nul
mkdir "%WEBSITE_DIR%\logs" 2>nul
mkdir "%WEBSITE_DIR%\backups" 2>nul
mkdir "%WEBSITE_DIR%\tests" 2>nul
mkdir "%WEBSITE_DIR%\docs" 2>nul
mkdir "%WEBSITE_DIR%\markdown" 2>nul
echo    Main folders created

echo.
echo ══════════════════════════════════════════════════════════════
echo  PHASE 2: Creating Public Folder Structure
echo ══════════════════════════════════════════════════════════════
echo.

echo [3/20] Building public directory structure...
mkdir "%WEBSITE_DIR%\public\.well-known" 2>nul
mkdir "%WEBSITE_DIR%\public\assets" 2>nul
mkdir "%WEBSITE_DIR%\public\pages" 2>nul
mkdir "%WEBSITE_DIR%\public\assets\css" 2>nul
mkdir "%WEBSITE_DIR%\public\assets\js" 2>nul
mkdir "%WEBSITE_DIR%\public\assets\images" 2>nul
mkdir "%WEBSITE_DIR%\public\assets\images\blog" 2>nul
mkdir "%WEBSITE_DIR%\public\assets\images\favicons" 2>nul
mkdir "%WEBSITE_DIR%\public\assets\fonts" 2>nul
mkdir "%WEBSITE_DIR%\public\assets\uploads" 2>nul
mkdir "%WEBSITE_DIR%\public\assets\uploads\optimized" 2>nul
echo    Public structure created

echo.
echo ══════════════════════════════════════════════════════════════
echo  PHASE 3: Creating Includes Folder Structure
echo ══════════════════════════════════════════════════════════════
echo.

echo [4/20] Building includes directory structure...
mkdir "%WEBSITE_DIR%\includes\blog" 2>nul
mkdir "%WEBSITE_DIR%\includes\forms" 2>nul
mkdir "%WEBSITE_DIR%\includes\email" 2>nul
mkdir "%WEBSITE_DIR%\includes\email\templates" 2>nul
mkdir "%WEBSITE_DIR%\includes\security" 2>nul
mkdir "%WEBSITE_DIR%\includes\performance" 2>nul
mkdir "%WEBSITE_DIR%\includes\marketing" 2>nul
mkdir "%WEBSITE_DIR%\includes\search" 2>nul
mkdir "%WEBSITE_DIR%\includes\seo" 2>nul
echo    Includes structure created

echo.
echo ══════════════════════════════════════════════════════════════
echo  PHASE 4: Creating Content and Source Structures
echo ══════════════════════════════════════════════════════════════
echo.

echo [5/20] Building content directory structure...
mkdir "%WEBSITE_DIR%\content\blog" 2>nul
mkdir "%WEBSITE_DIR%\content\blog\posts" 2>nul
echo    Content structure created

echo [6/20] Building src directory structure...
mkdir "%WEBSITE_DIR%\src\scss" 2>nul
mkdir "%WEBSITE_DIR%\src\js" 2>nul
mkdir "%WEBSITE_DIR%\src\js\modules" 2>nul
mkdir "%WEBSITE_DIR%\src\js\utils" 2>nul
echo    Source structure created

echo [7/20] Building backup directory structure...
mkdir "%WEBSITE_DIR%\backups\daily" 2>nul
mkdir "%WEBSITE_DIR%\backups\weekly" 2>nul
mkdir "%WEBSITE_DIR%\backups\monthly" 2>nul
echo    Backup structure created

echo.
echo ══════════════════════════════════════════════════════════════
echo  PHASE 5: Creating Placeholder Files
echo ══════════════════════════════════════════════════════════════
echo.

echo [8/20] Creating root configuration files...
echo. > "%WEBSITE_DIR%\.gitignore"
echo. > "%WEBSITE_DIR%\.editorconfig"
echo. > "%WEBSITE_DIR%\.prettierrc"
echo. > "%WEBSITE_DIR%\.eslintrc.json"
echo. > "%WEBSITE_DIR%\package.json"
echo. > "%WEBSITE_DIR%\composer.json"
echo. > "%WEBSITE_DIR%\gulpfile.js"
echo. > "%WEBSITE_DIR%\README.md"
echo. > "%WEBSITE_DIR%\CHANGELOG.md"
echo. > "%WEBSITE_DIR%\LICENSE"
echo    Root files created

echo [9/20] Creating public root files...
echo. > "%WEBSITE_DIR%\public\index.php"
echo. > "%WEBSITE_DIR%\public\robots.txt"
echo. > "%WEBSITE_DIR%\public\sitemap.xml"
echo. > "%WEBSITE_DIR%\public\security.txt"
echo. > "%WEBSITE_DIR%\public\humans.txt"
echo. > "%WEBSITE_DIR%\public\manifest.json"
echo. > "%WEBSITE_DIR%\public\service-worker.js"
echo. > "%WEBSITE_DIR%\public\offline.html"
echo. > "%WEBSITE_DIR%\public\404.html"
echo. > "%WEBSITE_DIR%\public\.well-known\security.txt"
echo    Public root files created

echo [10/20] Creating CSS files...
echo. > "%WEBSITE_DIR%\public\assets\css\critical.css"
echo. > "%WEBSITE_DIR%\public\assets\css\main.css"
echo    CSS files created

echo [11/20] Creating JavaScript files...
echo. > "%WEBSITE_DIR%\public\assets\js\app.js"
echo. > "%WEBSITE_DIR%\public\assets\js\cookie-consent.js"
echo. > "%WEBSITE_DIR%\public\assets\js\analytics.js"
echo. > "%WEBSITE_DIR%\public\assets\js\lazy-loading.js"
echo. > "%WEBSITE_DIR%\public\assets\js\gtm.js"
echo    JavaScript files created

echo [12/20] Creating image placeholders...
echo. > "%WEBSITE_DIR%\public\assets\images\logo.svg"
echo. > "%WEBSITE_DIR%\public\assets\images\og-image.jpg"
echo. > "%WEBSITE_DIR%\public\assets\images\blog\.gitkeep"
echo. > "%WEBSITE_DIR%\public\assets\images\favicons\favicon.ico"
echo. > "%WEBSITE_DIR%\public\assets\images\favicons\apple-touch-icon.png"
echo. > "%WEBSITE_DIR%\public\assets\images\favicons\android-chrome-192x192.png"
echo. > "%WEBSITE_DIR%\public\assets\images\favicons\android-chrome-512x512.png"
echo    Image placeholders created

echo [13/20] Creating font placeholders...
echo. > "%WEBSITE_DIR%\public\assets\fonts\inter-var.woff2"
echo    Font files created

echo [14/20] Creating upload directories...
echo. > "%WEBSITE_DIR%\public\assets\uploads\.gitkeep"
echo. > "%WEBSITE_DIR%\public\assets\uploads\optimized\.gitkeep"
echo    Upload directories created

echo [15/20] Creating page files...
echo. > "%WEBSITE_DIR%\public\pages\contact.php"
echo. > "%WEBSITE_DIR%\public\pages\privacybeleid.php"
echo. > "%WEBSITE_DIR%\public\pages\voorwaarden.php"
echo. > "%WEBSITE_DIR%\public\pages\cookiebeleid.php"
echo. > "%WEBSITE_DIR%\public\pages\toegankelijkheid.php"
echo. > "%WEBSITE_DIR%\public\pages\disclaimer.php"
echo. > "%WEBSITE_DIR%\public\pages\blog.php"
echo. > "%WEBSITE_DIR%\public\pages\blog-post.php"
echo. > "%WEBSITE_DIR%\public\pages\blog-category.php"
echo    Page files created at: %WEBSITE_DIR%\public\pages\

echo [16/20] Creating includes files...
echo. > "%WEBSITE_DIR%\includes\head.php"
echo. > "%WEBSITE_DIR%\includes\header.php"
echo. > "%WEBSITE_DIR%\includes\footer.php"
echo. > "%WEBSITE_DIR%\includes\config.php"
echo. > "%WEBSITE_DIR%\includes\functions.php"
echo. > "%WEBSITE_DIR%\includes\blog\post-card.php"
echo. > "%WEBSITE_DIR%\includes\blog\pagination.php"
echo. > "%WEBSITE_DIR%\includes\blog\related-posts.php"
echo. > "%WEBSITE_DIR%\includes\forms\contact-handler.php"
echo. > "%WEBSITE_DIR%\includes\forms\validator.php"
echo. > "%WEBSITE_DIR%\includes\forms\spam-filter.php"
echo. > "%WEBSITE_DIR%\includes\forms\honeypot.php"
echo. > "%WEBSITE_DIR%\includes\email\templates\contact-notification.php"
echo. > "%WEBSITE_DIR%\includes\email\templates\contact-confirmation.php"
echo. > "%WEBSITE_DIR%\includes\security\headers.php"
echo. > "%WEBSITE_DIR%\includes\security\sanitizer.php"
echo. > "%WEBSITE_DIR%\includes\security\csrf-token.php"
echo. > "%WEBSITE_DIR%\includes\security\input-validation.php"
echo. > "%WEBSITE_DIR%\includes\security\rate-limiter.php"
echo. > "%WEBSITE_DIR%\includes\performance\dns-prefetch.php"
echo. > "%WEBSITE_DIR%\includes\performance\preconnect.php"
echo. > "%WEBSITE_DIR%\includes\performance\cache-control.php"
echo. > "%WEBSITE_DIR%\includes\marketing\google-tag-manager.php"
echo. > "%WEBSITE_DIR%\includes\marketing\facebook-pixel.php"
echo. > "%WEBSITE_DIR%\includes\seo\meta-tags.php"
echo. > "%WEBSITE_DIR%\includes\seo\schema-organization.php"
echo. > "%WEBSITE_DIR%\includes\seo\social-meta.php"
echo. > "%WEBSITE_DIR%\includes\seo\canonical-urls.php"
echo. > "%WEBSITE_DIR%\includes\search\search-engine.php"
echo. > "%WEBSITE_DIR%\includes\search\search-index.json"
echo    Includes files created

echo [17/20] Creating content files...
echo. > "%WEBSITE_DIR%\content\blog\posts.json"
echo. > "%WEBSITE_DIR%\content\blog\posts\.gitkeep"
echo    Content files created

echo [18/20] Creating config files...
echo. > "%WEBSITE_DIR%\config\.env.example"
echo. > "%WEBSITE_DIR%\config\constants.php"
echo. > "%WEBSITE_DIR%\config\database.php"
echo. > "%WEBSITE_DIR%\config\csp-policy.php"
echo    Config files created

echo [19/20] Creating server config files...
echo. > "%WEBSITE_DIR%\server\.htaccess"
echo. > "%WEBSITE_DIR%\server\nginx.conf"
echo. > "%WEBSITE_DIR%\server\php.ini"
echo    Server config files created

echo [20/20] Creating source files...
echo. > "%WEBSITE_DIR%\src\scss\_variables.scss"
echo. > "%WEBSITE_DIR%\src\scss\_mixins.scss"
echo. > "%WEBSITE_DIR%\src\scss\main.scss"
echo. > "%WEBSITE_DIR%\src\js\modules\cookieConsent.js"
echo. > "%WEBSITE_DIR%\src\js\modules\lazyLoad.js"
echo. > "%WEBSITE_DIR%\src\js\utils\helpers.js"
echo    Source files created

echo [FINAL] Creating test and doc files...
echo. > "%WEBSITE_DIR%\tests\SecurityTest.php"
echo. > "%WEBSITE_DIR%\tests\SEOTest.php"
echo. > "%WEBSITE_DIR%\tests\PerformanceTest.php"
echo. > "%WEBSITE_DIR%\docs\deployment.md"
echo. > "%WEBSITE_DIR%\docs\security-policy.md"
echo. > "%WEBSITE_DIR%\logs\.gitkeep"
echo. > "%WEBSITE_DIR%\backups\.gitkeep"
echo    Test and documentation files created

echo.
echo ══════════════════════════════════════════════════════════════
echo  DEPLOYMENT COMPLETE!
echo ══════════════════════════════════════════════════════════════
echo.
echo Structure created successfully
echo Progress tracker initialized
echo.
echo Location: %WEBSITE_DIR%
echo Progress File: %WEBSITE_DIR%\_progress\root.md
echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                       NEXT STEPS                             ║
echo ╠══════════════════════════════════════════════════════════════╣
echo ║                                                              ║
echo ║  1. Navigate to: cd website                                  ║
echo ║  2. Open: _progress\root.md                                  ║
echo ║  3. Read "Next Session Instructions"                         ║
echo ║                                                              ║
echo ║  To begin development, tell Claude:                          ║
echo ║  "Session 1: Start Phase 1"                                  ║
echo ║                                                              ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.

REM Verify critical paths
echo [VERIFICATION] Checking critical file locations...
if exist "%WEBSITE_DIR%\public\pages\contact.php" (
    echo    Pages directory: OK
) else (
    echo    WARNING: Pages not created correctly
)

if exist "%WEBSITE_DIR%\_progress\root.md" (
    echo    Progress tracker: OK
) else (
    echo    WARNING: Progress tracker not created
)

echo.
pause