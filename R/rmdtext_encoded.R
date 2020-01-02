## This app requires OpenCPU 1.0.1 or higher !!!! 
##

#' @export
rmdtext_encoded <- function(text){

  text = URLdecode(text)
  if (grepl('```', text)) {
    filetype = '.Rmd'
  } else {
    filetype = '.R'
  }
  writeLines(text, con=paste0('input',filetype))
    rmarkdown::render(input=paste0('input',filetype), output_file='output.html', output_format='html_document');
    invisible();
}

