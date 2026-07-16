# Clean Build Artifacts

# Change to the repository root regardless of the current working directory.
Set-Location "$PSScriptRoot\.." -ErrorAction Stop

# Clean the build artifacts and caches
bundle exec jekyll clean
