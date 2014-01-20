\name{value}
\alias{value}
\alias{value.blockmatrix}
\alias{value.default}
\title{\code{value} S3 method for \code{blockmatrix} object}
\usage{
  value(M)

  \method{value}{default} (M)

  \method{value}{blockmatrix} (M)
}
\arguments{
  \item{M}{a \code{blockmatrix} object}
}
\value{
  The character matrix without numerical values (e.g. only
  the matrix \code{M$value})
}
\description{
  \code{value} S3 method for \code{blockmatrix} object
}
\author{
  Emanuele Cordano
}

