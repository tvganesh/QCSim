CNOTReverse <- function(a){
    cnot= matrix(c(1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0),nrow=4,ncol=4)
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    b=kronecker(H,H,"*")
    cnotr= b %*% cnot %*% b
    result <-cnotr%*%a
    result

}
