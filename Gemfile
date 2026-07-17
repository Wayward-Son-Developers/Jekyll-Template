source "https://rubygems.org"

# Ruby Runtime - Keep this version in sync with the .ruby-version file.
ruby "~> 3.3.0"

# This project intentionally commits Gemfile.lock to ensure consistent dependency versions across local development, GitHub Actions, and Cloudflare Pages.


#--------------------------------------------------------
# Core Jekyll
#--------------------------------------------------------

# Static site generator. Documentation: https://jekyllrb.com/
gem "jekyll", "~> 4.4"


#--------------------------------------------------------
# Build Dependency
#--------------------------------------------------------

# Sass Converter. Pinned because newer versions are incompatible with some existing Sass used by these sites.
# https://github.com/jekyll/jekyll-sass-converter
gem "jekyll-sass-converter", "~> 2.2"


#--------------------------------------------------------
# Theme - Choose ONE theme gem (or replace with another).
#--------------------------------------------------------

# Minimal Mistakes - https://mmistakes.github.io/minimal-mistakes/
gem "minimal-mistakes-jekyll"

# Hydeout - https://github.com/fongandrew/hydeout
# gem "jekyll-theme-hydeout"

# So Simple - https://mmistakes.github.io/so-simple-theme/
# gem "jekyll-theme-so-simple"


#--------------------------------------------------------
# Jekyll Plugins
# Some themes automatically depend on several of these. Listing them here documents what they're for and makes it easy to enable them for other themes.
# Plugins listed here must also be added to the `plugins:` section of _config.yml if they are enabled.
#--------------------------------------------------------

# Search Engine Optimization metadata.
# https://github.com/jekyll/jekyll-seo-tag
gem "jekyll-seo-tag"

# Create archive pages for categories, tags, etc.
# https://github.com/jekyll/jekyll-archives
gem "jekyll-archives"

# GitHub-style emoji support.
# https://github.com/jekyll/jemoji
gem "jemoji"

# Redirect old URLs after moving or renaming pages.
# https://github.com/jekyll/jekyll-redirect-from
# gem "jekyll-redirect-from"


#--------------------------------------------------------
# Official Jekyll Plugins
# Many themes already include these as dependencies, uncomment when using a theme that does not.
# Plugins listed here must also be added to the `plugins:` section of _config.yml if they are enabled.
#--------------------------------------------------------

# Generate sitemap.xml
# https://github.com/jekyll/jekyll-sitemap
# gem "jekyll-sitemap"

# Generate Atom feeds.
# https://github.com/jekyll/jekyll-feed
# gem "jekyll-feed"

# GitHub Gist embedding.
# https://github.com/jekyll/jekyll-gist
# gem "jekyll-gist"

# Cache rendered include files for faster builds.
# https://github.com/jekyll/jekyll-include-cache
# gem "jekyll-include-cache"

# Pagination support - pick one, v2 requires more configuration.
# gem "jekyll-paginate"    # https://github.com/jekyll/jekyll-paginate
# gem "jekyll-paginate-v2" # https://github.com/sverrirs/jekyll-paginate-v2


#--------------------------------------------------------
# Windows Support
#--------------------------------------------------------

platforms :windows, :jruby do

  # Windows timezone database - https://rubygems.org/gems/tzinfo-data
  gem "tzinfo-data"

  # Improves filesystem watching for `jekyll serve --livereload`. https://github.com/Maher4Ever/wdm
  gem "wdm"

end
