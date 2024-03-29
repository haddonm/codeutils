% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{halftable}
\alias{halftable}
\title{halftable halves the height of a tall narrow data.frame}
\usage{
halftable(inmat, yearcol = "Year", subdiv = 3)
}
\arguments{
\item{inmat}{the data.frame to be subdivided}

\item{yearcol}{the column name of the year field}

\item{subdiv}{the number of times the data.frame should be subdivided;
the default is 3 but the numbers can only be 2 or 3.}
}
\value{
a data.frame half the height and double the width of the original
}
\description{
halftable would be used when printing a table using kable
from knitr where one of the columns was Year. The objective would be
to split the table in half taking the bottom half and attaching it on
the right hand side of the top half. The year column would act as the
index.
}
\examples{
\dontrun{
x <- as.data.frame(matrix(runif(80),nrow=20,ncol=4))
x[,1] <- 1986:2005
x[,4] <- paste0("text",1:20)
halftable(x,yearcol="V1",subdiv=2)
halftable(x[,c(1,2,4)],yearcol="V1")
x1 <- rbind(x,x[1,])
x1[21,"V1"] <- 2006
halftable(x1,yearcol="V1",subdiv=3)
}
}
