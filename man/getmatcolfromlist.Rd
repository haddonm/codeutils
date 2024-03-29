% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{getmatcolfromlist}
\alias{getmatcolfromlist}
\title{getmatcolfromlist extracts named columns from a list of matrices or df}
\usage{
getmatcolfromlist(x, columname)
}
\arguments{
\item{x}{a list of 2d matrices}

\item{columname}{the name of the row or column to be extracted}
}
\value{
a list of the required columns
}
\description{
getmatcolfromlist One often has a list of matrices
}
\examples{
y <- matrix(rnorm(100,mean=5,sd=1),nrow=10,ncol=10,
            dimnames=list(paste0(1:10,"R"),paste0(1:10,"C")))
x <- list(one=y,two=y)
getmatcolfromlist(x,columname="5R")
getmatcolfromlist(x,columname="4C")            
}
