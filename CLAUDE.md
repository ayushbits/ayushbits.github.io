# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Hugo academic website built with the Wowchemy (Hugo Academic) theme framework. It's a personal academic portfolio site for publishing research papers, talks, projects, and news updates.

## Git Branch Structure

**CRITICAL**: This repository uses a non-standard branch workflow:
- `source` branch: Contains the Hugo source code (where you develop)
- `master` branch: Contains only the generated static site in `public/` directory (deployment target)

Always check the current branch with `git branch` before committing. By default, work in the `source` branch. The `public/` directory should be committed separately to the `master` branch.

## Common Commands

### Development
```bash
# Start local development server
hugo server

# Build static site (outputs to public/)
hugo

# Build with minification and garbage collection (production build)
hugo --gc --minify
```

### Hugo Version Requirements

**CRITICAL**: This site requires Hugo v0.97.x (extended version).

- **Compatible**: Hugo v0.97.1 - v0.97.3 (specified in `netlify.toml`)
- **Incompatible**: Hugo v0.128+ has breaking changes
  - The Wowchemy theme v5.9.0 uses deprecated template functions (`.File.UniqueID`, `site.GoogleAnalytics`)
  - Newer Hugo versions will fail to build with errors about `.File.UniqueID` and Google Analytics

If you have a newer Hugo version installed and encounter build errors, you must downgrade to Hugo v0.97.3 extended.

### Go Modules
This site uses Go modules for theme management. To update dependencies:
```bash
hugo mod get -u
hugo mod tidy
```

## Deployment Workflow

1. Make changes in the `source` branch
2. Test locally with `hugo server`
3. Generate static site with `hugo`
4. Commit source changes to `source` branch
5. Navigate to `public/` directory and push to `master` branch:
   ```bash
   cd public/
   git add .
   git commit -m "Update site"
   git push origin HEAD:master
   ```

Alternatively, commit `public/` directly from the parent folder to the `master` branch without changing directories.

## Site Architecture

### Content Organization

- **`content/home/`**: Widget-based homepage sections (about, publications, experience, news, etc.)
- **`content/publication/`**: Individual publication entries, each in a subdirectory with `index.md`
- **`content/event/`**: Talks and presentations
- **`content/project/`**: Research projects (e.g., SPEAR, Udaan, TOFI)
- **`content/post/`**: Blog posts
- **`content/authors/admin/`**: Author profile information

### News/Updates System

The homepage displays recent news via a custom shortcode system:
- `content/newslist.dat`: News items for homepage display (limited to recent updates)
- `content/allnews.dat`: Complete archive of all news items
- `content/home/recent_news.md`: Widget that displays news using `{{< readfromfile "/content/newslist.dat" 12>}}` shortcode

When updating news:
1. Add new items to the top of `newslist.dat`
2. Maintain the full archive in `allnews.dat`
3. Keep format consistent: `- **[Month Year]** Description [[Link text](url)]`

### Configuration Files

Located in `config/_default/`:
- `config.yaml`: Main Hugo configuration (modules, permalinks, taxonomies)
- `params.yaml`: Theme parameters and site settings
- `menus.yaml`: Navigation menu structure
- `languages.yaml`: Language configuration

### Theme System

Uses Wowchemy v5 theme via Hugo modules. Theme modules imported in `config.yaml`:
- `wowchemy-plugin-netlify-cms`
- `wowchemy-plugin-netlify`
- `wowchemy-plugin-reveal` (for slides)
- `wowchemy/v5` (core theme)

Custom layouts and shortcodes go in `layouts/` directory.

## Publication Entry Structure

Each publication is a directory under `content/publication/` with an `index.md` file containing:
- Front matter with metadata (title, authors, date, publication type, venue)
- Abstract and summary
- Links to PDF, code, poster, slides
- Optional featured image
- Publication types: 0=Uncategorized, 1=Conference, 2=Journal, 3=Preprint, 4=Report, 5=Book, 6=Book section, 7=Thesis, 8=Patent

## Widget System

Homepage sections are defined in `content/home/*.md` files. Each widget has:
- `widget` type (e.g., "blank", "pages", "experience")
- `weight` for ordering (lower numbers appear first)
- `active` to enable/disable
- Design parameters (columns, background, spacing)

To modify homepage layout, edit or disable widgets in `content/home/`.

## Dependencies

- Hugo Extended v0.97+
- Go 1.15+
- Wowchemy Hugo Themes v5.9.0

## Troubleshooting

### Hugo Build Fails with Template Errors

If you see errors like:
- `can't evaluate field File in type *source.File`
- `can't evaluate field GoogleAnalytics in type interface {}`

This means your Hugo version is too new. Downgrade to Hugo v0.97.3 extended.

### Content Errors to Avoid

- **Duplicate YAML keys**: Don't define the same key (like `image:`) twice in front matter
- **Date formats**: Use ISO 8601 format `YYYY-MM-DDTHH:MM:SSZ` (e.g., `2024-02-20T00:00:00Z`)
- **Deprecated config**: Use `pagination.pagerSize` instead of `paginate` in config files

### Image Processing Compatibility Fixes

Hugo v0.97.3 has compatibility issues with the Wowchemy theme's WebP image conversion. The following template overrides have been created in `layouts/partials/` to fix this:

- `page_header.html` - Removes WebP conversion for header images
- `views/compact.html` - Removes WebP conversion in compact view
- `views/card.html` - Removes WebP conversion in card view
- `views/showcase.html` - Removes WebP conversion and fixes flip_alt_rows field access

**These overrides are essential for Hugo v0.97.3 compatibility.** Do not delete them. Images will display in their original format (JPG/PNG) instead of WebP, which works perfectly fine and maintains the site design.

### Google Analytics Workaround

A custom override exists in `layouts/partials/analytics/google_analytics.html` to bypass theme compatibility issues with newer Hugo versions. This file should remain in place.

## Local Development Setup

A local Hugo v0.97.3 extended binary is installed in `.hugo/hugo.exe`. Use this for development:

```bash
# Start development server
.hugo/hugo.exe server

# Build static site
.hugo/hugo.exe

# Build for production
.hugo/hugo.exe --gc --minify
```
