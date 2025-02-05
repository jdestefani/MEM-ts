% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multivariateErrorMeasures.R
\name{MMAPE}
\alias{MMAPE}
\title{MMAPE - Multivariate Mean Absolute Percentage Error}
\usage{
MMAPE(X, X_hat)
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
\item{\code{values_vec}: }{Vector of the individual MAPEs}
\item{\code{mean}: }{Mean of the vector of the individual MAPEs}
}
}
\description{
Computes the multivariate MAPE as a mean of the MAPEs of the individual time series
}
\examples{
X <- matrix(rnorm(100),10,10)
X_hat <- matrix(rnorm(100,mean=1),10,10)
results_list <- MMAPE(X,X_hat)
results_list$values_vec # For individual MAPEs vector
results_list$mean # For the mean of the individual MAPEs
}
