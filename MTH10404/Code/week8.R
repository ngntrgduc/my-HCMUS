# Chương 4: Thực hành lý thuyết kiểm định
# 4.1 Kiểm định tham số
# 4.11 a) Kiểm định trung bình: so sánh trung bình với một số (một mẫu)
# 4.13 a) Kiểm định tỷ lệ: so sánh tỷ lệ với một số (một mẫu)
data <- read.csv('DataExcel.csv')
attach(data)
GT
table(GT)
?prop.test
prop.test(48, 100, 0.5)
n <- length(GT)
nb.F <- sum(GT=="F")
p.hat <- nb.F / n
p.hat

# b) so sánh trung bình (2 mẫu)
## So sánh trung bình điểm toán học kì 1, T1,
## giữa 2 nhóm khu vực, chẳng hạn khu vực 1 và khu vực 2
?data.frame
dataKV1 <- subset(data, KV=="1")
dataKV2 <- subset(data, KV=="2")
dataKV1$T1
dataKV2$T1
?var.test
var.test(dataKV1$T1, dataKV2$T2)

# so sánh 2 trung bình
t.test(dataKV1$T1, var.equal=TRUE, dataKV2$T2)

table(GT, KV) # bang phan bo tan so cheo
mytable <- as.matrix(table(GT, KV)[, c(2,1)])
mytable
p1.hat <- 13 / (13 + 24)
p1.hat <- 6 / (6 + 36)

alpha <- 0.05
p0 <- 0.5
U <- (p.hat - p0) / sqrt(p0*(1-p0)/n)


# 4.13 b) Kiểm định tỷ lệ: so sánh tỷ lệ (2 mẫu độc lập)
table(GT, KV)
mytable <- as.matrix(table(GT, KV))
mytable <- as.matrix(table(GT, KV))[, c(2,1)]
mytable
prop.test(mytable, correct=FALSE)

## Kiểm định tỉ lệ học sinh nữa trong KV1 và KV2
mytable2 <- as.matrix(table(KV, GT))[c(2,1), ]
prop.test(mytable2, correct=FALSE)

# 4.2 Kiểm dịnh Chi-bình phương
