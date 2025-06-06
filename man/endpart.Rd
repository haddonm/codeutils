% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{endpart}
\alias{endpart}
\title{endpart extracts the last part of an R path listing}
\usage{
endpart(x)
}
\arguments{
\item{x}{a character vector of the path to a subdirectory or filename}
}
\value{
the final character string - either a subdirectory or filename
}
\description{
endpart takes a path listing and extracts the final part. This
is used to find the subdirectory name into which an analysis is to be
placed, or could be used to find only the filename of a file at the end
of a long path. endpart automatically finds whether the user has '/'
or '\\\\' as the section separator.
}
\examples{
first <- "C:/Users/public/Public Documents/first/"
second <- "C:\\\\Users\\\\public\\\\Public Documents\\\\second"
print(first)
print(second)
endpart(first)
endpart(second)
}
