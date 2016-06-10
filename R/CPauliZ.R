CPauliZ <- function(q){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)


    # Compute 1st composite
    a = kronecker(H,I,"*")

    # Apply CNOT
    b = CNOT(a)

    c <- b %*% q

    # Compute 2nd composite
    d = kronecker(H,I,"*")

    # Compute result

    e = d %*%  c

    f = measurement(e)
    plotMeasurement(f)
}
