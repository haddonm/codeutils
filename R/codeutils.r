
#' codeutils: a set of functions to assist with code development
#'
#' The codeutils package provides an array of utility functions,
#' these include documentation functions and summary functions. plot
#' functions are to be found in the hplot package
#'
#' @section codeutilities:
#' \describe{
#'   \item{countgtOne}{counts values >1 in a vector}
#'   \item{countgtzero}{counts values >0 in a vector}
#'   \item{countNAs}{count the numbr of NA values in a vector}
#'   \item{countones}{count the number of values = 1 in a vector}
#'   \item{countzeros}{count the number of values = 0 in a vector}
#'   \item{codeBlock}{generates a comment section ready to copy into code}
#'   \item{classDF}{Tabulates the class of each column in a dataframe}
#'   \item{getname}{returns the name of a variable as character}
#'   \item{properties}{characterizes properties of data.frame columns}
#' }
#' @section fileutils:
#' \describe{
#'   \item{listFunctions}{lists all functions in a given R file}
#'   \item{classDF}{identifies the class of each column in a data.frame}
#' }
#' @section rmdutils:
#' \describe{
#'   \item{lininterpol}{linearly replaces NA values in a vector}
#'   \item{greplow}{a case ignoring 'grep'}
#'   \item{printV}{prints a vector as a column with index numbers}
#'   \item{quants}{used in apply to estimate quantiles across a vector}
#'   \item{which.closest}{finds closest value in a vector to a given number}
#' }
#' @section diagrams:
#' \describe{
#'   \item{canvas}{sets up a plotting area ready for use}
#'   \item{circle}{draws a circle with a given origin and radius}
#' }
#' 
#' @name codeutils
#' @keywords internal
"_PACKAGE"
NULL

#' @importFrom grDevices dev.cur dev.new dev.off png palette
#' @importFrom graphics par grid plot axis mtext polygon title hist lines text
#' @importFrom graphics points
#' @importFrom utils tail head str write.table write.csv readClipboard
#' @importFrom utils strOptions
#' @importFrom stats quantile loess sd rnorm
#' @importFrom knitr kable
NULL
