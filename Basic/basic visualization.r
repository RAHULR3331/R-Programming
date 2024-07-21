# Install ggplot2 package if not already installed
# install.packages("ggplot2")

# Load ggplot2 library
library(ggplot2)

# Example 1: Scatter plot
# Create sample data
set.seed(123)
data <- data.frame(
  x = rnorm(100),
  y = rnorm(100)
)

# Create a scatter plot
ggplot(data, aes(x = x, y = y)) +
  geom_point()

# Example 2: Histogram
# Create sample data
data <- data.frame(
  values = rnorm(100)
)

# Create a histogram
ggplot(data, aes(x = values)) +
  geom_histogram()

# Example 3: Line plot
# Create sample data
data <- data.frame(
  x = 1:10,
  y = 1:10 + rnorm(10)
)

# Create a line plot
ggplot(data, aes(x = x, y = y)) +
  geom_line()

# Example 4: Bar plot
# Create sample data
data <- data.frame(
  category = letters[1:5],
  values = runif(5)
)

# Create a bar plot
ggplot(data, aes(x = category, y = values)) +
  geom_bar(stat = "identity")
