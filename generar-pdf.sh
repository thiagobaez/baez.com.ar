#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
chrome=$(command -v google-chrome || command -v chromium || command -v chromium-browser)
"$chrome" --headless=new --disable-gpu --no-pdf-header-footer --virtual-time-budget=5000 \
	--print-to-pdf=Thiago-Baez-CV.pdf "file://$PWD/index.html?lang=es"
"$chrome" --headless=new --disable-gpu --no-pdf-header-footer --virtual-time-budget=5000 \
	--print-to-pdf=Thiago-Baez-CV-EN.pdf "file://$PWD/index.html?lang=en"
