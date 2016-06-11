CPauliY <- function(q){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)
    S=matrix(c(1,0,0,1i),nrow=2,ncol=2)
    S1=matrix(c(1,0,0,-1i),nrow=2,ncol=2)

    # Compute 1st composite
    a = kronecker(S1,I,"*")

    # Apply CNOT
    b = CNOT(a)

    c <- b %*% q

    # Compute 2nd composite
    d = kronecker(S,I,"*")

    # Compute result

    e = d %*%  c


    f = measurement(e)
    plotMeasurement(f)
}
