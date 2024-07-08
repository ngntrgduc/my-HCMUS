# Ước lượng khoảng
## Khoảng tin cậy cho trung bình

data <- read.csv("DataExcel.csv")
attach(data)

### Khoảng tin cậy 90% cho điểm toán T1 trung bình:
X.mean <- mean(T1)
X.sd <- sqrt(var(T1))
alpha = 1 - 0.9 # 90%
n = length(T1)
CI.phanvi <- qt(1 - alpha/2, df=n-1)
CI.low <- X.mean - CI.phanvi * X.sd/sqrt(n)
CI.up <- X.mean + CI.phanvi * X.sd/sqrt(n)
CI.X <- c(CI.low, CI.up)
CI.X

### Hoặc sử dụng hàm t.test
?t.test
t.test(T1, conf.level=0.9)$conf.int

### Dùng mô phỏng để kiểm tra ý nghĩa của độ tin cậy
theta <- 8
SampleCI <- function(n, alpha) {
  x <- rnorm(n, theta, 4)
  CI <- c(mean(x) - qt(1 - alpha/2, df=n-1) * sqrt(var(x)/n),
          mean(x) + qt(1 - alpha/2, df=n-1) * sqrt(var(x)/n))
  return(CI)
}

n <- 100
test.CI <- function(m, alpha) {
  count <- 0
  for (i in 1:m) {
    CI <- SampleCI(n, alpha) # (CI.low, CI.up)
    if (CI[1] <= theta && theta <= CI[2]) count <- count + 1
  }
  return(count/m)
}

alpha = 1 - 0.9 # 90%
test.CI(100, alpha)
test.CI(1000, alpha)
test.CI(10000, alpha)
test.CI(100000, alpha)

## Khoảng tin cậy cho tỷ lệ 
### Khoảng tin cậy 90% cho tỷ lệ nữ
# GT <- data$GT
GT
table(GT)
number.female <- sum(GT=="F")
number.female
p.hat <- number.female/n
p.hat

n = length(GT)
CI.phanvi <- qnorm(1 - alpha/2, 0, 1)
CI.low <- p.hat - CI.phanvi * sqrt((p.hat * (1-p.hat)) / n)
CI.up <- p.hat + CI.phanvi * sqrt((p.hat * (1-p.hat)) / n)
CI.X <- c(CI.low, CI.up)
CI.X

### Dùng mô phỏng để kiểm tra ý nghĩa của độ tin cậy
p.true <- 0.4
SampleCI.proportion <- function(n, alpha) {
  x <- rbinom(n, 1, p.true)
  p.hat <- mean(x)
  CI.phanvi <- qnorm(1 - alpha/2, 0, 1)
  CI.low <- p.hat - CI.phanvi * sqrt((p.hat * (1-p.hat)) / n)
  CI.up <- p.hat + CI.phanvi * sqrt((p.hat * (1-p.hat)) / n)
  CI <- c(CI.low, CI.up)
  return(CI)
}

n <- 100
test.CI.proportion <- function(m, alpha) {
  count <- 0
  for (i in 1:m) {
    CI <- SampleCI.proportion(n, alpha)
    if (CI[1] <= p.true && p.true <= CI[2]) count <- count + 1
  }
  return(count/m)
}

alpha = 1 - 0.9 # 90%
test.CI.proportion(100, alpha)
test.CI.proportion(1000, alpha)
test.CI.proportion(10000, alpha)
test.CI.proportion(100000, alpha)

# ------------------------------------------------------------------------------
# Chương 4
# 4.1 Kiểm định tham số
# 4.1.1 Kiểm định trung bình
# a) So sánh trung bình với 1 số (Kiểm định 1 mẫu)
mean(T1)
?t.test
# "two.sided", "less", "greater"
## kiểm định 1 phía bên phải
t.test(T1, mu=5.5, alternative="greater") # H0: mu = 5.5 vs H1: mu > 5.5
## Kiểm định 2 phía
t.test(T1, mu=6.5, alternative="two.sided")

mu0 <- 5.5
t0 <- (mean(T1) - mu0) / sqrt(var(T1)/n)
n <- length(T1)
alpha <- 0.95
t.phanvi <- qt(1 - alpha, df=n-1)
t0
t.phanvi

### So sánh 2 trung bình (hai mẫu)
