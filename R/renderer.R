#' @export
renderer <- function(text, ...) {
  
  print('hey')
  # text = URLdecode(text)
  # if (!grepl('```', text) & !grepl('^\\s*?---', text)) {
  #   text = paste0('```{r}\n',text,'\n```')
  # }
  
  # Convert &gt; into >
  # text = textutils::HTMLdecode(text)
    
  # writeLines(text, con='output.Rmd')
  # rmarkdown::render(input='output.Rmd', ...)
  # invisible()
}

