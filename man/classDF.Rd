% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{classDF}
\alias{classDF}
\title{classDF - tabulate the class of each column in a data.frame}
\usage{
classDF(dataframe)
}
\arguments{
\item{dataframe}{\itemize{
\item the input data.frame for examination
}}
}
\value{
generates paired column names with their classes
}
\description{
classDF - tabulate the class of each column in a data.frame.
}
\examples{
 data(ChickWeight)
 classDF(ChickWeight)
}
