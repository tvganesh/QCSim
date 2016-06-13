CPauliX <- function(q){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)

    # Compute 1st composite
    a = kronecker(I,I,"*")

    # Apply CNOT
    b = CNOT(a)

    # Compute 2nd composite
    d = kronecker(I,I,"*")

    # Compute result

    e = d %*%  b

    f = e %*% q

    g = measurement(f)
    plotMeasurement(g)
}
