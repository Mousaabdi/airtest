
Data <- read.csv("nc-est2015-agesex-res.csv", header=TRUE)
Data
dim(Data)
colnames(Data) [colnames(Data)== "CENSUS2010POP"] <-"2010"
colnames(Data) [colnames(Data)== "POPESTIMATE2015"] <-"2015"
table1_selected<- Data [ , c("SEX","AGE","2010","2015")]
table1_selected
install.packages("growthrates")
library(dplyr)
#j <- table1_selected %>% rowwise() %>% mutate(Avg=mean(c(3,4), na.rm=T)) 
#j
men<- Data[Data$SEX==0,]
women<-Data[Data$SEX==1,]
men$growth_rate <- men$"2010"/men$"2015"**(1/4)-1
women$growth_rate <- women$"2010"/women$"2015"**(1/4)-1
colnames(men) [colnames(men)== "2015"] <-"MEN"
colnames(women) [colnames(women)== "2015"] <-"WOMEN"

men_selected <- men[ , c("AGE","MEN","growth_rate")]
women_selected <- women[ , c("AGE","WOMEN","growth_rate")]

#x <- cbind.data.frame(men_selected,c("WOMEN"))
