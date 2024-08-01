---
title: 'Semi-Supervised Data Programming with Subset Selection,'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - admin
  - Oishik Chatterjee
  - Krishnateja Killamsetty 
  - Ganesh Ramakrishnan
  - Rishabh Iyer

# Author notes (optional)
# author_notes:
#   - 'Equal contribution'
#   - 'Equal contribution'

date: '2021-08-01T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2022-11-01T00:00:00Z'

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ['1']

# Publication name and optional abbreviated publication name.
publication: In *Findings of ACL 2021*
# publication_short: In *ICW*

# abstract: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum. Sed ac faucibus dolor, scelerisque sollicitudin nisi. Cras purus urna, suscipit quis sapien eu, pulvinar tempor diam. Quisque risus orci, mollis id ante sit amet, gravida egestas nisl. Sed ac tempus magna. Proin in dui enim. Donec condimentum, sem id dapibus fringilla, tellus enim condimentum arcu, nec volutpat est felis vel metus. Vestibulum sit amet erat at nulla eleifend gravida.

# # Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

tags: []

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://arxiv.org/abs/2008.09887'
url_code: 'https://github.com/decile-team/spear'
# url_dataset: 'https://github.com/wowchemy/wowchemy-hugo-themes'
url_poster: ''
# url_project: 'https://www.udaanproject.org'
url_slides: ''
# url_source: 'https://www.udaanproject.org/download_tool.html'
url_video: 'https://youtu.be/ZCm3kO7BT_k?t=3945'

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# image:
#   caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/pLCdAaMFLTE)'
#   focal_point: ''
#   preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
# projects:
#   - example

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
# slides: example
---
The paradigm of data programming, which uses weak supervision in the form of rules/labelling functions, and semi-supervised learning, which augments small amounts of labelled data with a large unlabelled dataset, have shown great promise in several text classification scenarios. In this work, we argue that by not using any labelled data, data programming based approaches can yield sub-optimal performances, particularly when the labelling functions are noisy.  The first contribution of this work is an introduction of a framework, SPEAR which is a semi-supervised data programming paradigm that learns a joint model that effectively uses the rules/labelling func- tions along with semi-supervised loss functions on the feature space. Next, we also study SPEAR-SS which additionally does subset selection on top of the joint semi-supervised data programming objective and selects a set of examples that can be used as the labelled set by SPEAR . The goal of SPEAR-SS is to ensure that the labelled data can complement the labelling functions, thereby benefiting from both data-programming as well as appropriately selected data for human labelling. We demonstrate that by effectively combining semi-supervision, data-programming, and sub- set selection paradigms, we significantly out-perform the current state-of-the-art on seven publicly available datasets.
The source code is available [https://github.com/ayushbits/Semi-Supervised-LFs-Subset-Selection](https://github.com/ayushbits/Semi-Supervised-LFs-Subset-Selection).



<!--
{{% callout note %}}
Click the _Cite_ button above to demo the feature to enable visitors to import publication metadata into their reference management software.
{{% /callout %}}

{{% callout note %}}
Create your slides in Markdown - click the _Slides_ button to check out the example.
{{% /callout %}}

Supplementary notes can be added here, including [code, math, and images](https://wowchemy.com/docs/writing-markdown-latex/). -->


