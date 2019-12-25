## This app requires OpenCPU 1.0.1 or higher !!!! 
##

#' @export
rmdtext <- function(text){
  if (grepl('```', text)) {
    filetype = '.Rmd'
  } else {
    filetype = '.R'
  }
  writeLines(text, con=paste0('input',filetype))
    rmarkdown::render(input=paste0('input',filetype), output="output.html");
    invisible();
}

