
gendata <- function(tipoDado, rep){
  rows <- c(1:tipoDado)
  x3 <- sample(tipoDado, rep, replace = TRUE)
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