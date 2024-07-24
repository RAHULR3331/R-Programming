data<-data.frame(
  id=c(1,2,3,4,5),
  name=c("x","y","z","w","z"),
  age=c(28,41,32,40,21),
  score=c(40,50,60,20,10)
)

library("dplyr")
#select
new=data %>% select(name,age)

#combination of 2 functions
result=data %>%filter(age>30)%>%select(name)
result

#arrange
arrange=data%>%arrange(name)
arrange

#mutate
addmutate=mutate(data,ag_sc=age+score)
addmutate

#transmuete
add2=transmute(data,ag_sc=age+score)
add2

#summarize
summarize(data,mean=mean(age))

#slice
nwdata=data%>%slice(2,3)
nwdata

data1=slice(data,c(2:4))
data1

