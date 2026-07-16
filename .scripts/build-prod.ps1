# Local Production Build

# Change to the repository root regardless of the current working directory.
Set-Location "$PSScriptRoot\.." -ErrorAction Stop

# Tell Jekyll and plugins we're building for production.
$env:JEKYLL_ENV = "production"

# Clean the build artifacts and caches before building for production.
bundle exec jekyll clean

# Build the site using the production configuration.
bundle exec jekyll build --config _config.yml,_config.prod.yml
