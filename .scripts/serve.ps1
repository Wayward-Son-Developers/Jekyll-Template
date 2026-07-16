# Local Development Server Bootstrapper

# Change to the repository root regardless of the current working directory.
Set-Location "$PSScriptRoot\.." -ErrorAction Stop

# Tell Jekyll and compatible plugins we're running a development build.
$env:JEKYLL_ENV = "development"

# Build and serve the site using the development configuration.
bundle exec jekyll serve --config _config.yml,_config.dev.yml --host localhost --port 4000
