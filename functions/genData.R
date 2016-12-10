
gendata <- function(tipoDado, rep){
  rows <- c(1:tipoDado)
  it <- rep
  x3 <- sample(tipoDado, it, replace = TRUE)
  df <- data.frame(table(x3))
  sum <- sum(df['Freq'])
  x <- 0
  for (i in df[2]) {
    print(i)
    x <- i/sum
  }
  df['%'] = x
  saveData(df)
}