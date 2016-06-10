CNOT <- function(a){
    cnot= matrix(c(1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0),nrow=4,ncol=4)
    result <-cnot%*%a
    result

}
