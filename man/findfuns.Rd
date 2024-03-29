% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{findfuns}
\alias{findfuns}
\title{findfuns finds references to other functions within other functions}
\usage{
findfuns(indir, infile, allfuns)
}
\arguments{
\item{indir}{the directory in which the file identified in 'infile' is
located}

\item{infile}{the filename of the R file within which to search for the
functions listed in the allfuns data.frame derived from the listfuns
function}

\item{allfuns}{a data.frame of functions and their properties listed in
the order of the sorted function names in the 'function' column}
}
\value{
the same data.frame except that the references column will have been
populated
}
\description{
findfuns is used when developing a complex project containing
many R files, each containing many R functions. Given a file that
contains a set of functions (infile) and a data.frame of all functions
from the project (allfuns), which is obtained using listfuns, then
findfuns searches each function for references to any of the projects
functions. This allows them to be cross referenced
}
\examples{
print("wait on suitable data-set")
}
\seealso{
{
\link{describefunctions}, \link{identifyfuns}
}
}
