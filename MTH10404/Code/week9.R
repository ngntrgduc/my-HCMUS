# 4.1.1 Kiểm định trung bình
# c) So sánh trung bình của 2 mẫu không độc lập (dũ liệu từng đôi)

data <- read.csv("DataExcel.csv")
attach(data)


t.test(T1, T2, paired=TRUE)
var(T1)
var(T2)
var.test(T1, T2)

# 4.2.3 Kiểm định chi-bình phương về tính độc lập
table(GT, KV)
chisq.test(table(GT, KV), correct=FALSE)


#Chương 6: Hồi quy tuyến tính
# data <- read.csv(file.choose(), header=T)
# attach(data)
plot(T1, T2, xlab="Diem toan HK1", ylab="Diem toan HK2", col="blue")

T2
T1

# lm(y - x)
model.T <- lm(T2~T1)
