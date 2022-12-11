# RendereR

## Welcome to ♻️ RendereR, an iOS Shortcut that lets you run R code from any text editor on your iOS device.

## How do you install it?
- Click here to install: https://www.icloud.com/shortcuts/351c85f34f7a4c4d90bf01d3bd359285
- Try to run the shortcut. If it does not work:
  - Go to Settings > Shortcuts.
  - Turn on Allow Untrusted Shortcuts. You won't see this setting until you run a shortcut first.

## What can it do?
- There are 3 ways to use RendereR.
  1. You can share any file with RendereR 3 (using the Share sheet)
  1. You can share any highlighted text with RendereR 3 (using the Share sheet)
  2. You can run RendereR directly from the Home Screen or as a Widget, in which case it will ask you to select a file that you would like to render. You can select any `.R` or `.Rmd` file (or any other type of file extension as long as it is in R or Rmd format). 
  
## What is new in RendereR 3?
As compared to Version 2, RendereR 3:
- Enables files to be directly shared through a Share sheet (e.g. from within a text editor like Textastic)
- Only displays a code editor if launched through a Share sheet for selected text. Otherwise, the code is immediately rendered.

As compared to Version 1, RendereR 3:
- Uses a different OpenCPU backend function
- Allows the user to edit the input before processing it (so you can add `library()` functions to load missing packages)
- Can handle special characters in the input
- Can render to pdf_document, word_document, and revealjs::revealjs_presentation

## Want to test it?
1. Highlight the text below (Try with or without the YAML header/backticks)
2. Tap Share
3. Tap ♻️ RendereR 3 and press OK

~~~
---
title: My publications
---

```{r echo=FALSE, message = FALSE, warning=FALSE}

library(dplyr)
library(stringr)
library(scholar)

google_scholar_id = '_0OsweUAAAAJ'

my_pubs = get_publications(google_scholar_id,flush=TRUE) %>% arrange(desc(year))

my_pubs %>%
  mutate(author = str_replace(author,'K Singh','**K Singh**')) %>% 
  mutate(link = str_c('<a target="_blank" href="https://scholar.google.com/citations?view_op=view_citation&hl=en&user=', google_scholar_id, '&citation_for_view=_0OsweUAAAAJ:', pubid, '">', author, '. ', title, '. <i>', journal, '</i>. ', number, ', ', year, '.</a>')) %>% 
  select(link) %>% 
  filter(!is.na(link)) %>%  
  knitr::kable(col.names = NULL)

```
~~~

