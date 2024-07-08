?matrix
a <- matrix(data=NA, nrow=5, ncol=5, byrow=T)
a <- matrix(data=1:25, nrow=5, ncol=5)
a
v1 <- 1:5
v2 <- 5:1
?cbind
cbind(v1, v2)
rbind(v1, v2)
nrow(a)
ncol(a)

matrix(1, 2, 3)
seq(2, 9) # = 2:9
seq(4, 10, by=2)
seq(3, 30, length=5)

rep(2, 4) 
rep(c(1,2), 4)
rep(c(1,2), c(4,4))
rep(1:4, 2)
rep(1:4, rep(3, 4))

# Bài 7
x <- matrix(data=c(3,2,-1,1), nrow=2, ncol=2, byrow=T)
x
y <- matrix(data=c(1,4,0,0,1,-1), nrow=2, ncol=3, byrow=T)
y
2 * x
x * x
x %*% x # matrix multiplication
x %*% y
t(y) # transpose matrix
solve(x)
?solve

chiaHetA <- function(a, n) {
  return(sum(c(1:n) %% a == 0))
}
chiaHetA(4, 50)

# Bài tập week 2
# 1/ Hàm tính tổng
sum <- function(x) {
  res <- 0
  for (i in x) res <- res + i
  return(res)
}
x <- 1:5
sum(x)

# 5/ Phân vị
phanvi <- function(x, p) {
  sort(x)
  i <- p * length(x) / 100
  # if (round(i) == i) {
  #   return((x[i] + x[i+1]) / 2)
  # } else {
  #   return(round(i))
  # }
  return(if (round(i) == i) (x[i] + x[i+1]) / 2 else round(i))
}
x <- 100:1
x
?runif
x <- runif(100)
phanvi(x, 2)
hist(x)
boxplot(x)

#------------
data <- read.csv('DataExcel.csv')
attach(data)
T1
stem(T1)
TanSoT1 <- table(T1)
names(TanSoT1) [TanSoT1==max(TanSoT1)]
max(TanSoT1)

median(T1)
mean(T1)
range(T1) # ~= max(T1) - min(T1)
quantile(T1, probs=c(0.25, 0.5, 0.75))
quantile(T1, probs=seq(0, 1, 0.25))

var(T1)
sd(T1) # Độ lệch chuẩn ~= sqrt(var(T1))
sqrt(var(T1) / abs(mean(T1))) # Hệ số biến thiên
boxplot(T1)
boxplot(T1~KV, data=data, main="Diem toan HK1")

KVinGT <- table(KV, GT)
KVinGT
barplot(KVinGT)

plot(T1, T2)
cor(T1, T2) # Hệ số tương quan
cov(T1, T2) # Hiệp phương sai

plot(T1, V1)
cor(T1, V1)
cov(T1, V1)

plot(T1, N1)
cor(T1, N1)
cov(T1, N1)