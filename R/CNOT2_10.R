CNOT2_10 <- function(a){
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    cnot= matrix(c(1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0),nrow=4,ncol=4)
    m =TensorProd(H,H)

    cnot2_10 = m %*% cnot %*%m
    result <-cnot2_10%*%a
    result

}
