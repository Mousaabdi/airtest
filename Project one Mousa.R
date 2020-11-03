#down load the library
library(ggplot2)
  
#read the data 
Data <- read.csv("nc-est2015-agesex-res.csv", header=TRUE)
Data
dim(Data)

#change the column name
colnames(Data) [colnames(Data)== "CENSUS2010POP"] <-"2010"
colnames(Data) [colnames(Data)== "POPESTIMATE2015"] <-"2015"

#remove those columns not need it
table1_selected<- Data [ , c("SEX","AGE","2010","2015")]
table1_selected

#separate the men and woman chart
women<- Data[Data$SEX==2,]
men<-Data[Data$SEX==1,]

#find the Growth rate
men$growth_rate <- men$"2010"/men$"2015"**(1/4)-1
women$growth_rate <- women$"2010"/women$"2015"**(1/4)-1

#change the columns name 
colnames(men) [colnames(men)== "2015"] <-"MEN"
colnames(women) [colnames(women)== "2015"] <-"WOMEN"

#make new chart with 3 columns
M1 <- men[ , c("AGE","MEN","growth_rate")]
W1 <- women[ , c("AGE","WOMEN","growth_rate")]

#merge the M1 and W2 columns
total <- merge(M1,W1,by = "AGE")
df = subset(total, select = -c(growth_rate.y))
df

#plot the chart
ggplot(df, aes(x=AGE, y = growth_rate.x)) + 
  geom_line(aes(y = WOMEN), color = "darkred") + 
  geom_line(aes(y = MEN), color="steelblue") 
geom_line()
######################################################

