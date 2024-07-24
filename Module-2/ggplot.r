ggplot(data = mtcars, aes(x = hp)) +
  geom_histogram(binwidth = 5) +
  labs(title = "Histogram of Horsepower",
       x = "Horsepower",
       y = "Count")


ggplot(data = mtcars, aes(x = hp, y = mpg, col = factor(cyl),
                          shape = factor(am))) +geom_point() +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")

# Conversion of data set to data frame
df <- data.frame(iris)

# Scatterplot using qplot() 
qplot(Sepal.Length,Sepal.Width,data=iris,
      main="ScatterPlot using qplot()",
      xlab="Length",ylab="Width")
