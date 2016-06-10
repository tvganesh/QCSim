PauliZ <- function(a){
    Z=matrix(c(1,0,0,-1),nrow=2,ncol=2)
    result <-Z%*%a
    result

}
