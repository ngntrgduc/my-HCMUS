## Bai 1:
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
X1 <- c(9.9, 10.6, 9.4, 10.3, 9.3, 10, 9.6, 10.3, 10.2, 10.1)
X2 <- c(10.2, 10, 10.6, 10.2, 10.2, 10.7, 10.7, 10.4, 10.5, 10.3)
alpha <- 0.05

# # From scratch 
# n <- length(X1);
# m <- length(X2);
# mu1 <- mean(X1); mu1
# mu2 <- mean(X2); mu2
# # pooled sample variance
# Sp.square <- ((n-1)*sd(X1)^2 + (m-1)*sd(X2)^2) / (n+m-2); Sp.square
# T0 <- (mu1 - mu2) / sqrt(Sp.square * (1/n + 1/m)); T0
# p.value <- 2 * pt(abs(T0), lower.tail=FALSE, df=n+m-2); p.value

# 1.1
# Kiem dinh gia thiet 
##    H0: mu1 - mu2 = D0 = 0 ;
## vs H1: mu1 - mu2 != D0 ;

# 1.2
t.test(X1, X2, var.equal=TRUE, conf.level=1-alpha)
if (t.test(X1, X2, var.equal=TRUE, conf.level=1-alpha)$p.value < alpha) {
  print("Du lieu nay khong ho tro tuyen bo rang ty le an mon trung binh la giong nhau cho ca hai phuong phap")
} else {
  print("Du lieu nay co ho tro tuyen bo rang ty le an mon trung binh la giong nhau cho ca hai phuong phap")
}



## Bai 2:
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
alpha <- 0.05
n <- 500
p1.hat <- 385 / n; p1.hat
m <- 400
p2.hat <- 267 / m; p2.hat
# p.hat <- (385 + 267) / (n + m); p.hat
# z <- (p1.hat - p2.hat) / sqrt(p.hat*(1 - p.hat)*(1/n + 1/m))
# 2 * pnorm(abs(z), lower.tail=FALSE)

# 2.1
# Kiem dinh gia thiet 
##    H0: p1 - p2 = D0 = 0 ;
## vs H1: p1 - p2 != D0 ;

## Cach 1
HypoTest.prop <- function(p1.hat, n, p2.hat, m, D.0, alpha) {
  p.hat <- (p1.hat*n + p2.hat*m) / (n + m)
  z <- (p1.hat - p2.hat - D.0) / sqrt(p.hat*(1 - p.hat)*(1/n + 1/m))
  p.value <- 2 * pnorm(abs(z), lower.tail=FALSE)
  if (p.value < abs(alpha)) {
    print("Bac bo H0 voi muc y nghia alpha")
  } else {
    print("Chua du co so de bac bo H0 voi muc y nghia alpha")
  }
}

HypoTest.prop(p1.hat, n, p2.hat, m, 0, alpha)

## Cach 2
mydata <- matrix(c(385, 500-385, 267, 400-267), ncol=2, nrow=2, byrow=TRUE)
colnames(mydata) <- c('Agree', 'NotAgree')
rownames(mydata) <- c('A', 'B')
mytable <- as.table(mydata)
mytable
prop.test(mytable, correct=FALSE)

# 2.2
## Cach 1
p.value <- 2 * pnorm(abs(z), lower.tail=FALSE)
p.value

## Cach 2
prop.test(mytable, correct=FALSE)$p.value

# 2.3
##
## KL: vay du lieu cho thay su khac biet ve ty le
## ung ho tang toc do giua hai khu vuc nay.
##



## Bai 3:
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- c(15.8, 14.9, 9.0, 4.5, 15.0, 17.0, 8.6, 12.0, 4.1, 16.0)
y <- c(0.957, 0.886, 0.852, 0.911, 0.889, 0.919, 0.969, 1.118, 0.946, 1.094)
n <- length(x)
# 3.1
plot(x, y, xlab="Trong luong cua thuoc la (g)", ylab="Ham luong nicotine (mg)",
     col="dodgerblue", xlim=c(min(x) - 1, 19))

# 3.2 
# 3.2a
LinearRegress <- function(x, y) {
  beta1 <- (sum(x * y) - n*mean(x)*mean(y)) / (sum(x^2) - n*(mean(x))^2)
  beta0 <- mean(y) - beta1 * mean(x)
  return(c(beta0, beta1))
}

LinearRegress(x, y)

# 3.2b
model <- lm(y ~ x)
model$coefficients

# 3.2c
beta0 <- LinearRegress(x, y)[1]
beta1 <- LinearRegress(x, y)[2]
## Du doan
x1 <- 5
y1 <- beta0 + beta1*x1; y1
x2 <- 12
y2 <- beta0 + beta1*x2; y2
x3 <- 18
y3 <- beta0 + beta1*x3; y3

# 3.2d
abline(lm(y ~ x), col="red")
points(x1, y1, col="green", pch=15)
points(x2, y2, col="green", pch=15)
points(x3, y3, col="green", pch=15)
