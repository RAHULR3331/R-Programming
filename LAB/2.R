# Load the mtcars dataset
data(mtcars)


# Create a histogram with 5 bins
hist(mtcars$mpg,
     breaks = 5,
     main = "Histogram of Miles Per Gallon (mpg) with 5 Bins",
     xlab = "Miles Per Gallon (mpg)",
     col = "lightgreen",
     border = "black")
# Create a histogram with 10 bins
hist(mtcars$mpg,
     breaks = 10,
     main = "Histogram of Miles Per Gallon (mpg) with 10 Bins",
     xlab = "Miles Per Gallon (mpg)",
     col = "lightcoral",
     border = "black")
# Create a histogram with 10 bins
hist(mtcars$mpg,
     breaks = 15,
     main = "Histogram of Miles Per Gallon (mpg) with 15 Bins",
     xlab = "Miles Per Gallon (mpg)",
     col = "blue",
     border = "black")


