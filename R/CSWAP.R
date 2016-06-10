CSWAP <- function(a){
    result =CNOT(CNOTReverse(CNOT(a)))
    result
}
