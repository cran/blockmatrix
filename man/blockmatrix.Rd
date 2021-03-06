\name{blockmatrix}
\alias{blockmatrix}
\title{This function builds a blockmatrix}
\usage{
  blockmatrix(dim, value = NULL, names = NULL, list = NULL,
    use.as.blockmatrix = TRUE, adjust_zero = TRUE,
    add_zero_matrix = FALSE, zero_element = "0", ...)
}
\arguments{
  \item{dim}{dimension of a block-matrix}

  \item{value}{matrix containing the indices (names) of
  blockmatrix element. If missing, it is \code{NULL}
  (Default). (sse \code{\link{value}}}

  \item{names}{charcarcter vector containing the names for
  each matrix-type element of the block-matrix}

  \item{list}{list containing the matrices to be inserted
  into the block-matrix. If \code{NULL} (Default) the
  matrix are faken from \code{...}}

  \item{use.as.blockmatrix}{logical value. If \code{TRUE}
  (Default) the method \code{\link{as.blockmatrix}} for
  blockmatrix object is applied to the output blockmatrix
  before being returned.}

  \item{adjust_zero,add_zero_matrix,zero_element}{arguments
  passed to \code{\link{as.blockmatrix}}}

  \item{...}{elements of the block-matrix.}
}
\description{
  This function builds a blockmatrix
}
\examples{
rm(list=ls())
library(blockmatrix)

A <- array(rnorm(9,mean=1),c(3,3))
B <- 0 #array(rnorm(9,mean=2),c(3,3))
C <- 0
D <- array(rnorm(9,mean=4),c(3,3))
F <- array(rnorm(9,mean=10),c(3,3))

M <- blockmatrix(names=c("A","0","D","0"),A=A,D=D,dim=c(2,2))
E <- blockmatrix(names=c("0","F","D","0"),F=F,D=D,dim=c(2,2))

R <- M+E
S <- solve(R)
P <- blockmatmult(R,E)

l <- list(A=A,B=B,C=C,D=D,F=F)
mv <- array(c("A","B","C","D","F","F"),c(3,2))
BB <- blockmatrix(value=mv,list=l)
}
\author{
  Emanuele Cordano
}
\seealso{
  \code{\link{as.blockmatrix}}
}

