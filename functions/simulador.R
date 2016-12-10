simularTiradaL5A <- function(tipodado=NULL, lanzados=NULL, guardas=NULL){
  # criticos <- 0
  # metodo edmund aqui
  x3 <- sample(tipodado, lanzados, replace = TRUE)
  ordenada <- sort(x3, decreasing = TRUE)
  x4 <- ordenada[1:guardas]
  sum <- sum(x4)
  return(sum)
#   cont <- 0
#   for (i in ordenada ) {
#     if (i == 10) {
#       ran <- sample(tipodado,1,replace = TRUE)
#       cont <- 0
#       while (ran < 10 || cont <= 3) {
#         ran <- sample(tipodado,1,replace = TRUE)
#         if (ran == 10) {
#           cont = cont + 1
#         }
#         print(cont)
#         sum <- sum + ran;
#         print(sum)
#       }
#       if (ran < 10) {
#         sum <- sum + ran;
#         print(sum)
#       }
#     }
# }
  
  
}