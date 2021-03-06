% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logging.R
\name{moma_logger_level}
\alias{moma_logger_level}
\alias{moma_logging}
\title{MoMA Package Logging Functionality}
\usage{
moma_logger_level(level = c("ERROR", "WARNING", "MESSAGE", "INFO",
  "DEBUG"))
}
\arguments{
\item{level}{The desired new log level. Available levels are \itemize{
    \item \code{ERROR} - corresponding to \code{base::stop};
    \item \code{WARNING} - corresponding to \code{base::warning};
    \item \code{MESSAGE} - corresponding to \code{base::message};
    \item \code{INFO}; and
    \item \code{DEBUG.}
} If omitted, the log level is not changed (and the current level is still
returned invisibly.) See below for details about the different levels.}
}
\value{
The previous log level (invisibly).
}
\description{
Control the global logging level for the \code{moma} package.
}
\details{
The \code{moma} package has a multi-level logging system, with a single
    global log level; (which applies to both \code{R} and \code{C++} level
    functionality.) the levels are, in decreasing order, \code{ERROR},
    \code{WARNING}, \code{MESSAGE} (default), \code{INFO}, \code{DEBUG}.

    To change the amount of output from the \code{moma} package, the
    \code{moma_logger_level} function can be used to adjust the global
    log level. The \code{INFO} and \code{DEBUG} levels can be quite verbose
    and may significantly slow down the package.
}
