---
title: 'FAIR: Filtering of Automatically Induced Rules'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - Divya Jyoti Bajpai
  - admin
  - Manjesh Kumar Hanawal
  - Ganesh Ramakrishnan

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
publication: In *EACL 2024*
# publication_short: In *ICW*

# abstract: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum. Sed ac faucibus dolor, scelerisque sollicitudin nisi. Cras purus urna, suscipit quis sapien eu, pulvinar tempor diam. Quisque risus orci, mollis id ante sit amet, gravida egestas nisl. Sed ac tempus magna. Proin in dui enim. Donec condimentum, sem id dapibus fringilla, tellus enim condimentum arcu, nec volutpat est felis vel metus. Vestibulum sit amet erat at nulla eleifend gravida.

# Summary. An optional shortened abstract.
summary: '**TL;DR:** FAIR filters automatically induced rules using submodular optimization that accounts for precision, coverage, and conflicts. Outperforms existing rule-filtering approaches with statistically significant results. Published at EACL 2024.'

tags: []

# Display this page in the Featured widget?
featured: false

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://aclanthology.org/2024.eacl-long.34.pdf'
url_code: 'https://github.com/ayushbits/FAIR-LF-Induction'
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
The availability of large annotated data can be a critical bottleneck in training machine learning algorithms successfully, especially when applied to diverse domains. Weak supervision offers a promising alternative by accelerating the creation of labeled training data using domainspecific rules. However, it requires users to write a diverse set of high-quality rules to assign labels to the unlabeled data. Automatic Rule Induction (ARI) approaches circumvent this problem by automatically creating rules from features on a small labeled set and filtering a final set of rules from them. In the ARI approach, the crucial step is to filter out a set of a high-quality useful subset of rules from the large set of automatically created rules. In this paper, we propose an algorithm FAIR (Filtering of Automatically Induced Rules) to filter rules from a large number of automatically induced rules using submodular objective functions that account for the collective precision, coverage, and conflicts of the rule set. We experiment with three ARI approaches and five text classification datasets to validate the superior performance of our algorithm with respect to several semi-supervised label aggregation approaches. Further, we show that FAIR achieves statistically significant results in comparison to existing rule-filtering approaches. The source code is available at https://github.com/ayushbits/FAIR-LF-Induction.




<!-- {{% callout note %}}
Click the _Cite_ button above to demo the feature to enable visitors to import publication metadata into their reference management software.
{{% /callout %}}

{{% callout note %}}
Create your slides in Markdown - click the _Slides_ button to check out the example.
{{% /callout %}}

Supplementary notes can be added here, including [code, math, and images](https://wowchemy.com/docs/writing-markdown-latex/).

 -->
