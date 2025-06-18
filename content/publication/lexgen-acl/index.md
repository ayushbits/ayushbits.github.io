---
title: 'LexGen: Domain-aware Multilingual Lexicon Generation'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - admin
  - Atul Kumar Singh
  - Karthika NJ
  - Krishnakant Bhat
  - Preethi Jyothi
  - Ganesh Ramakrishnan

# Author notes (optional)
# author_notes:
#   - 'Equal contribution'
#   - 'Equal contribution'

date: '2025-06-01T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2025-06-01T00:00:00Z'

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ['1']

# Publication name and optional abbreviated publication name.
publication: In *ACL Main Conference 2025*
# publication_short: In *ICW*

abstract: Lexicon or dictionary generation across domains has the potential for societal impact, as it can potentially enhance information accessibility for a diverse user base while preserving language identity. Prior work in the field primarily focuses on bilingual lexical induction, which deals with word alignments using mapping or corpora-based approaches. However, these approaches do not cater to domain-specific lexicon generation that consists of domain-specific terminology. This task becomes particularly important in specialized medical, engineering, and other technical domains, owing to the highly infrequent usage of the terms and scarcity of data involving domain-specific terms especially for low/mid-resource languages. In this paper, we propose a new model to generate dictionary words for  Indian languages in the multi-domain setting. Our model consists of domain-specific and domain-generic layers that encode information, and these layers are invoked via a learnable routing technique. We also release a new benchmark dataset consisting of >75K translation pairs across 6 Indian languages spanning 8 diverse domains. We conduct both zero-shot and few-shot experiments across multiple domains to show the efficacy of our proposed model in generalizing to unseen domains and unseen languages. Additionally, we also perform a post-hoc human evaluation on unseen languages.




# # Summary. An optional shortened abstract.
summary: We propose a new model to generate dictionary words for Indian languages in the multi-domain setting. Our model consists of domain-specific and domain-generic layers that encode information, and these layers are invoked via a learnable routing technique. 

tags: []

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://arxiv.org/pdf/2405.11200'
url_code: 'https://github.com/Atulkmrsingh/lexgen'
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


