## Bai 1:
## - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - -- - - - - - - - -
#1.1
myCI.mean <- function(sample.mean, sample.var, n, alpha) {
    CI <- c(sample.mean - qt(1 - alpha/2, df=n-1) * sqrt(sample.var/n),
            sample.mean + qt(1 - alpha/2, df=n-1) * sqrt(sample.var/n))
  return(CI)
}

?t.test

#1.2
X <- c(205, 215, 225, 235, 245)
soTrai <- c(12, 17, 20, 18, 15)
X * soTrai
n <- sum(soTrai)
n
mean <- sum(X * soTrai) / n
mean
variance <- sum((X - mean)^2 * soTrai) / (n - 1)
variance

#1.2a
# 1-alpha = 0.95
myCI.mean(mean, variance, n, 0.05)

# 1-alpha = 0.99
myCI.mean(mean, variance, n, 0.01)

#1.2b
alpha = 1 - 0.99
1-alpha/2
z <- qnorm(1-alpha/2, 0, 1)
sigma <- variance
epsilon <- 2
n <- ceiling((z*sigma / epsilon)^2)
n
# => quan sat it nhat 51268 qua trai cay

## Bai 2:
## - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - -- - - - - - - - -
X <- c(12, 13, 15, 16, 17, 18, 19)
soNgay <- c(3, 2, 7, 7, 3, 2, 1)
n <- sum(soNgay)
n
#2.a
mean <- sum((X * soNgay)) / n
mean

#2.b
# H_0: mu_0 = 15
# H_1: mu_0 < 15
?t.test
alpha <- 0.05
t.test(X, conf.level=1-alpha/2, alternative="less")
# => vi 15.71429 < 16.219 nen ta chua du co so de bac bo H_0

#2.c
## Cong thuc ly thuyet
z <- qnorm(1-alpha/2, 0, 1)
z

## Ham kiem dinh trong R
t.test(X, conf.level=1-alpha/2)$p.value

