# Create a vector with missing values
vec <- c(1, 2, NA, 4, NA, 5)

# Check for missing values
is.na(vec)

# Install Hmisc package
install.packages("Hmisc")

# Load Hmisc package
library(Hmisc)

# Impute missing values with mean
imputed_data <- impute(vec, fun=mean)
imputed_data

# create a adataframe 
data <- data.frame(marks1 = c(NA, 22, NA, 49, 75), 
                   marks2 = c(81, 14, NA, 61, 12), 
                   marks3 = c(78.5, 19.325, NA, 28, 48.002)) 
data

# impute manually with mean
data$marks1[is.na(data$marks1)] <- mean(data$marks1, na.rm = T)   
data

library(Hmisc) 
# create a dataframe 
data <- data.frame(marks1 = c(NA, 22, NA, 49, 75), 
                   marks2 = c(81, 14, NA, 61, 12), 
                   marks3 = c(78.5, 19.325, NA, 28, 48.002)) 

# fill missing values of marks2 with median 
imputed<-impute(data$marks2, fun=median)
imputed

#Using the function impute( ) inside Hmisc library let’s impute the column marks2 of data with a constant value.
# create a adataframe 
data <- data.frame(marks1 = c(NA, 22, NA, 49, 75), 
                   marks2 = c(81, 14, NA, 61, 12), 
                   marks3 = c(78.5, 19.325, NA, 28,  
                              48.002)) 

# impute with a specific number 
# replace NA with 2000 
impute(data$marks3, 2000) 

#Impute the entire dataset
#create a adataframe 
data <- data.frame(marks1 = c(NA, 22, NA, 49, 75), 
                   marks2 = c(81, 14, NA, 61, 12), 
                   marks3 = c(78.5, 19.325, NA, 28,  
                              48.002)) 

# getting median of each column using apply()  
all_column_median <- apply(data, 2, median, na.rm=TRUE) #1= apply across rows, 2= apply across columns

# imputing median value with NA  
for(i in colnames(data)) 
  data[,i][is.na(data[,i])] <- all_column_median[i] 

data

#na.rm() removes NA values
# create a vector 
data = c(1,2,3,NA,45,34,NA,NA,23) 

# display 
print(data) 

# calculate mean including NA values 
print(mean(data,na.rm=FALSE)) 

# calculate sum including NA values 
print(sum (data,na.rm=FALSE)) 

# get minimum including NA values 
print(min(data,na.rm=FALSE)) 

# get  maximum  including NA values 
print(max(data,na.rm=FALSE)) 

# calculate standard deviation including NA values 
print(sd (data,na.rm=FALSE))

# calculate mean excluding NA values 
print(mean(data,na.rm=TRUE)) 

# calculate sum excluding NA values 
print(sum (data,na.rm=TRUE)) 

# get minimum excluding  NA values 
print(min(data,na.rm=TRUE)) 

# get  maximum  excluding  NA values 
print(max(data,na.rm=TRUE)) 

# calculate standard deviation excluding NA values 
print(sd (data,na.rm=TRUE))

#na.rm() for dataframes
# create a dataframe with 3 columns 
data = data.frame(column1 = c(1,2,NA,34), 
                  column2 = c(NA,34,56,NA), 
                  column3 = c(NA,NA,32,56)) 

# display 
print(data) 

# calculate mean including  NA values 
apply(data, 2, mean , na.rm = FALSE)

# calculate mean excluding  NA values 
apply(data, 2, mean , na.rm = TRUE) 

#Replace missing values in a vector with sum of its elements
#creates a vector having numerical values
x<-c(123,54,23,876,NA,134,2346,NA)
#calculates the sum and removes the NA values from the summation
s<-sum(x,na.rm = TRUE) #finding sum excluding NA values
s
x<-impute(x,s) #replace missing values with sum
x

#dataset = airquality
head(airquality)
rowSums(airquality, na.rm = TRUE) #find sum of dataset rowwise
colSums(airquality, na.rm = TRUE) #find sum of dataset columnwise
#replace missing values with its column sum
#replace missing values in Ozone column with its sum
airquality$Ozone
v<-sum(airquality$Ozone,na.rm=TRUE)
v
impute(airquality$Ozone,v)

