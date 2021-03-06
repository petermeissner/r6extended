% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/r6extended.r
\docType{class}
\name{r6extended}
\alias{r6extended}
\title{extended R6 class}
\format{\code{\link{R6Class}} object.}
\usage{
r6extended
}
\value{
Object of \code{\link{R6Class}}
}
\description{
extended R6 class
}
\examples{

# make new
ext <- r6extended$new()

# what is there?
ext$ls()

# getting things (wherever they are, also private stuff)
ext$get("options")
ext$get("hashes")

# messages
ext$message("Please note ...")
ext$options$verbose <- FALSE
ext$message("Please note ...")

# warning
ext$warning("Beware! ...")

# build in hashing
ext$hash_do()
ext$hash_get("options")

# debugging
ext$debug()
private$hash()
self$ls()

}
\keyword{data}
