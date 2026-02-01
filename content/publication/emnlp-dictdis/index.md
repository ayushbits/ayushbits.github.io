---
title: 'DictDis: Dictionary Constrained Disambiguation for Improved NMT'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - admin
  - Preethi Jyothi
  - Ganesh Ramakrishnan

# Author notes (optional)
# author_notes:
#   - 'Equal contribution'
#   - 'Equal contribution'

date: '2024-11-01T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2024-11-01T00:00:00Z'

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ['1']

# Publication name and optional abbreviated publication name.
publication: In *Findings of EMNLP 2024*
# publication_short: In *ICW*

abstract: Domain-specific neural machine translation (NMT) systems (eg, in educational applications) are socially significant with the potential to help make information accessible to a diverse set of users in multilingual societies. Such NMT systems should be lexically constrained and draw from domain-specific dictionaries. Dictionaries could present multiple candidate translations for a source word/phrase due to the polysemous nature of words. The onus is then on the NMT model to choose the contextually most appropriate candidate. Prior work has largely ignored this problem and focused on the single candidate constraint setting wherein the target word or phrase is replaced by a single constraint. In this work, we present DictDis, a lexically constrained NMT system that disambiguates between multiple candidate translations derived from dictionaries. We achieve this by augmenting training data with multiple dictionary candidates to actively encourage disambiguation during training by implicitly aligning multiple candidate constraints. We demonstrate the utility of DictDis via extensive experiments on English-Hindi, English-German, and English-French datasets across a variety of domains including regulatory, finance, engineering, health and standard benchmark test datasets. In comparison with existing approaches for lexically constrained and unconstrained NMT, we demonstrate superior performance for the copy constraint and disambiguation-related measures on all domains, while also obtaining improved fluency of up to 2-3 BLEU points on some domains. 


# Summary. An optional shortened abstract.
summary: '**TL;DR:** DictDis disambiguates between multiple dictionary candidate translations in lexically constrained NMT. Achieves 2-3 BLEU point improvements across regulatory, finance, engineering, and health domains. Published at EMNLP 2024 Findings.'

tags: []

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://aclanthology.org/2024.findings-emnlp.643/'
url_code: 'https://github.com/ayushbits/dictdis-multi'
# url_dataset: 'https://github.com/wowchemy/wowchemy-hugo-themes'
url_poster: ''
# url_project: 'https://www.udaanproject.org'
url_slides: ''
# url_source: 'https://www.udaanproject.org/download_tool.html'
# url_video: 'https://youtube.com'

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


{{% callout note %}}
Click the _Cite_ button above to demo the feature to enable visitors to import publication metadata into their reference management software.
{{% /callout %}}

{{% callout note %}}
Create your slides in Markdown - click the _Slides_ button to check out the example.
{{% /callout %}}

Supplementary notes can be added here, including [code, math, and images](https://wowchemy.com/docs/writing-markdown-latex/).


