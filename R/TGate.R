TGate <- function(a){
    T=matrix(c(1,0,0,exp(1i*pi/4)),nrow=2,ncol=2)
    result <-T%*%a
    result

}
