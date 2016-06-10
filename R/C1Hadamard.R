C1Hadamard <- function (q){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)
    Z=matrix(c(1,0,0,-1),nrow=2,ncol=2)

    a = SGate(Hadamard(I))
    b = S1Gate(Hadamard(I))
    c = kronecker(a,b,"*")
    #d = c %*% q00
    d = CNOT(c)
    d1 = d %*% q

    #Composite 3
    e = TGate(Hadamard(I))
    f1 = kronecker(I,e,"*")
    f2 = CNOT(f1)

    g1 = f2 %*% d1


    i=PauliX(Hadamard(SGate(TGate(I))))
    j = kronecker(I,i,"*")
    k = j %*% g1
    plotMeasurement(measurement(k))




}
