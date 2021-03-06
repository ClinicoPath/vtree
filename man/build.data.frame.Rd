% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/build.data.frame.R
\name{build.data.frame}
\alias{build.data.frame}
\title{Build a data frame to display with vtree}
\usage{
build.data.frame(varnames, ...)
}
\arguments{
\item{varnames}{A vector of variable names.}

\item{...}{Lists of patterns and the frequency of each pattern.
When a pattern is shorter than the list of variable names
(for example, 3 variable names but only 2 values in the pattern),
\code{NA}'s are substituted for the missing variable names.}
}
\value{
A data frame.
}
\description{
Build a data frame by specifying variable names and patterns of values together with frequencies.
}
\details{
Suppose \code{varnames=c("animal","size","hair")},
then one pattern would be \code{list("dog","small","short",4)},
which specifies 4 dogs that are small and short-haired.
Another pattern could be \code{list("cat","large","long",101)},
specifying 101 large cats.
}
\examples{
# Number of countries in Africa, whether population is over 30 million or not,
# and whether landlocked or not.
# https://www.worldometers.info/geography/how-many-countries-in-africa/
#
df <- build.data.frame(
 c("continent","population","landlocked"),
 list("Africa","Over 30 million","landlocked",2),
 list("Africa","Over 30 million","not landlocked",12),
 list("Africa","Under 30 million","landlocked",14),
 list("Africa","Under 30 million","not landlocked",26))

}
\author{
Nick Barrowman <nbarrowman@cheo.on.ca>
}
