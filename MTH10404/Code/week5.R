# Thực hành lý thuyết ước lượng
# Lấy mẫu ngẫu nhiên từ tổng thể N(0, 1)
theta <- 8
SampleMean <- function(n) mean(rnorm(n, mean=theta, sd=1))
SampleMean(100)
SampleMean(1000)

n.vec <- 10^seq(1, 5)
Xn.mean <- rep(1, length(n.vec))
for (k in 1:length(n.vec)) {
  Xn.mean[k] <- mean(replicate(100, SampleMean(n.vec[k])))
}
Xn.mean

plot(n.vec, Xn.mean, type='l', col='blue', lwd=2, ylim=c(theta-0.0025, theta+0.0025))
lines(n.vec, rep(theta, length(n.vec)), col='red', lty=4, lwd=2)
legend("topright", c("Xn", "theta = mu"), col=c("blue", "red"), lty=c(1, 4))

# Điều này minh họa tính hội tụ của trung bình mẫu về trung bình tổng thể
MeanSample.n <- function(m) replicate(m, SampleMean(n))
n <- 100
mean(MeanSample.n(1000))
mean(MeanSample.n(10000))

# Điều này minh họa tính không chệch của trung bình
#--------------------------------------------------------------------------
# Ước lượng cho phương sai 
theta <- 1
SampleVar <- function(n) {
  a <- rnorm(n, mean=8, sd=theta)
  return(mean(a^2) - mean(a)^2)
}

n.vec <- 10^seq(1, 5)
Xn.var <- rep(1, length(n.vec))
for (k in 1:length(n.vec)) {
  Xn.var[k] <- mean(replicate(100, SampleVar(n.vec[k])))
}

plot(n.vec, Xn.var, type='l', col='blue', lwd=2, 
     main="Uoc luong cho phuong sai X ~ N(8, sigma^2) voi theta = sigma^2", 
     ylim=c(theta-0.005, theta+0.005))
lines(n.vec, rep(theta, length(n.vec)), col='red', lty=4, lwd=2)
legend("topright", c("Sample variance: sigma^2", "theta = sigma^2"),
       col=c("blue", "red"), lty=c(1, 4))

#----------------------------------------------------------------
VarSample.n <- function(m) replicate(m, SampleVar(n))
SampleVar.unbiased <- function(n) {
  var(rnorm(n, mean=8, sd=theta))
}
n <- 100
m.vec <- 10^seq(1, 5)
Xn.var <- rep(1, length(m.vec))
Xn.var.unbiased <- rep(1, length(m.vec))
for (k in 1:length(m.vec)) {
  Xn.var[k] <- mean(replicate(m.vec[k], SampleVar(n)))
  Xn.var.unbiased[k] <- mean(replicate(m.vec[k], SampleVar.unbiased(n)))
}

plot(m.vec, Xn.var, type="l", col="blue", pch=1)
lines(m.vec, Xn.var.unbiased, col="green", pch=2)
lines(m.vec, rep(theta, length(m.vec)), col="red")

# Vẽ đồ thị của hàm phân phối tích lũy thực nghiệm
X <- function(n) rnorm(1)
vec.Xn <- function(n) replicate(n, X())
Fn.hat <- function(n) ecdf(vec.Xn(n))
?ecdf

# par(mfrow = c(2,2))
