## This app requires OpenCPU 1.0.1 or higher !!!! 
##

#' @export
renderer <- function(text, ...) {
  
  text = URLdecode(text)
  if (!grepl('```', text) & !grepl('^\\s*?---', text)) {
    text = paste0('```{r}\n',text,'\n```')
  }
  
  # Convert &gt; into >
  text = textutils::HTMLdecode(text)
    
  writeLines(text, con='output.Rmd')
  rmarkdown::render(input='output.Rmd', ...)
  invisible()
}
