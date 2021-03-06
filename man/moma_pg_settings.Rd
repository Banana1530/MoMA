% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/moma_arguments.R
\name{moma_pg_settings}
\alias{moma_pg_settings}
\title{Algorithm settings for solving the penalized SVD problem}
\usage{
moma_pg_settings(..., EPS = 1e-10, MAX_ITER = 1000,
  EPS_inner = 1e-10, MAX_ITER_inner = 1e+05, solver = c("ista",
  "fista", "onestepista"))
}
\arguments{
\item{...}{To force users to specify arguments by names.}

\item{EPS}{Precision for outer loop.}

\item{MAX_ITER}{The maximum number of iterations for outer loop.}

\item{EPS_inner}{Precision for inner loop.}

\item{MAX_ITER_inner}{The maximum number of iterations for inner loop.}

\item{solver}{A string in \code{c("ista", "fista", "onestepista")}, representing ISTA (Iterative Shrinkage-Thresholding Algorithm),
FISTA (Fast
Iterative Shrinkage-Thresholding Algorithm) and One-step ISTA (an approximated
version of ISTA) respectively.}
}
\value{
A \code{moma_pg_settings} object, which is a list containing the above parameters.
}
\description{
This function is used to specify the \code{pg_settings} argument
in the \code{moma_*pca}, \code{moma_*cca}, and \code{moma_*lda}
family of functions.
}
\details{
To find an (approximate) solution to a penalized SVD (Singular Value Decomposition) problem is to solve two
penalized regression problems iteratively (outer loop). Each penalized regression (inner loop)
is solved using one of the three algorithms: ISTA (Iterative Shrinkage-Thresholding Algorithm),
FISTA (Fast Iterative Shrinkage-Thresholding Algorithm) and
One-step ISTA (an approximated version of ISTA).
}
