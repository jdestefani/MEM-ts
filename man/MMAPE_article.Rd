% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multivariateErrorMeasures.R
\name{MMAPE_article}
\alias{MMAPE_article}
\title{MMAPE_article - Multivariate Mean Absolute Percentage Error (according to reference article)}
\usage{
MMAPE_article(X, X_hat)
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
\item{\code{article_ref}: }{MAPE computed according to the reference article}
}
}
\description{
Computes the multivariate MAPE based on the individual time series (according to \url{https://arxiv.org/pdf/1905.03806.pdf})
}
\examples{
X <- matrix(rnorm(100),10,10)
X_hat <- matrix(rnorm(100,mean=1),10,10)
results_list <- MMAPE_article(X,X_hat)
results_list$values_vec # For individual WAPE
results_list$mean # For the mean of the individual WAPE
results_list$mean # For the value computed according to the reference article
}
