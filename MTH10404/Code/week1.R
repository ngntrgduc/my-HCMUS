#---------- Basic ----------
?c
x <- c("H", "I")
x <- c(1, 2, 3, 4, 5, 6) # = x <- 1:6
x
x[2:4] # 2 3 4
x[c(1, 3, 5)] # 1 3 5
x[c(T, F, T)]
x[x > 3]
x[2] ^ x[3]
x[2] %% x[3]
x[2] / x[3]

y <- c(0, 2, 4, 6, 10, 4)
y
x + y
x * y
exp(x)
length(x)
sort(y)
sort(y, decreasing=TRUE)
order(y)
y[order(y)] # = sort(y)
rev(y) # reverse
sum(y)

#---------- Dataframe ----------
Ten = c("hi", "hello")	
Tuoi = c(19, 29)
GioiTinh = c("Male", "Female")
ChieuCao = c(1.79, 1.56)

DuLieu <- data.frame(Ten, Tuoi, GioiTinh, ChieuCao) 
DuLieu
DuLieu$Ten # = Ten
DuLieu[2]
DuLieu[,2]
DuLieu[2,]

#---------- File ----------
getwd()
# setwd("D:/Toán/Lý thuyết thống kê/Lab")
data <- read.csv("DataExcel.csv")
data
str(data) 
?str
attach(data)
z <- data$T1
z <- T1
T1
z
dim(data) # 100 56
# save(data, file="data.rda")
# dr = load("data.rda")

#---------- Plot ----------
TanSoKV <- table(KV)
pie(TanSoKV)

DanhGiaT1 <- T1
DanhGiaT1
DanhGiaT1[T1 < 5] <- "Kem"
DanhGiaT1[T1 >= 5 & T1 < 7] <- "Trung binh"
DanhGiaT1[T1 >= 7 & T1 < 8] <- "Kha"
DanhGiaT1[T1 >= 8] <- "Gioi"
DanhGiaT1
TanSoT1 <- table(DanhGiaT1)
TanSoT1
pie(TanSoT1)

?barplot
barplot(TanSoT1)
