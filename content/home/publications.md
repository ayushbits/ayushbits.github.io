---
# An instance of the Pages widget.
# Documentation: https://wowchemy.com/docs/page-builder/
widget: collection

# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 90

title: Recent Publications
subtitle: ''

content:
  # Filter on criteria
  filters:
    folders:
      - publication
    tag: ''
    category: ''
    publication_type: ''
    author: ''
    exclude_featured: true
    exclude_future: false
    exclude_past: false
  # Choose how many pages you would like to display (0 = all pages)
  count: 4
  # Choose how many pages you would like to offset by
  offset: 2
  # Page order: descending (desc) or ascending (asc) date.
  order: desc
design:
  # Choose a view for the listings:
  view: 1
  columns: '2'
---

{{% callout note %}}
Quickly discover relevant content by [filtering publications](./publication/). Complete list at [Google scholar](https://scholar.google.com/citations?user=7E4Vjm0AAAAJ).
{{% /callout %}}
