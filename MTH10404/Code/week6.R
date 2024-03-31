# Ước lượng hợp lí cực đại

objective <- function(theta, X) {
  obj <- -sum(log(dnorm(X, theta, 4)))
  return(obj)
}

theta <- 8
theta.MLE <- function(X, start.val) {
  nlminb(start.val, objective, X=X)$par
}
?nlminb

n <- 10000 # n -> \infitiny, theta^ -> theta
sample <- rnorm(n, theta, 4)
theta.MLE(sample, 3)

