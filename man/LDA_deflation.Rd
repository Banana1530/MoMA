% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/moma_sflda.R
\name{LDA_deflation}
\alias{LDA_deflation}
\title{The Deflation Scheme for LDA}
\description{
In \code{MoMA} one deflation scheme is provided for LDA.
}
\details{
Let \eqn{X} be a data matrix (properly scaled and centered), and \eqn{Y}
be the indicator matrix showing which group a sample belongs to.
\eqn{X} and \eqn{Y} should have the same number of columns. The penalized LDA problem is formulated as

\eqn{ \min_{u,v} \, u^T X^T Y v + \lambda_u P_u(u) + \lambda_v P_v(v)  }

\eqn{ \text{s.t. } \| u \|_{I+\alpha_u \Omega_u} \leq 1, \| v \|_{I + \alpha_v \Omega_v} \leq 1.  }

In the discussion below, let \eqn{u,v} be the solution to the above problem.
Let \eqn{c_x = Xu, c_y = Yv}. The deflation scheme is as follow:

\eqn{X \leftarrow  { X } -  { c_x } \left(  { c_x } ^ { T }  { c_x } \right) ^ { - 1 }  { c_x } ^ { T }  { X }
= ( I - { c_x } \left(  { c_x } ^ { T }  { c_x } \right) ^ { - 1 }  { c_x } ^ { T } )X,}

\eqn{ Y \text{   remains unchanged.}}.
}
\references{
De Bie T., Cristianini N., Rosipal R. (2005) Eigenproblems
in Pattern Recognition. In: Handbook of Geometric Computing. Springer, Berlin, Heidelberg
}
