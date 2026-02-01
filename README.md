# Academic Website - Quick Start Guide

## 📋 Prerequisites

**Required Software:**
- Hugo Extended v0.97.3 (included in `.hugo/hugo.exe`)
- Go 1.15+ (for theme modules)
- Git

**Important:** Ensure Go is in your PATH. If you get "binary with name 'go' not found":
- Go is installed at: `C:\Program Files\Go\bin`
- Already added to your PATH permanently
- **Restart PowerShell** if you just installed Go

## 🚀 Quick Commands (PowerShell)

### Start Development Server
```powershell
.\.hugo\hugo.exe server
```
Visit: http://localhost:1313
(Auto-reloads when you make changes)

### Build Production Site
```powershell
.\.hugo\hugo.exe --gc --minify
```
Generates static site in `public/` directory

### Build Without Minification
```powershell
.\.hugo\hugo.exe
```

## 📁 Git Branch Structure

**IMPORTANT:** This repo uses a non-standard workflow:
- **`source` branch** → Hugo source code (where you edit)
- **`master` branch** → Generated static site in `public/` (deployment target)

Always check current branch: `git branch`

## 🚢 Deployment Workflow

### Step 1: Make Changes in Source Branch
```powershell
# Ensure you're on source branch
git checkout source

# Make your changes to content/
# Edit files in content/home/, content/publication/, etc.
```

### Step 2: Test Locally
```powershell
.\.hugo\hugo.exe server
# Check http://localhost:1313
```

### Step 3: Build Production Site
```powershell
.\.hugo\hugo.exe --gc --minify
```

### Step 4: Commit Source Changes
```powershell
git add .
git commit -m "Update website content"
git push origin source
```

### Step 5: Deploy to Master Branch
```powershell
cd public/
git add .
git commit -m "Update site"
git push origin HEAD:master
cd ..
```

**OR** commit public/ directly from parent folder:
```powershell
cd public/
git add .
git commit -m "Update site"
git push origin HEAD:master
cd ..
```

Wait 1-2 minutes for changes to appear on ayushbits.github.io

## 📝 Content Updates

### Homepage News Updates
- **Homepage recent news:** Edit `content/newslist.dat`
- **Full news archive:** Edit `content/allnews.dat`
- Format: `- **[Month Year]** Description [[Link](url)]`

### Adding Publications
- Create new folder in `content/publication/publication-name/`
- Add `index.md` with front matter (title, authors, date, abstract, etc.)
- Add `summary` field with TL;DR for quick overview
- Set `featured: true` to show in Featured Publications

### Adding Talks/Events
- Create new folder in `content/event/event-name/`
- Add `index.md` with event details
- Include date, location, summary, and description

### Modifying Sections
- Homepage sections: Edit files in `content/home/`
- Change section order: Modify `weight` parameter (lower = appears earlier)
- Hide/show sections: Set `active: true` or `active: false`

## 🔧 Troubleshooting

### "binary with name 'go' not found"
**Solution:** Restart PowerShell (Go is already in your PATH)

### Build Fails with Template Errors
**Solution:** You need Hugo v0.97.3 Extended (newer versions have breaking changes)
```powershell
.\.hugo\hugo.exe version
```

### Changes Don't Appear on Site
1. Check you built: `.\.hugo\hugo.exe --gc --minify`
2. Check you pushed to master branch
3. Wait 1-2 minutes for GitHub Pages to update
4. Clear browser cache (Ctrl+F5)

### Server Won't Start
**Solution:** Port 1313 might be in use
```powershell
.\.hugo\hugo.exe server -p 1314
```

## 📚 Compatibility

**Current Setup:**
- Hugo: v0.97.3 extended (Windows)
- Go: v1.25.6
- Theme: Wowchemy v5.9.0
- Branch: `source` (development), `master` (deployment)

## 🎨 Theme Customization

See `CLAUDE.md` for detailed documentation on:
- Section widgets
- Coffee theme colors
- Image processing fixes
- Custom layouts



# [Hugo Academic Theme](https://github.com/wowchemy/starter-hugo-academic)

[![Screenshot](./preview.png)](https://wowchemy.com/hugo-themes/)

The Hugo **Academic Resumé Template** empowers you to easily create your job-winning online resumé, showcase your academic publications, and create online courses or knowledge bases to grow your audience.

[![Get Started](https://img.shields.io/badge/-Get%20started-ff4655?style=for-the-badge)](https://wowchemy.com/hugo-themes/)
[![Discord](https://img.shields.io/discord/722225264733716590?style=for-the-badge)](https://discord.com/channels/722225264733716590/742892432458252370/742895548159492138)  
[![Twitter Follow](https://img.shields.io/twitter/follow/wowchemy?label=Follow%20on%20Twitter)](https://twitter.com/wowchemy)

️**Trusted by 250,000+ researchers, educators, and students.** Highly customizable via the integrated **no-code, widget-based Wowchemy page builder**, making every site truly personalized ⭐⭐⭐⭐⭐

Easily write technical content with plain text Markdown, LaTeX math, diagrams, RMarkdown, or Jupyter, and import publications from BibTeX.

[Check out the latest demo](https://academic-demo.netlify.app/) of what you'll get in less than 10 minutes, or [get inspired by our academics and research groups](https://wowchemy.com/creators/).

The integrated [**Wowchemy**](https://wowchemy.com) website builder and CMS makes it easy to create a beautiful website for free. Edit your site in the CMS (or your favorite editor), generate it with [Hugo](https://github.com/gohugoio/hugo), and deploy with GitHub or Netlify. Customize anything on your site with widgets, light/dark themes, and language packs.

- 👉 [**Get Started**](https://wowchemy.com/hugo-themes/)
- 📚 [View the **documentation**](https://wowchemy.com/docs/)
- 💬 [Chat with the **Wowchemy research community**](https://discord.gg/z8wNYzb) or [**Hugo community**](https://discourse.gohugo.io)
- 🐦 Twitter: [@wowchemy](https://twitter.com/wowchemy) [@GeorgeCushen](https://twitter.com/GeorgeCushen) [#MadeWithWowchemy](https://twitter.com/search?q=%23MadeWithWowchemy&src=typed_query)
- ⬇️ **Automatically import your publications from BibTeX** with the [Hugo Academic CLI](https://github.com/wowchemy/hugo-academic-cli)
- 💡 [Suggest an improvement](https://github.com/wowchemy/wowchemy-hugo-themes/issues)
- ⬆️ **Updating?** View the [Update Guide](https://wowchemy.com/docs/hugo-tutorials/update/) and [Release Notes](https://github.com/wowchemy/wowchemy-hugo-themes/releases)

## We ask you, humbly, to support this open source movement

Today we ask you to defend the open source independence of the Wowchemy website builder and themes 🐧

We're an open source movement that depends on your support to stay online and thriving, but 99.9% of our creators don't give; they simply look the other way.

### [❤️ Click here to become a GitHub Sponsor, unlocking awesome perks such as _exclusive academic templates and widgets_](https://github.com/sponsors/gcushen)

<p align="center"><a href="https://wowchemy.com/templates/" target="_blank" rel="noopener"><img src="https://wowchemy.com/uploads/readmes/academic_logo_200px.png" alt="Hugo Academic Theme for Wowchemy Website Builder"></a></p>

## Demo image credits

- [Open book](https://unsplash.com/photos/J4kK8b9Fgj8)
- [Course](https://unsplash.com/photos/JKUTrJ4vK00)

## Latest news

<!--START_SECTION:news-->

- [Easily make an academic CV website to get more cites and grow your audience 🚀](https://wowchemy.com/blog/easily-make-academic-website/)
- [What&#39;s new in v5.2?](https://wowchemy.com/blog/whats-new-in-v5.2/)
- [What&#39;s new in v5.1?](https://wowchemy.com/blog/whats-new-in-v5.1/)
- [Version 5.0 (February 2021)](https://wowchemy.com/blog/version-5.0-february-2021/)
- [Version 5.0 Beta 3 (February 2021)](https://wowchemy.com/blog/version-5.0-beta-3-february-2021/)
<!--END_SECTION:news-->
