---
title: 'Reweighing auxiliary losses in supervised learning'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - Durga S
  - admin
  - Pradeep Shenoy
  - Prathosh AP
  - Ganesh Ramakrishnan

# Author notes (optional)
# author_notes:
#   - 'Equal contribution'
#   - 'Equal contribution'

date: '2022-11-19T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2022-11-19T00:00:00Z'

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ['1']

# Publication name and optional abbreviated publication name.
publication: In *AAAI 2023*
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

url_pdf: 'https://arxiv.org/abs/2202.03250'
# url_code: 'https://github.com/ayushbits/robust-aggregate-lfs'
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


Apart from the standard supervised learning using hard labels, often auxiliary losses are used in many supervised learning settings to improve the model's generalisation. For example, knowledge distillation adds a second, teacher mimicking loss to the training of a model, where the teacher may be a pretrained model that outputs a richer distribution over labels. Similarly, in settings with limited labelled data, weak labelling information is used in form of labelling functions. Auxiliary losses are introduced here to combat labelling functions that may be noisy rule-based approximations of true labels. We tackle the problem of learning to combine these losses in a principled manner. We introduce AMAL which learns instance-specific weights using meta learning on a validation metric to achieve optimal mixing of losses. Experiments in a number of knowledge distillation and rule denoising domains show that AMAL provides noticeable gains over competitive baselines in those domains. We empirically analyze our method and share insights into the mechanisms through which it provides performance gains.
