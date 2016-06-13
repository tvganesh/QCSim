Toffoli <- function(q){
    X= matrix(c(0,1,1,0),nrow=2,ncol=2)
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    a = kronecker(X,I,"*")

    c = kronecker(a,I,"*")
    c %*% q100

}
