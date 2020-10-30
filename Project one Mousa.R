
Data <- read.csv("nc-est2015-agesex-res.csv", header=TRUE)
Data
dim(Data)

colnames(Data) [colnames(Data)== "CENSUS2010POP"] <-"2010"
colnames(Data) [colnames(Data)== "POPESTIMATE2015"] <-"2015"

table1_selected<- Data [ , c("SEX","AGE","2010","2015")]
table1_selected

install.packages("growthrates")
library(dplyr)

j <- table1_selected %>% rowwise() %>% mutate(Avg=mean(c([3],[4]), na.rm=T)) 
j
#####################################
Growth_rate <-(Diff_year <- "2010" - lag(2010,1 )
       Diff_growth <- "2015" - lag(2015, )
       Rate_percent <- ("2010" / "2015")/route ** 100) 



