# Load the iris dataset
data(iris)

# Define colors for each species
species_colors <- c("setosa" = "orange", "versicolor" = "green", "virginica" = "blue")

# Create the scatter plot
plot(iris$Sepal.Length, iris$Sepal.Width,
     col = species_colors[iris$Species],
     pch = 19,
     xlab = "Sepal Length",
     ylab = "Sepal Width",
     main = "Sepal Length vs. Sepal Width by Species")

# Add a legend
legend("topright", legend = levels(iris$Species), col = species_colors, pch = 19)
