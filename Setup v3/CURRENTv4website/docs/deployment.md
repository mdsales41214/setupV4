\# Deployment Guide

energievergelijken.trade - Production Deployment



\## Prerequisites



\### Server Requirements

\- \*\*PHP:\*\* 8.2 or higher

\- \*\*Web Server:\*\* Apache 2.4+ or Nginx 1.18+

\- \*\*SSL Certificate:\*\* Required (Let's Encrypt recommended)

\- \*\*Memory:\*\* Minimum 256MB PHP memory\_limit

\- \*\*Extensions:\*\*

&nbsp; - `mbstring`

&nbsp; - `pdo\_mysql` (if using database)

&nbsp; - `gd` or `imagick` (for image processing)

&nbsp; - `curl`

&nbsp; - `zip`



\### Domain \& DNS

\- Domain pointed to server IP

\- SSL certificate installed

\- DNS propagated (check with `dig energievergelijken.trade`)



---



\## Deployment Steps



\### 1. Clone/Upload Files

```bash

