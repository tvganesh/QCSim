CNOT3_12 <- function(a){
    I4=matrix(c(1,0,0,0,
                0,1,0,0,
                0,0,1,0,
                0,0,0,1),nrow=4,ncol=4)
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)
    l = TensorProd(I,CNOT2_01(I4))
    result = l %*% a
    result
}
