measurement <- function(a) {
     d <- dim(a)
     v <- NULL
     for(i in 1:d[1] ){
         v[i] <- Mod(a[i,1])^2
     }
     l = length(v)
     w = as.data.frame(v)
     x = t(w)
     if(l == 2){
         colnames(x) <- c("0","1")
     } else if (l == 4){
         colnames(x) <- c("00","01","10","11")
     }
     x

}
