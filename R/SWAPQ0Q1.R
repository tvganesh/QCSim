SWAPQ0Q1 <- function(a){
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)
    a=TensorProd(H,I)
    b=TensorProd(a,I)
    c= CNOT3_02(b)

    # 2nd composite
    d=TensorProd(H,I)
    e = TensorProd(d,H)
    f = e %*% c
    # Apply CNOT
    g <- CNOT3_02(f)

    #3rd composite
    h=TensorProd(H,I)
    i = TensorProd(h,H)
    j = i %*% g
    # Apply CNOT
    k <- CNOT3_02(j)

    m <- CNOT3_12(k)

}
