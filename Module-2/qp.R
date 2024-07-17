Let's go through each question and provide the necessary R code and explanations.

### Question 1

1. *Create a data frame with the columns (age, height, weight, gender) and 6 rows. Write the R code to:*
   R
 # Create the data frame
df <- data.frame(
  age = c(23, 45, 34, 25, 30, 50),
  height = c(170, 160, 180, 175, 165, 155),
  weight = c(65, 70, 75, 68, 72, 60),
  gender = c('M', 'F', 'M', 'F', 'M', 'F')
)

# Show the data frame
df

   # 1. Invert gender for all individuals
   df$gender <- ifelse(df$gender == 'M', 'F', 'M')

   # 2. Add 2 new columns: working and level of illiteracy
   df$working <- c('Yes', 'No', 'Yes', 'Yes', 'No', 'No')
   df$illiteracy <- factor(c('low', 'medium', 'low', 'high', 'medium', 'high'), levels = c('low', 'medium', 'high'))

   # 3. Find the number of rows and columns in the data frame
   num_rows <- nrow(df)
   num_cols <- ncol(df)

   # 4. Display the class of each variable
   var_classes <- sapply(df, class)

   # 5. Order the data frame by age
   df <- df[order(df$age), ]

   # 6. Remove the variable height
   df$height <- NULL

   # 7. List the people with low illiteracy and are working
   low_illiteracy_working <- df[df$illiteracy == 'low' & df$working == 'Yes', ]

   # 8. Change the column names to variable_i
   colnames(df) <- paste0('variable_', 1:ncol(df))
   df <- cbind(id = paste0("id_", 1:nrow(df)), df)

   # Print the final data frame
   print(df)
   

### Question 2

*Describe the multiple ways to read and write data from the console. Elaborate R functions to choose character, numerical input dynamically from user.*

1. *Reading data from the console:*
   - readline(prompt = "Enter text: ") for reading a single line of text.
   - scan() for reading multiple lines or a sequence of data.

   R
   # Example of reading a single line of text
   name <- readline(prompt = "Enter your name: ")
   print(paste("Hello", name))

   # Example of reading numeric data
   numbers <- scan(what = numeric(), nmax = 5, quiet = TRUE)
   print(numbers)
   

2. *Writing data to the console:*
   - print(), cat(), and message() are commonly used functions.

   R
   print("This is a message using print()")
   cat("This is a message using cat()\n")
   message("This is a message using message()")
   

3. *Choosing input dynamically:*
   - readline() for character input.
   - as.numeric(readline()) for numeric input.

   R
   # Dynamic input
   character_input <- readline(prompt = "Enter a character: ")
   numeric_input <- as.numeric(readline(prompt = "Enter a number: "))

   print(paste("Character input:", character_input))
   print(paste("Numeric input:", numeric_input))
   

### Question 3

*Which data object in R is used to store and process categorical data? Explain in detail. Illustrate the various functions associated with the data object.*

The primary data object in R to store and process categorical data is the factor. Factors are used to handle categorical variables and store both the values and the corresponding levels.

1. *Creating a factor:*
   R
   # Example factor creation
   colors <- factor(c('red', 'green', 'blue', 'red', 'green'))
   print(colors)
   

2. *Functions associated with factors:*
   - levels(): Get or set the levels of a factor.
   - nlevels(): Get the number of levels.
   - as.factor(): Convert an object to a factor.
   - factor(): Create a factor with specific levels and labels.
   - table(): Create a contingency table.

   R
   # Get levels
   print(levels(colors))

   # Get number of levels
   print(nlevels(colors))

   # Convert a character vector to a factor
   fruits <- c('apple', 'banana', 'cherry')
   fruits_factor <- as.factor(fruits)
   print(fruits_factor)

   # Create a contingency table
   color_table <- table(colors)
   print(color_table)
   

### Question 4

*Imagine a dataset where you have ratings of well-being and anxiety measured 3 times in a longitudinal study. Do the following using the tidy package.*

R
library(tidyr)
library(dplyr)

# Sample data
data <- data.frame(
  subid = c(1, 2, 3),
  well1 = c(4.7, 3.5, 4.2),
  well2 = c(6.3, 6.9, 8.8),
  well3 = c(9.4, 8.3, 6.6),
  anx1 = c(5.7, 4.4, 5.8),
  anx2 = c(6.3, 5.8, 6.8),
  anx3 = c(5.9, 6.7, 6.6)
)

# 1. Gather both well-being and anxiety columns into one key-value pair
gathered_data <- data %>%
  gather(key = "measure_time", value = "value", well1:anx3)

# 2. Take the well-being and anxiety key-value pair and separate the measure (well-being versus anxiety) and the time (1, 2, 3)
separated_data <- gathered_data %>%
  separate(measure_time, into = c("measure", "time"), sep = 4)

# 3. Spread the values of each well-being and anxiety measure across columns
spread_data <- separated_data %>%
  spread(key = measure, value = value)

# 4. Combine the values of subject id and time into a single column
final_data <- spread_data %>%
  unite(col = "subid_time", subid, time, sep = "_")

# Print the final data
print(final_data)


### Question 5

*Illustrate the capabilities of dplyr package for data wrangling.*

The dplyr package provides a set of functions to perform data manipulation tasks such as selecting, filtering, arranging, summarizing, and mutating data.

1. *Select columns:*
   R
   selected_data <- data %>% select(subid, well1, anx1)
   print(selected_data)
   

2. *Filter rows:*
   R
   filtered_data <- data %>% filter(well1 > 4)
   print(filtered_data)
   

3. *Arrange rows:*
   R
   arranged_data <- data %>% arrange(well1)
   print(arranged_data)
   

4. *Summarize data:*
   R
   summarized_data <- data %>% summarize(mean_well1 = mean(well1))
   print(summarized_data)
   

5. *Mutate data:*
   R
   mutated_data <- data %>% mutate(well_diff = well3 - well1)
   print(mutated_data)
   

### Question 6

*Discuss the concept of Grammar of Graphics. Illustrate ggplot functions for histogram, bar plot, scatter plot & box plot.*

The Grammar of Graphics is a framework for data visualization that breaks down graphs into semantic components such as data, aesthetic mappings, geometric objects, statistical transformations, scales, coordinate systems, and faceting.

*Histograms:*
R
library(ggplot2)

# Histogram
ggplot(data, aes(x = well1)) +
  geom_histogram(binwidth = 1, fill = 'blue', color = 'black') +
  ggtitle("Histogram of Well-being at Time 1")


*Bar plots:*
R
# Bar plot
ggplot(data, aes(x = factor(subid), y = well1)) +
  geom_bar(stat = 'identity', fill = 'green') +
  ggtitle("Bar Plot of Well-being at Time 1 by Subject")


*Scatter plots:*
R
# Scatter plot
ggplot(data, aes(x = well1, y = anx1)) +
  geom_point(color = 'red') +
  ggtitle("Scatter Plot of Well-being vs Anxiety at Time 1")


*Box plots:*
R
# Box plot
ggplot(data, aes(x = factor(subid), y = well1)) +
  geom_boxplot(fill = 'purple') +
  ggtitle("Box Plot of Well-being at Time 1 by Subject")


These examples illustrate various ggplot2 functions to create different types of plots.






