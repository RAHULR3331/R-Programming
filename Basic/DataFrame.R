#DataFrame

Data_Frame <- data.frame(
  Training= c("Strength","Stamina","Other"),
  pulse=c(100,150,200),
  Duration=c(60,30,45)
)
Data_Frame
summary(Data_Frame)
#Access the coloum
Data_Frame[1]
Data_Frame[["Training"]]
Data_Frame$Training


#RowBind
NewRowDf<-rbind(Data_Frame,c("Strength",110,100))
NewRowDf
#ColBind
NewColDf<-cbind(Data_Frame,Steps=c(1000,2000,1500))
NewColDf
dim(Data_Frame)
class(Data_Frame.Training)

newdataframe<-Data_Frame[c(-2)]
newdataframe









