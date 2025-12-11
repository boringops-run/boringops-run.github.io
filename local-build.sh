#!/bin/bash
set -e

### PATHS
SITE_DIR="$HOME/Code/BoringOps/boringops-run.github.io"
BUILD_DIR="$SITE_DIR/_site"
# Persistent path for the development Chrome profile
DEV_PROFILE_DIR="$HOME/Code/BoringOps/boringops-local/chrome_profile_run"

echo "----------------------------------------"
echo " CLEANING BUILD OUTPUT"
echo "----------------------------------------"
rm -rf "$BUILD_DIR"

echo "----------------------------------------"
echo " INSTALLING GEMS"
echo "----------------------------------------"

cd "$SITE_DIR"
bundle install

echo "----------------------------------------"
echo " LAUNCHING ISOLATED CHROME WINDOW"
echo "----------------------------------------"

# Check if a Chrome process is already running using the specific DEV_PROFILE_DIR
if pgrep -f "Google Chrome.*--user-data-dir=$DEV_PROFILE_DIR" > /dev/null; then
  # Isolated Chrome IS running. Just open the URL in the existing profile.
  open -a "Google Chrome" --args \
    --user-data-dir="$DEV_PROFILE_DIR" \
    http://localhost:4000 &

  echo "Development Chrome detected. Opening http://localhost:4000 in existing isolated window."
else
  # Isolated Chrome is NOT running. Launch a clean, isolated window.
  mkdir -p "$DEV_PROFILE_DIR"

  open -n -a "Google Chrome" --args \
    --new-window \
    --user-data-dir="$DEV_PROFILE_DIR" \
    --no-first-run \
    --no-default-browser-check \
    --disable-sync \
    --disable-features=Crashpad,ChromeWhatsNewUI \
    --disable-application-cache \
    --disk-cache-size=1 \
    --media-cache-size=1 \
    http://localhost:4000 &

  echo "Development Chrome not detected. Launched new, isolated window at http://localhost:4000"
fi

echo "----------------------------------------"
echo " STARTING JEKYLL SERVE (LIVE RELOAD)"
echo "----------------------------------------"

bundle exec jekyll serve \
  --livereload \
  --force_polling \
  --future \
  --destination "$BUILD_DIR"
