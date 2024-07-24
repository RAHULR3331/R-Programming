#preprocessing

data<-data.frame(
  id=c(1,2,3,4,5),
  name=c("x","y","z","w","z"),
  age=c(28,41,32,40,21),
  score=c(40,50,60,20,10)
)

library("caTools")
sp=sample.split(data,0.8)
sp
#Training and test set
train=subset(data,sp==TRUE)
test=subset(data,sp==FALSE)
train
test

#scale

scale(data$age,center=TRUE,scale = TRUE)








