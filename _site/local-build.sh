#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "==> Cleaning previous build..."
rm -rf _site .jekyll-cache

echo "==> Configuring bundler..."
bundle config set --local path 'vendor/bundle'

echo "==> Installing dependencies..."
bundle install

echo "==> Starting Jekyll server on port 4003..."
echo "    Live reload on port 35730"
echo "    URL: http://localhost:4003"
echo ""

bundle exec jekyll serve \
  --port 4003 \
  --livereload \
  --livereload-port 35730 \
  --future \
  --drafts
