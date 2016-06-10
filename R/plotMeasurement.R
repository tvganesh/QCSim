plotMeasurement <- function(a){
    d <- dim(a)
    if(d[1] < d[2]){
        a <- t(a)
    }
    b <- length(a)

    # Create a dataframe
    c <- as.data.frame(a)
    colnames(c) <- c("p")

    # Check the length of the vector
    if(b == 2){
        c$qubits <- c("0","1")
    } else if(b == 4){
        c$qubits <- c("00","01","10","11")
    } else{
        print("Not supported")
    }
    ggplot(c,aes(x=qubits,y=p,fill=p)) + geom_bar(stat="identity") +
        xlab("Qubits") + ylab("Probability") + ylim(0,1.0) +
        ggtitle("Probabilty distribution")

}
