RotationGate <- function(t, a){
    R= matrix(c(cos(t),sin(t),-sin(t),cos(t)),nrow=2,ncol=2)
    result <-R%*%a
    result

}
