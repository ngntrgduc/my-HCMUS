mu <- 10
sigma <- 4
p <- 0.9
a <- qnorm((1-p)/2, mean=mu, sd=sigma)
b <- qnorm((1+p)/2, mean=mu, sd=sigma)
interval.p <- c(a, b)
interval.p

# X ~ Normal(mu, sigma)
test <- function(n) {
	count <- 0
	sample <- rnorm(n, mu, sigma)
	for (i in 1:n) {
		if ((a <= sample[i]) && (sample[i] <= b)) count <- count + 1	
	}
	p.propotion <- count / n
	return(p.propotion)
}

p.test1 <- test(100); p.test1
p.test2 <- test(1000); p.test2
p.test3 <- test(10000); p.test3

# n.vec <- c(10, 100, 1000, 10000, 100000)
n.vec <- 10^(seq(1, 5, by=1))
n.vec
p.testvec <- c(test(10))
p.testvec <- rep(1, length(n.vec))
p.testvec
for (i in 1:length(n.vec)) {
  p.testvec[i] <- mean(replicate(100, test(n.vec[i])))
}
plot(n.vec, p.testvec, type='l', col='blue', lwd=2, xlab="n", ylab="p")
lines(n.vec, rep(p, length(n.vec)), col='red', lty=4, lwd=2)
?lines

# X ~ Student(m)
# X ~ ChiSquare(m)
# X ~ Fisher

mean.sample <- function(n) {
  sample <- rnorm(n, mu, sigma)
  mean.X <- mean(sample)
  return(mean.X)
}
n <- 1000
m <- 1000
mean.sample.vec <- replicate(m, mean.sample(n))
hist(mean.sample.vec, freq=0, breaks=40)
?hist
curve(dnorm(x, mu, sigma/sqrt(n)), col="red", add=TRUE)

n <- 10
var.sample <- function() {
  sample <- rnorm(n, mu, sigma) 
  var.X <- (n-1) * var(sample) / (sigma^2)
  return(var.X)
}

m <- 10000
var.sample.vec <- replicate(m, var.sample())
hist(var.sample.vec, freq=0, breaks=40, col="lightblue")
curve(dchisq(x, df=n-1), col="red", add=TRUE)
