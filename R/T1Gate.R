T1Gate <- function(a){
    T1=matrix(c(1,0,0,exp(-1i*pi/4)),nrow=2,ncol=2)
    result <-T1%*%a
    result

}
