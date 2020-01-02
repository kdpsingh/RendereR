## This app requires OpenCPU 1.0.1 or higher !!!! 
##

#' @export
rmdtext_encoded <- function(text){

  text = URLdecode(text)
  if (grepl('```', text) | grepl('^---', text)) {
    filetype = '.Rmd'
  } else {
    filetype = '.R'
  }
  writeLines(text, con=paste0('output',filetype))
    rmarkdown::render(input=paste0('output',filetype));
    invisible();
}

