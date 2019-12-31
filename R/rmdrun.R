## This app requires OpenCPU 1.0.1 or higher !!!! 
##

#' @export
rmdrun <- function(text){
  if (grepl('```', text)) {
    filetype = '.Rmd'
  } else {
    stop('For rmdrun(), the file must have a .Rmd extension.')
  }
  writeLines(text, con=paste0('input',filetype))
    rmarkdown::run(file=paste0('input',filetype));
    invisible();
}

