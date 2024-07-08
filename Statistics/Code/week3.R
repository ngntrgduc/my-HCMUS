# "d" + tên phân phối: probability density function (pdf)
# "p" + tên phân phối: cummulative density function (cdf)
# "q" + tên phân phối: quatile : phân vị mức q
# "r" + tên phân phối: tạo random sample

# các phân phối: binom, chisq, exp, norm, pois, t, unif

?rnorm
punif(seq(0, 1, by=0.25))
runif(100)

x <- seq(-5, 5, by=0.1)
x
plot(x, dnorm(x, 0, 1))
plot(x, dnorm(x, 0, 1), col="blue", type="l", lwd=2, lty=2) # lty là line type, lwd là line width
?abline
abline(v=0, col="red", lty=2) # thêm dòng vô cho plot

z <- function() runif(1)
z()

?runif
# Mô phỏng đồng xu
throw.coin <- function() {
  if (runif(1) <= 1/2) 0 else 1
}
throw.coin()

# Tung đồng xu n lần
?replicate
Sample.coin <- function(n) replicate(n, throw.coin())
Sample.coin(10)
x <- Sample.coin(10000)
table(x)

# Tần suất
table(x) / length(x)

# Mô phỏng xúc xắc
throw.dice <- function() {
  x <- runif(1)
  if (x <= 1/6) 1 else if (x <= 2/6) 2 else
  if (x <= 3/6) 3 else if (x <= 4/6) 4 else
  if (x <= 5/6) 5 else 6
}
throw.dice()

# Các phân phối xác suất thông dụng
## Nếu X ~ N(0, 1) thì X^2 ~ Chi^2(1)
n <- 10000
x <- rnorm(n)
y <- x^2
hist(y, freq=0, breaks=40)
curve(dchisq(x, df=1), col="red", add = TRUE)
?curve
?hist

## Nếu X ~ Chi^2(m), Y ~ Chi^2(n) thì X + Y ~ Chi^2(m + n)
m1 <- 10
m2 <- 20
sample.x <- rchisq(n, m1)
sample.y <- rchisq(n, m2)
hist(sample.x + sample.y, freq=0, breaks=40)
curve(dchisq(x, df=m1+m2), col="red", add=TRUE)

# Khoảng ước lượng các biến ngẫu nhiên liên tục
# Xét khoảng dạng [a, b]
# P(X <= a) = P(X >= b) = (1 - p) / 2, 0 < p < 1
# P(X <= b) = 1 - P(X >= b) = (1 + p) / 2
mu <- 10
sigma <- 4
p <- 0.9
a <- qnorm((1-p)/2, mean=mu, sd=sigma)
b <- qnorm((1+p)/2, mean=mu, sd=sigma)
interval.p <- c(a, b)
interval.p
