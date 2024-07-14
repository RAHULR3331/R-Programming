data(diamonds, package="ggplot2")

clarity <- table(diamonds$clarity)

pie(clarity, main="Pie Chart of Diamond Clarity", col=rainbow(length(clarity)))