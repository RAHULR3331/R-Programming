#1st
df<-data.frame(
  name=c("rahul","gopika","kiran","poornima"),
  age=c(22,21,21,23),
  mark=c(25,24,NA,NA)
)
df
#2st
is.na(df)
#3nd
mean<-mean(df$age)
mean

#install.packages("hmisc")
library("Hmisc")
df<-impute(df$mark,mean)
df
