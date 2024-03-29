% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{quants}
\alias{quants}
\title{quants used in apply to estimate quantiles across a vector}
\usage{
quants(invect, probs = c(0.025, 0.05, 0.5, 0.95, 0.975))
}
\arguments{
\item{invect}{vector of values}

\item{probs}{the quantiles wanted in the outputs; default =
c(0.025,0.05,0.5,0.95,0.975)}
}
\value{
a vector of the c(0.025,0.05,0.5,0.95,0.975) quantiles or
whatever is input to probs
}
\description{
quants used in 'apply' to estimate quantiles across a vector
}
\examples{
\dontrun{
 x <- runif(1000)
 quants(x)
 quants(x,probs=c(0.075,0.5,0.925))
}
}
