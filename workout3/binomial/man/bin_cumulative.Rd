% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bin-cumulative.R
\name{bin_cumulative}
\alias{bin_cumulative}
\title{binomial cumulative probability}
\usage{
bin_cumulative(n, p)
}
\arguments{
\item{n}{the number of total trials}

\item{p}{the probability of single success}
}
\value{
a dataframe recording the probability and cumulative probability
}
\description{
produce a table of cumulative probability
}
\examples{
bin_cumulative(5,0.5)
}
