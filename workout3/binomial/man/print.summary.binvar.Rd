% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bin-variable.R
\name{print.summary.binvar}
\alias{print.summary.binvar}
\title{printing of binomial distribution's summary}
\usage{
\method{print}{summary.binvar}(x, ...)
}
\arguments{
\item{x}{a list, summary of the binomial object}

\item{...}{inputs passed from ohter functions}
}
\description{
print out the summary of a summary of binomial distribution
}
\examples{
print(summary(bin_variable(10,0.3)))
}
