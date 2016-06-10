innerProduct <- function(a,b){
    a1= Conj(a)
    result = t(a1) %*% b
    t = pi/acos(result)
    theta = 180/t
    theta
}
