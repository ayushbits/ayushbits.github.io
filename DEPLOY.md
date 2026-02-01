# How to Deploy Your Website

## Simple 5-Step Process (No Script Needed)

### Step 1: Make Sure You're on Source Branch
```powershell
git checkout source
```

### Step 2: Commit Any Changes
```powershell
git add .
git commit -m "Update website"
git push origin source
```

### Step 3: Build the Site
```powershell
.\.hugo\hugo.exe --gc --minify
```
**IMPORTANT:** Use `.\.hugo\hugo.exe` NOT just `hugo`
(System hugo is wrong version - will fail)

This creates/updates the `public/` folder with your built site.

### Step 4: Go to Master Branch and Copy Files
```powershell
# Switch to master branch
git checkout master

# Delete old files (except .git and public folders)
Get-ChildItem -Exclude .git,public,.hugo | Remove-Item -Recurse -Force

# Copy everything from public/ to current directory
Get-ChildItem public | Copy-Item -Destination . -Recurse -Force
```

### Step 5: Commit and Push Master
```powershell
git add .
git commit -m "Deploy website"
git push origin master

# Go back to source
git checkout source
```

**Done!** Visit https://ayushbits.github.io in 1-2 minutes.

---

## Even Simpler: Copy-Paste This Entire Block

```powershell
# Save changes on source
git checkout source
git add .
git commit -m "Update website"
git push origin source

# Build
.\.hugo\hugo.exe --gc --minify

# Deploy to master
git checkout master
Get-ChildItem -Exclude .git,public,.hugo | Remove-Item -Recurse -Force
Get-ChildItem public | Copy-Item -Destination . -Recurse -Force
git add .
git commit -m "Deploy $(Get-Date -Format 'yyyy-MM-dd')"
git push origin master
git checkout source

Write-Host "✅ Done! Check https://ayushbits.github.io in 1-2 minutes" -ForegroundColor Green
```

Just copy this entire block and paste it into PowerShell!

---

## If That Doesn't Work: Do It Manually

1. **On source branch:**
   - Make changes
   - Run: `.\.hugo\hugo.exe --gc --minify`
   - This creates `public/` folder

2. **Switch to master:**
   - Run: `git checkout master`
   - Delete everything EXCEPT `.git` folder
   - Copy everything FROM `public/` TO current folder
   - Run: `git add .`
   - Run: `git commit -m "Deploy"`
   - Run: `git push origin master`

3. **Go back:**
   - Run: `git checkout source`

---

## Quick Reference

| Command | What it does |
|---------|--------------|
| `git checkout source` | Switch to editing mode |
| `.\.hugo\hugo.exe server` | Preview locally |
| `.\.hugo\hugo.exe --gc --minify` | Build the site |
| `git checkout master` | Switch to deploy mode |
| `git push origin master` | Upload to website |

---

## Troubleshooting

**"error: Your local changes would be overwritten"**
```powershell
git add .
git commit -m "Save changes"
```

**"Nothing to commit"**
- Good! Just means no changes to deploy

**Changes don't appear on website**
- Wait 2 minutes for GitHub Pages
- Clear browser cache (Ctrl+F5)
- Check you pushed master: `git push origin master`

**Forgot which branch I'm on**
```powershell
git branch
```
The one with `*` is current.
