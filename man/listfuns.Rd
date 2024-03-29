% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{listfuns}
\alias{listfuns}
\title{listfuns produces a listing of all functions in an input R file}
\usage{
listfuns(infile)
}
\arguments{
\item{infile}{the R file to be examined}
}
\value{
a data.frame of syntax, function name, line number, and file name
}
\description{
listfuns reads in a given R file and then identifies each
function header within it and pulls out the function name, its syntax,
the line-number in the file, and associates that with the filename.
}
\examples{
print("wait for an example")
}
