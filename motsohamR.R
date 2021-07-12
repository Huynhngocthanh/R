# Thong so cua mot ham
args(lm)
# Mo phong 10 so lieu trong object x
x = rnorm(10)
# Mot so ki hieu hay dung trong R
x == 5 #x bang 5
x != 5 #x khong bang 5
y < x #y nho hon x
x > y #x lon hon y
z <= 7 #z nho hon hoac bang 7
p >= 1 #p lon hon hoac bang 1
is.na(x) #Co phai x la bien so khong (missing value)
A & B #A va B (AND)
A | B #A hoac B(OR)
#! Khong (NOT)
# Lenh nay se mo phong 10 gia tri normal
x = rnorm(10)
#3.1 Cach dat ten trong R
myobject = rnorm(10) #Dung
my object = rnorm(10) #Sai
my.object = rnorm(10) #Dung
# R phan biet chua Hoa va chu thuong
My.object.u = 15
my.object.L = 5
My.object.u + my.object.L # =20
# Khong nen dat ten mot bien so hay variable bang ki hieu "_" (underscore)
my_object # Sai
my-object # Sai
# Khong nen dat ten mot object giong nhu mot bien so trong mot du lieu
#3.2 Ho tro trong R
#Ngoai args() ta con co the su dung
help(lm)
#hay
?lm
#4. Cach nhap du lieu vao R
#4.1 Nhap so lieu truc tiep: c()
age = c(50, 62, 60, 40, 48, 47, 57, 70, 48, 67)
insulin = c(16.5,10.8,32.3,19.3,14.2,11.3,15.5,15.8,16.2,11.2)
# Tao dataframe
tuan = data.frame(age, insulin)
tuan
#save file theo dang R trong thu muc da setwd()
save(tuan, file = "tuan.rda")
#4.2 Nhap so lieu truc tiep: edit(data.frame())
ins = edit(data.frame())
ins
#4.3 Nhap so lieu ti mot text file: read.table
chol = read.table("chol.txt", header = TRUE)
chol
#Xem ten cot
names(chol)
#Save file
save(chol, file = "chol.rda")
#4.4 Nhap so lieu tu Excel: read.csv
gh = read.csv("excel.csv", header = TRUE)
#4.5 Nhap so lieu tu mot SPSS: read.spss
#Truy cap foreign bang lenh library
library(foreign)
testo = read.spss("testo.sav", to.data.frame = TRUE)
#4.6 Thong tin ve du lieu
attach(chol)
#Kiem tra chol co phai la mot data.frame khong bang lenh is.data.frame(arg)
is.data.frame(chol) # TRUE
#Co bao nhieu dong va cot
dim(chol) # 50 8
#Xem ten cot
names(chol)
#Trong bien sex co bao nhieu nam va nu
table(sex) # nam 1 Nam 21 Nu 28
#4.7 Tao day so bang ham seq, rep va gl
# Ap dung seq
#Tao mot vector so tu 1 den 12
x = (1:12)
x
#Su dung seq
seq(12)
#Tao mot vector so tu 12 den 5
x = (12:5)
x
#Su dung seq
seq(12:5)
#Cong thuc chung cua ham seq la seq(from, to, by=)
#hay seq(from, to, length.out= )
#Tao ra mot vector tu 4 den 6 voi khoang cach bang 0.25
seq(4, 6, 0.25)
#Tao ra mot vector 10 so voi so nho nhat la 2 va lon nhat la 15
seq(length = 10, from=2, to=15)
# Ap dung rep
# Cong thuc ham rep la rep(x, times, ...), x la mot bien so va times la so lan lap lai
#Tao ra so 10, 3 lan:
rep(10, 3)
#Tao ra so 1 den 4, 3 lan:
rep((1:4), 3)
#Tao ra so 1.2, 2.7, 4.5, 5 lan:
rep(c(1.2, 2.7, 4.5), 5)
# Ap dung gl
# Tao bien thu bac
# Cong thuc chung gl(n, k, length = n*k, labels = 1:n, ordered = FALSE)
#Tao ra bien gom bac 1 va 2, moi bac lap lai 8 lan
gl(2, 8)
#Mot bien bac 1,2,3, moi bac lap lai 8 lan
gl(3, 8)
#Tao ra bien gom bac 1 va 2, moi bien lap lai 10 lan (do do length = 20)
gl(2,10, length = 20)
#hay
gl(2,2,length = 20)
#Cho them ki hieu
gl(2,5, labels = c("C","T"))
#Tao ra mot bien gom bac 1,2,3,4. Moi bac lap lai 2 lan
rep(1:4, c(2,2,2,2))
#Tuong duong voi
rep(1:4, each = 2)
#Voi ngay gio thang
x = .leap.seconds[1:3]
rep(x, 2)
rep(as.POSIXct(x), rep(2,3))
#5 Bien tap so lieu
#5.1 Tach roi du lieu: subset
chol = read.table("chol.txt", header = TRUE)
attach(chol)
# Cu phap: subset(data, cond) trong do data la data.frame ma chung ta muon tach roi, cond la dieu kien
#Tach ra 2 bien nam, nu
nam = subset(chol, sex =="Nam")
nu = subset(chol, sex =="Nu")
#Tach ra nguoi co tuoi tu 60 tro len
old = subset(chol, age>=60)
dim(old)
# Mot data.frame voi nhung benh nhan tren 60 tuoi va nam gioi
n60 = subset(chol, age>=60 & sex=="Nam")
dim(n60)
#5.2 Chiet so lieu tu mot data.frame
#Chon cot so 1,3,7
data2 = chol[, c(1,3,7)]
#Chon 10 dong dau tien cua cot so 1,3,7
data3 = chol[1:10, c(1,3,7))
print(data3)
#5.4 Bien doi so lieu (data coding)
bmd <- c(-0.92,0.21,0.17,-3.21,-1.80,-2.60,-2.00,1.71,2.12,-2.11)
#Tam thoi cho bien so diagnosis bang bmd
diagnosis = bmd
#Bien doi bmd thanh diagnosis
diagnosis[bmd <= -2.5] < -1
diagnosis[bmd > -2.5 & bmd <= 1.0] <-2
diagnosis[bmd > -1.0] <-3
#Tao thanh mot data.frame
data = data.frame(bmd, diagnosis)
#Liet ke de kiem tra xem lech co hieu qua khong
data
#5.5 Bien doi so lieu bang cach dung replace
diagnosis = bmd
diagnosis = replace(diagnosis,  bmd <= -2.5, 1)
diagnosis = replace(diagnosis, bmd > -2.5 & bmd <= 1.0, 2)
diagnosis = replace(diagnosis, bmd > -1.0, 3)
#5.6 Bien doi thanh yeu to (factor)
diag = factor(diagnosis)
diag
mean(diag) #NA
mean(diagnosis) #2.3
#5.7 Phan nhom so lieu bang cut2(Hmisc)
#Nhap thu vien Hmisc
library(Hmisc)
bmd <- c(-0.92,0.21,0.17,-3.21,-1.80,-2.60,-2.00,1.71,2.12,-2.11)
#Chia bien so bmd thanh 2 nhom va de trong doi tuong group
group = cut2(bmd, g=2)
table(group)
#Chia thanh 3 nhom
group = cut2(bmd, g=3)
group
#6. Su dung R cho tinh toan don gian
#6.1 Tinh toan don gian
#Cong 2 so voi nhau
15+2997
#Nhan va chia
-27*12/21
#Can bac 2
sqrt(10)
#Logarit
log(10)
#So mu e
exp(2.7689)
log10(2+3*pi)
#Vector
x <- c(2,3,1,5,4,6,7,6,8)
x
sum(x)
x*2
#Tinh tong binh phuong
x = c(1,2,3,4,5)
sum(x^2)
#Tinh sai so binh phuong
x <- c(1,2,3,4,5)
sum((x-mean(x))^2)/length(x)
#Phuong sai
x <- c(1,2,3,4,5)
var(x)
#Do lech chuan
sd(x)
#6.2 Su dung R cho cac phep tinh ma tran
y <- c(1,2,3,4,5,6,7,8,9)
A <- matrix(y, nrow=3)
A
#Nhung neu dung lenh
A <- matrix(y, nrow=3, byrow=TRUE)
A
#Ma tran chuyen vi dung t()
y <- c(1,2,3,4,5,6,7,8,9)
A <- matrix(y, nrow=3)
A
B <- t(A)
B
#Ma tran duong cheo
#Tao mot ma tran 3x3 voi tat ca phan tu la 0
A <- matrix(0, 3, 3)
A
#Cho cac pha tu duong cheo bang 1
diag(A) <- 1
diag(A)
A
#6.2.1 Chiet phan tu tu ma tran
y <- c(1,2,3,4,5,6,7,8,9)
A <- matrix(y, nrow=3)
#Cot 1 cua ma tran A
A[,1]
#Cot 3 cua ma tran A
A[,3]
#Dong 1 cua ma tran A
A[1,]
#Dong 2 cot 3 cua ma tran A
A[2,3]
#Tat ca cac dong cua ma tran A ngoai tru dong 2
A[-2,]
#Tat ca cac cot cua ma tran A ngoai tru cot 1
A[,-1]
#Xem phan tu nao lon hon 3
A>3
#6.2.2 Tinh toan voi ma tran
#Cong va Tru hai ma tran
A <- matrix(1:12, 3, 4)
A
B <- matrix(-1:-12, 3, 4)
B
#A + B
c = A+B
C
#A - B
D = A -B
D
#Nhan hai ma tran
y <- c(1,2,3,4,5,6,7,8,9)
A <- matrix(y, nrow=3)
B <- t(A)
AB <- A%*%B
AB
BA = B%*%A
BA
#Nghich dao ma tran va giai he phuong trinh
# 3x1 + 4x2 = 4
# x1 +6x2 = 2
A <- matrix(c(3,1,4,6), nrow=2)
Y <- matrix(c(4,2), nrow=2)
X <- solve(A)%*%Y
X
eigen(A)
$values
$vectors
#Tinh dinh thuc
E <- matrix((1:9), 3, 3)
E
det(E)
F = matrix((1:9)^2,3,3)
F
det(F)
#7. Su dung R cho tinh xac suat
#7.1 Phep hoan vi(permutation)
#Tính giai th???a
#Tìm 3!
prod(3:1)
#Tim 10!
prod(10:1)
#Tim 10.9.8.7.6.5.4
prod(10:4)
#7.2 To hop (combination)
#Tim C(5,2)
choose(5, 2)
#Tim xac suat cap A va B trong so 5 nguoi duoc dac cu vao hai chuc vu
1/choose(5, 2)
#7.3 Bien so ngau nhien va ham phan phoi
#7.3.1 Ham phan phoi nhi phan
dbinom(2, 3, 0.60)
1 - pbinom(7, 10, 0.7)
#mo phong nhi phan
b = rbinom(1000, 20, 0.2)
table(b)
hist(b, main = 'Number of hypertensive patients')
#7.3.2 Ham phan phoi Poisson
dpois(2, 1)
dpois(1, 1)
dpois(0, 1)
ppois(2, 1)
1 - ppois(2, 1)
#7.3.3 Ham phan phoi chuan
height = seq(130, 200, 1)
plot(height, dnorm(height, 156, 4.6),
     ylab='f(height)',
     xlab='Height',
     main = 'Probability distribution of height in VN women')
dnorm(160, mean = 156, sd=4.6)
pnorm(150, 156, 4.6)
1-pnorm(164, 156, 4.6)
1-pnorm(120, mean=100, sd=13)
#7.3.4 Ham phan phoi chuan hoa
height = seq(-4,4,0.1)
height
plot(height)
pnorm(-1.96, mean=0, sd=1)
pnorm(1.96, mean=0, sd=1)
pnorm(1.96) - pnorm(-1.96)
1-pnorm(3.04)
qnorm(0.95, mean=0, sd=1)
qnorm(0.975, mean=0, sd=1)
