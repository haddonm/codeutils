% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{getDBdir}
\alias{getDBdir}
\title{getDBdir identifies the DropBox path}
\usage{
getDBdir()
}
\value{
the path to the DropBox directory
}
\description{
getDBdir identifies the path to DropBox within the users
sub-directory within the C:/users/ directory. If not present then it
returns NULL and gives a warning.
}
\examples{
getDBdir()
}
