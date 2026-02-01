---
title: 'ARISE: Iterative Rule Induction and Synthetic Data Generation for Text Classification'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - Yaswanth M
  - Vaibhav Singh
  - admin
  - Amrith Krishna
  - Ganesh Ramakrishnan

# Author notes (optional)
# author_notes:
#   - 'Equal contribution'
#   - 'Equal contribution'

date: '2025-03-01T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2025-03-01T00:00:00Z'

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ['1']

# Publication name and optional abbreviated publication name.
publication: In *Findings of NAACL 2025*
# publication_short: In *ICW*

abstract: We propose ARISE, a framework that iteratively induces rules and generates synthetic data for text classification. We combine synthetic data generation and automatic rule induction, via bootstrapping, to iteratively filter the generated rules and data. We induce rules via inductive generalisation of syntactic-ngrams, enabling us to capture a complementary source of supervision. These rules alone lead to performance gains in both ICL and fine-tuning settings. Similarly, use of augmented data from ARISE alone improves the performance for a model, outperforming configurations that rely on complex methods like contrastive learning. Further, Our extensive experiments on various datasets covering three full-shot, eight few-shot and seven multilingual variant settings demonstrate that the rules and data we generate lead to performance improvements across these diverse domains and languages.




# Summary. An optional shortened abstract.
summary: '**TL;DR:** ARISE iteratively induces rules and generates synthetic data for text classification via bootstrapping. Outperforms complex methods like contrastive learning across diverse domains and languages. Published at NAACL 2025 Findings.'

tags: []

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://aclanthology.org/2025.findings-naacl.359/'
url_code: ''
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


