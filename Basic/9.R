# Load the necessary library
library(ggplot2)

# Load the airquality dataset
data("airquality")

# Create temperature categories
airquality$temp_cat <- cut(airquality$Temp, breaks = c(50, 70, 80, 90), labels = c("50-70", "70-80", "80-90"))

# Create the box plot
ggplot(airquality, aes(x = factor(Month), y = Ozone, fill = temp_cat)) +
  geom_boxplot() +
  labs(title = "Box Plot of Ozone Levels by Month and Temperature Range",
       x = "Month",
       y = "Ozone Levels") +
  scale_fill_manual(values = c("50-70" = "lightblue", "70-80" = "lightgreen", "80-90" = "lightcoral")) +
  theme_minimal()
