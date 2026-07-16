# Development Environment Check: Displays tool versions and verifies the Jekyll project is ready to build.

# Change to the repository root regardless of the current working directory.
Set-Location "$PSScriptRoot\.." -ErrorAction Stop

Write-Host "Operating System :" ([System.Environment]::OSVersion.VersionString)
Write-Host "PowerShell      :" $PSVersionTable.PSVersion
Write-Host ""

if (Test-Path ".ruby-version") {
    Write-Host "Ruby Target     :" (Get-Content ".ruby-version")
}

Write-Host "Ruby            :" (& ruby -v)
Write-Host "RubyGems        :" (& gem -v)
Write-Host "Bundler         :" (& bundle -v)

try {
    $bundlerVersion = & bundle exec ruby -rbundler -e "puts Bundler::VERSION" 2>$null
    Write-Host "Bundler (bundle):" $bundlerVersion
}
catch {
    Write-Host "Bundler (bundle): Not available"
}

try {
    Write-Host "Jekyll         :" (& bundle exec jekyll -v)
}
catch {
    Write-Host "Jekyll         : Not available via bundle exec"
}

Write-Host ""
Write-Host "Bundle Check"
bundle check

Write-Host ""
Write-Host "Jekyll Doctor"
bundle exec jekyll doctor
