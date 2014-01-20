\name{as.blockmatrix}
\alias{as.blockmatrix}
\alias{as.blockmatrix.blockmatrix}
\alias{as.blockmatrix.default}
\alias{as.blockmatrix.matrix}
\title{\code{as.blockmatrix} S3 method for \code{blockmatrix}, \code{matrix} and \code{NULL} object}
\usage{
  as.blockmatrix(M = NULL, ...)

  \method{as.blockmatrix}{default} (M, adjust_zero = TRUE,
    zero_element = "0", ...)

  \method{as.blockmatrix}{blockmatrix} (M,
    adjust_zero = TRUE, add_zero_matrix = FALSE,
    zero_element = "0", ...)

  \method{as.blockmatrix}{matrix} (M, nrowe = 2, ncole = 2,
    nrow = NULL, ncol = NULL, adjust_zero = TRUE,
    zero_element = "0", ...)
}
\arguments{
  \item{M}{a \code{matrix} or \code{blockmatrix} object}

  \item{nrowe}{number of rows for each block (element of
  the blockmatrix)}

  \item{ncole}{number of columns for each block (element of
  the blockmatrix)}

  \item{nrow}{number of rows for block-matrix}

  \item{ncol}{number of columns of blockmatrix}

  \item{adjust_zero}{logical value. If \code{TRUE}
  (Default) it replaces the zero matrices with
  \code{zero_element}.}

  \item{add_zero_matrix}{logical value.  If \code{TRUE} it
  adds a zero-element element matrix as an object called
  \code{zero_element} in the blockmatrix}

  \item{zero_element}{see \code{\link{ncol_elements}} or
  \code{\link{nrow_elements}}}

  \item{...}{further arguments}
}
\description{
  \code{as.blockmatrix} S3 method for \code{blockmatrix},
  \code{matrix} and \code{NULL} object
}
\author{
  Emanuele Cordano
}

