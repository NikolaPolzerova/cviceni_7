SuperString = function(sek){

}

Prekryv = function(sek1,sek2){

  return(prekryv)
}

MaticePrekryvu = function(sek){

  matice <- matrix(nrow=length(sek)-1, ncol=length(sek)-1)
  m <- 1
  r <- 2
  
  x <- 0
  y <- 0
  
  while (m < length(sek)){
    shoda <- 0
    
    for (i in r:length(sek)){
      sek1 <- strsplit(sek[m], "")[[1]]
      sek2 <- strsplit(sek[i], "")[[1]]
      
      x <- length(sek1)
      y <- length(sek2)
      
      #porovnani
      for (j in 1:min(x,y)){
        if (sek1[j] == sek2[j]){
          shoda <- shoda + 1
        } 
      }
      matice[m, i-1] <- shoda
    }
    m <- m + 1
    r <- r + 1
  }
  

  return(matice)
}