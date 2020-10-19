temp=read.table(file = "C:/Users/MOSES/Desktop/chapman/CS501-01 Introductory Computation for Scientists/assignment 9/temperature.csv",header = TRUE)
x <- 5+8i
y <- -6+7i
u <- x+y
u
v = x*y
v
w=x/y
w
z =exp(x)
z
r = sqrt(y)
r
s=x*y^2
s
############################################
a = (3+6i)*(-7-9i)
a
b = (5+4i)/(5-4i)
b
c=3/2i
c
###############################################################

a =(exp(-2.1))^3 + 3.47 * (log10(14)) + (sqrt(287)^1/4)
a
b = ((3.7)^7) * log10(14) + (sqrt(287)^1/4)
b
c = cos(4.12 * (pi) /6)^2
c
d = cos((4.12 * (pi) /6)^2)
d
###############################################################

x=6
x
a=(x<10)
a
b=(x==10)
b
c=(x>=4)
c
d=(x!=7)
d
#############################################################

a=6>3+8
a
b=6+3>8
b
c=4>(2+9)
c
d=(4<7)+3
d
e=4<7+3
e
f=(4<7)*5
f
g=4<(7*5)
g
h=2/5>=5
h
############################################################

A = matrix(c(3,7,-4,12,-5,9,10,2,6,13,8,11,15,5,4,1), byrow = T,nrow = 4)
A
V=A[1:1,1:4]
V
W=A[5:8]
W
##########################################################

x = c(54,12,2,5,7,48,15,19,1,6,45,85,27,23,0,62,18,16,9,24)
sort(x)
mean(x)
sd(x)
trim = function(x)sort(x)[-c(1,2,length(x)-1,length(x))]
trim(x)
#########################################################
data <- read.table("blowfly.txt", header = T)
names(data)
str(data)
length(data)
unique(data$flies)
length(unique(data$flies))


##############################

int <- 0.06 
balance <- 10000  
year <- 0 
million = 1000000 

while ( balance < million ) 
 { 
  balance <- balance + balance*int
  balance <- balance + 10000
  year <- year + 1
}  
balance
year


####################

wf <- read.table("worldfloras.txt",header=T)
head(wf)
as.vector(wf$Country[grep("^.{3}c",as.character(wf$Country))])


################################################ 

area.cone.value <- function(r,v)
{
  h <- (3*v)/(pi*r^2)
  area.cone <- (pi*r)*sqrt(r^2 + h^2)
  return(area.cone)
} 

v <- 10
r <- seq(0.1,10,0.1)
A <- area.cone.value(r,v)
plot (r,A,type='l')

which(A==min(A))

r[19]
r[which(A==min(A))]
