#!/usr/bin/env bash
# Local Jekyll dev server. Independent of the GitHub Pages production setup
# — uses Gemfile.dev (plain Jekyll) instead of the github-pages gem so it
# works on modern Ruby. The deploy still uses actions/jekyll-build-pages
# which has its own pinned bundle.
#
# Usage: ./dev-server.sh
# Then open http://127.0.0.1:4000/

set -euo pipefail

# Prefer Homebrew Ruby if present (system Ruby is too old for Jekyll 4).
if [ -x "/opt/homebrew/opt/ruby/bin/ruby" ]; then
  export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
fi

if ! command -v ruby >/dev/null 2>&1 || [ "$(ruby -e 'puts RUBY_VERSION.to_f >= 3.1')" != "true" ]; then
  echo "Need Ruby 3.1+. Install with: brew install ruby" >&2
  exit 1
fi

export BUNDLE_GEMFILE="$(cd "$(dirname "$0")" && pwd)/Gemfile.dev"

if [ ! -d vendor/bundle ]; then
  echo "==> First run: installing gems into vendor/bundle"
  bundle config set --local path vendor/bundle
  bundle install
fi

echo "==> http://127.0.0.1:4000/  (livereload on)"
exec bundle exec jekyll serve \
  --config _config.yml,_config.dev.yml \
  --livereload \
  --port 4000 \
  --host 127.0.0.1 \
  "$@"
