normalizar <- function(frame){
  val <- scale(frame[1],center = TRUE, scale = TRUE)
  print(val)
  return(val)
}