
#' @title toXL copies a data.frame or matrix to the clipboard
#'
#' @description toXL copies a data.frame or matrix to the clipboard
#'    so one can then switch to Excel and just type ctrl + V to paste the
#'    data in place. It has been giving problems with being built on MacOS
#'    because it generates an error 'clipboard' not exported by utils. So,
#'    currently, it is relagated to this source file.
#'
#' @param x a vector or matrix
#' @param output - a boolean determining whether to print the object to the
#'    screen as well as the clipboard; defaults to FALSE
#' @return Places the object 'x' into the clipboard ready for pasting
#' @export toXL
#' @examples
#' datamatrix <- matrix(data=rnorm(100),nrow=10,ncol=10)
#' colnames(datamatrix) <- paste0("A",1:10)
#' rownames(datamatrix) <- paste0("B",1:10)
#' toXL(datamatrix,output=TRUE)
toXL <- function(x,output=FALSE) {
  if (tolower(Sys.info()['sysname']) == "windows") {
    write.table(x,"clipboard",sep="\t")
    if(output) print(x)
  }
  if (Sys.info()['sysname'] == "Darwin") {
    write.table(x,file = pipe("pbcopy"),   # macOS clipboard connection
                sep = "\t",row.names = FALSE,quote = FALSE)            
  }
} # end of toXL



