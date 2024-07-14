install.packages("ggplot2")
# Load the necessary libraries
library(ggplot2)

# Load the diamonds dataset
data("diamonds")

# Create the box plot with jitter points
ggplot(diamonds, aes(x = cut, y = price)) +
  geom_boxplot(outlier.shape = NA, fill = "lightgray") +  # Create the box plot without outliers
  geom_jitter(alpha = 0.2, color = "blue", width = 0.2) +  # Add jitter points
  labs(title = "Box Plot of Price Grouped by Cut Quality",
       x = "Cut Quality",
       y = "Price") +
  theme_minimal()
