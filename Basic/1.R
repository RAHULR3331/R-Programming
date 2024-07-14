# Load the mtcars dataset
data(mtcars)

# Extract car brands from row names
car_brands <- sub(" .*", "", rownames(mtcars))

# Create a frequency table of car brands
brand_freq <- table(car_brands)

# Create the bar plot
barplot(brand_freq,
        main = "Frequency of Car Brands in mtcars Dataset",
        xlab = "Car Brand",
        ylab = "Frequency",
        col = "lightblue",
        las = 2)

