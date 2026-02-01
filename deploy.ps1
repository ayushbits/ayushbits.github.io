# Deploy script for academic website
# Run this from the source branch

Write-Host "🚀 Starting deployment..." -ForegroundColor Green

# Ensure we're on source branch
$currentBranch = git rev-parse --abbrev-ref HEAD
if ($currentBranch -ne "source") {
    Write-Host "❌ Error: Must be on 'source' branch. Currently on '$currentBranch'" -ForegroundColor Red
    exit 1
}

# Check for uncommitted changes and commit them first
$status = git status --porcelain
if ($status) {
    Write-Host "💾 Committing source changes first..." -ForegroundColor Cyan
    git add .
    git commit -m "Update source before deployment"
    Write-Host "✅ Source changes committed" -ForegroundColor Green
}

# Build the site
Write-Host "📦 Building site..." -ForegroundColor Cyan
.\.hugo\hugo.exe --gc --minify

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Build failed!" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Build successful!" -ForegroundColor Green

# Switch to master branch
Write-Host "🔀 Switching to master branch..." -ForegroundColor Cyan
git checkout master

# Copy public/ contents to root
Write-Host "📋 Copying files..." -ForegroundColor Cyan
Copy-Item -Path public\* -Destination . -Recurse -Force

# Stage all changes
Write-Host "📝 Staging changes..." -ForegroundColor Cyan
git add .

# Commit with timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
Write-Host "💾 Committing..." -ForegroundColor Cyan
git commit -m "Deploy: $timestamp"

if ($LASTEXITCODE -ne 0) {
    Write-Host "⚠️  Nothing to commit (no changes)" -ForegroundColor Yellow
    git checkout source
    exit 0
}

# Push to origin
Write-Host "⬆️  Pushing to GitHub..." -ForegroundColor Cyan
git push origin master

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Push failed!" -ForegroundColor Red
    git checkout source
    exit 1
}

# Switch back to source
Write-Host "🔄 Switching back to source..." -ForegroundColor Cyan
git checkout source

Write-Host ""
Write-Host "✅ Deployment complete! 🎉" -ForegroundColor Green
Write-Host "Your site will be live at https://ayushbits.github.io in 1-2 minutes" -ForegroundColor Cyan
