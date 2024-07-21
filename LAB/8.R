# Load the necessary libraries
library(ggplot2)

# Load the mpg dataset
data("mpg")

# Create the comparative histogram with legend
ggplot(mpg, aes(x = hwy)) +
  geom_histogram(aes(y = ..density.., fill = "Highway MPG"), binwidth = 2, alpha = 0.5, color = "black", position = "identity") +
  geom_histogram(aes(x = cty, y = ..density.., fill = "City MPG"), binwidth = 2, alpha = 0.5, color = "black", position = "identity") +
  labs(title = "Comparative Histogram of Highway and City MPG",
       x = "Miles per Gallon (MPG)",
       y = "Density",
       fill = "Dataset") +
  scale_fill_manual(values = c("Highway MPG" = "blue", "City MPG" = "green")) +
  theme_minimal() +
  guides(fill = guide_legend(title = "Dataset"))
