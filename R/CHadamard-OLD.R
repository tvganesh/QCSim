CHadamard <- function (a){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)
    Z=matrix(c(1,0,0,-1),nrow=2,ncol=2)
    q00=matrix(c(1,0,0,0),nrow=4,ncol=1)
    q10=matrix(c(0,0,1,0),nrow=4,ncol=1)
    q11 = matrix(c(0,0,0,1),nrow=4,ncol=1)
    A= exp(3i*pi/8) * PauliX(SGate(Hadamard(TGate(Hadamard(S1Gate(I))))))

    B = exp(-1i*pi/8) * SGate(Hadamard(T1Gate(Hadamard(S1Gate(Hadamard(SGate(Hadamard(I))))))))
    C = exp(-1i*pi/8) * Hadamard(SGate(Hadamard(I)))
    a = A %*% Z %*% B %*% Z %*% C
    b = I=matrix(c(1,0,0,-1i),nrow=2,ncol=2)
    d = a %*% b
    m=kronecker(a,b,"*")
    n= m %*% H %*% q10
    p = m %*% q11
}
