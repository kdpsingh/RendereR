#' @export
renderer <- function(text, ...) {

  text = URLdecode(text)
  if (!grepl('```', text) & !grepl('^\\s*?---', text)) {
    text = paste0('```{r}\n',text,'\n```')
  }
  
  unescape_html <- function(str){
    xml2::xml_text(xml2::read_html(paste0("<x>", str, "</x>")))
  }
  
  text = unescape_html(text)
  
  writeLines(text, con='output.Rmd')
  rmarkdown::render(input='output.Rmd', ...)
  invisible()
}

