rows <- c(1:20)
it <- 10000000
x3 <- sample(20, it, replace = TRUE)
df <- data.frame(table(x3))
sum <- sum(df['Freq'])
x <- 0
for (i in df[2]) {
  print(i)
  x <- i/sum
}
df['%'] = x