## Bai 1:
## - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - -- - - - - - - - -

# 1.1
x <- 1:40
n <- 40
p <- 0.8

# Phan phoi xac suat cua X la phan phoi Bernoulli vi cac cam bien deu hoat dong 
# doc lap va xac suat kich hoat bao dong cua moi cam bien la 80%
px <- dbinom(x, size = n, prob = p)
px

# 1.2
?rbinom
# x <- seq(-5, 5, by=0.1)
x <- dbinom(1:40, 40, 0.8)
x
plot(1:40, x, col='blue', type='h')

# 1.3
## Cach 1
prop <- pbinom(30, 40, 0.8) - pbinom(5, 40, 0.8)
prop

## Cach 2


# 1.4
m.vec <- c(10,50,100,500,1000,5000,100000,1000000,2000000)
m.vec

# SampleMean.vec <- 

## Bai 2:
## - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - -- - - - - - - - -
for (i in c(10, 100, 1000)) {
  n <- i
  # n <- 1000
  x <- rnorm(n, mean=0, sd=1)
  y <- rchisq(n, df=1)
  w = x / sqrt(y / n)
  hist(w, freq=0, breaks=40, col="lightblue")
  curve(dt(w, df=n-1), col="red", lwd=2, add=TRUE)
}

for (i in 10^(seq(1, 5, by=1))) {
  curve(dt(i, ))
}


## Bai 3:
## - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - -- - - - - - - - -
lambda <- 25
x <- rpois(lambda)

?dpois


## Bai 4:
## - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - -- - - - - - - - -
#4.1
x <- rchisq(15, 14)
find.Interval <- function(p) {
  a <- qchisq((1-p)/2, df=14)
  b <- qchisq((1+p)/2, df=14)  
  ?qchisq
  interval.p <- c(a, b)
  return(interval.p)
}
a <- find.Interval(0.75)[1]
a

b <- find.Interval(0.75)[2]
b
#4.2
m.vec <- 10^(seq(1, 5, by=1))
m.vec
p.hat.vec <- rep(1, length(m.vec))

test <- function(n) {
  answer <- 0
  if ((a <= sample[i]) && (sample[i] <= b)) answer <- 1
  return(answer)
}

for (i in 1:length(m.vec)) {
  p.hat.vec[i] <- m.vec[i]
  p.hat <- test(m.vec[i])
  p.hat.vec[i] <- p.hat
}
