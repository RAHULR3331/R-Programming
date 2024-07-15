#list

thislist<- list("Banana","Cherry","Orange","apple")
thislist
thislist[1]
length(thislist)
"apple"%in% thislist
append(thislist,"Mango")
thislist
thislist[2:4]
for (i in thislist)
{
  print(i)
}