## Bai 1:
## - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - -- - - - - - - - -

a <- matrix(data=c(1,2,3,2,2,2,3,2,3), nrow=3, ncol=3, byrow=T)
a
b <- matrix(data=c(1,-1,3,6,-2,-3,5,1,0,2,7,4,0,1,5), nrow=3, ncol=5, byrow=T)
b
# 1.1
b[, 3]

B.row2.vec <- b[2, c(1, 4, 5)]

# 1.2
a %*% b

# 1.3
ta <- t(a)
ta
tb <- t(b)
tb
ta %*% tb

# 1.4
?solve
X <- solve(a, matrix(data=c(1,1,1), byrow=T))
X


## Bai 2:
## - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - -- - - - - - - - -
# 2.1
count.nb.ex2 <- function(Nmax.ex2, a, b) {
  n <- 1
  count <- 0
  while (n < Nmax.ex2) {
    if (n %% a == 0 & n %% b == 0) {
      count <- count + 1
      last <- n
    }

    n <- n + 1
  }
  answer <- c(count, last)
  return(answer)
}
count.nb.ex2(150, 3, 4)


# 2.2
Month <- c(1:12)
Month
Nb <- c(55,62,24,34,81,29,65,48,75,82,90,66)
Nb
mydf <- data.frame(Month, Nb)
mydf

# 2.3
data <- read.csv('data01.csv')
data
attach(data)
group <- Age
group1 <- group[Age <= 60]
group1
group2 <- group[Age >= 61 & Age <= 80]
group2
group3 <- group[Age > 80]
group3
Number <- c(group1, group2, group3)
Number

## Bai 3:
## - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - -- - - - - - - - -
# 3.1
MassProb.ex3.1 <- function(k, n, p) {
  return(choose(n, k) * p^k * (1-p)^(n-k))
}
MassProb.ex3.1(2, 4, 0.5)

# 3.2
cdf.ex3.1 <- function(x, n, p) {
  return(sum(dbinom(0:x, n, p)))
}
sum(dbinom(54, 10, 0.25))
cdf.ex3.1(54, 10, 0.25)

# 3.3
# 3.3a
cdf.ex3.1(5, 10, 0.25)
cdf.ex3.1(round(8.5), 10, 0.25)

# 3.3b
ex <- 0

# 3.3c

# 3.3d

## Bai 4:
## - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - -- - - - - - - - -
# 4.1
findmax <- function(v) {
  max <- v[1]
  i <- 1
  # index <- c()
  for (i in 1:length(v)) {
    if (v[i] > max) {
      max <- v[i]
      index <- i
    } else if (v[i] == max) {
      index <- append(index, i)
    }
  }
  return(list(max, index))
}
v <- c(1, 2.7, 4, -3, 4, 1.5)
val <- findmax(v)
val
val.index

# 4.2
data2 <- data(quakes)