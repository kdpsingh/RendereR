## This app requires OpenCPU 1.0.1 or higher !!!! 
##

#' @export
rmdrun <- function(text, ...){
  if (grepl('```', text)) {
    filetype = '.Rmd'
  } else {
    stop('For rmdrun(), the file must have a .Rmd extension.')
  }
  writeLines(text, con=paste0('input',filetype))
    rmarkdown::run(input=paste0('input',filetype), output_file='output.html', output_format='html_document', ...);
    invisible();
}

