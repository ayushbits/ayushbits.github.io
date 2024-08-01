---
title: 'Sāmayik: A Benchmark and Dataset for English-Sanskrit Translation'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - admin
  - Ashim Gupta
  - Amrith Krishna
  - Atul Kumar Singh
  - Ganesh Ramakrishnan
  - G. Anil Kumar
  - Jitin Singla

# Author notes (optional)
# author_notes:
#   - 'Equal contribution'
#   - 'Equal contribution'

date: '2024-03-01T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2024-03-01T00:00:00Z'

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ['1']

# Publication name and optional abbreviated publication name.
publication: In *LREC-COLING 2024*
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

url_pdf: 'https://arxiv.org/pdf/2305.14004'
url_code: 'https://github.com/ayushbits/saamayik'
# url_dataset: 'https://github.com/wowchemy/wowchemy-hugo-themes'
# url_poster: 'Poster_EACL.pdf'
# url_project: 'https://www.virtual2021.eacl.org/paper_main.1091.html'
url_slides: ''
# url_source: 'https://www.udaanproject.org/download_tool.html'
# url_video: 'https://www.virtual2021.eacl.org/paper_main.1091.html'

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
We release Sāmayik, a dataset of around 53,000 parallel English-Sanskrit sentences, written in contemporary prose. Sanskrit is a classical language still in sustenance and has a rich documented heritage. However, due to the limited availability of digitized content, it still remains a low-resource language. Existing Sanskrit corpora, whether monolingual or bilingual, have predominantly focused on poetry and offer limited coverage of contemporary written materials. Sāmayik is curated from a diverse range of domains, including language instruction material, textual teaching pedagogy, and online tutorials, among others. It stands out as a unique resource that specifically caters to the contemporary usage of Sanskrit, with a primary emphasis on prose writing. Translation models trained on our dataset demonstrate statistically significant improvements when translating out-of-domain contemporary corpora, outperforming models trained on older classical-era poetry datasets. Finally, we also release benchmark models by adapting four multilingual pre-trained models, three of them have not been previously exposed to Sanskrit for translating between English and Sanskrit while one of them is multi-lingual pre-trained translation model including English and Sanskrit. The dataset and source code is present at https://github.com/ayushbits/saamayik.




<!-- {{% callout note %}}
Click the _Cite_ button above to demo the feature to enable visitors to import publication metadata into their reference management software.
{{% /callout %}}

{{% callout note %}}
Create your slides in Markdown - click the _Slides_ button to check out the example.
{{% /callout %}}

Supplementary notes can be added here, including [code, math, and images](https://wowchemy.com/docs/writing-markdown-latex/).

 -->
