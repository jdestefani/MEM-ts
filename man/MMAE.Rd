% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multivariateErrorMeasures.R
\name{MMAE}
\alias{MMAE}
\title{MMAE - Multivariate Mean Absolute Error}
\usage{
MMAE(X, X_hat)
}
\arguments{
\item{X}{\itemize{
\item Target matrix (hxk) for k variables and forecasting horizon h
}}

\item{X_hat}{\itemize{
\item Predicted matrix (hxk) for k variables and forecasting horizon h
}}
}
\value{
List containing:
\itemize{
\item{\code{values_vec}: }{Vector of the individual MAEs}
\item{\code{mean}: }{Mean of the vector of the individual MAEs}
}
}
\description{
Computes the multivariate MMAE as a mean of the MAEs of the individual time series
}
\examples{
X <- matrix(rnorm(100),10,10)
X_hat <- matrix(rnorm(100,mean=1),10,10)
results_list <- MMAE(X,X_hat)
results_list$values_vec # For individual MAEs vector
results_list$mean # For the mean of the individual MAEs
}
