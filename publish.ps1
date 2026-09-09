$source = "C:\Users\jadac\OneDrive\Documents\Obsidian\Jayda's Second Brain\01 Public"
$destination = "$PSScriptRoot\content"
$staging = "$PSScriptRoot\content-staging"

Set-Location $PSScriptRoot

Write-Host "Preparing public digital garden..."

# =================================
# SAFETY CHECK 1
# Confirm the exact public source exists
# =================================

if (-not (Test-Path -LiteralPath $source -PathType Container)) {
    Write-Host "ERROR: The 01 Public folder could not be found." -ForegroundColor Red
    exit 1
}

# =================================
# CREATE A SAFE STAGING COPY
# =================================

if (Test-Path -LiteralPath $staging) {
    Remove-Item -LiteralPath $staging -Recurse -Force
}

New-Item -ItemType Directory -Path $staging | Out-Null

# Copy everything inside 01 Public into staging
Get-ChildItem -LiteralPath $source -Force |
    Copy-Item -Destination $staging -Recurse -Force

# =================================
# SAFETY CHECK 2
# Make sure files actually copied
# =================================

$sourceFiles = Get-ChildItem -LiteralPath $source -Recurse -File
$stagingFiles = Get-ChildItem -LiteralPath $staging -Recurse -File

if ($stagingFiles.Count -eq 0) {
    Write-Host "ERROR: No files were copied. Publishing cancelled." -ForegroundColor Red
    Remove-Item -LiteralPath $staging -Recurse -Force
    exit 1
}

if ($sourceFiles.Count -ne $stagingFiles.Count) {
    Write-Host "ERROR: Source and staging file counts do not match." -ForegroundColor Red
    Write-Host "Source: $($sourceFiles.Count)"
    Write-Host "Staging: $($stagingFiles.Count)"
    Remove-Item -LiteralPath $staging -Recurse -Force
    exit 1
}

Write-Host "Safety check passed: $($stagingFiles.Count) public files prepared."

# =================================
# REPLACE QUARTZ CONTENT
# =================================

if (Test-Path -LiteralPath $destination) {
    Remove-Item -LiteralPath $destination -Recurse -Force
}

Rename-Item -LiteralPath $staging -NewName "content"

Write-Host "Quartz content updated successfully."

# =================================
# STAGE ONLY APPROVED PUBLIC FILES
# =================================

git add content
git add quartz/styles/custom.scss
git add quartz.config.yaml

# =================================
# PUBLISH ONLY IF SOMETHING CHANGED
# =================================

$changes = git status --porcelain

if ($changes) {
    git commit -m "Publish latest public notes"
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host "ERROR: Git commit failed. Nothing was pushed." -ForegroundColor Red
        exit 1
    }

    git push origin v5

    if ($LASTEXITCODE -ne 0) {
        Write-Host "ERROR: Git push failed." -ForegroundColor Red
        exit 1
    }

    Write-Host "Published to GitHub successfully."
}
else {
    Write-Host "No changes to publish."
}