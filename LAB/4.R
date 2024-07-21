# Load the Titanic dataset
data("Titanic")
titanic_df <- as.data.frame(Titanic)

# Table for survivors vs. non-survivors
survival_table <- xtabs(Freq ~ Survived, data = titanic_df)

# Table for class distribution
class_table <- xtabs(Freq ~ Class, data = titanic_df)

# Set up the plotting area to display two plots side by side
par(mfrow = c(1, 2))

# Pie chart for survivors vs. non-survivors
pie(survival_table, 
    main = "Survivors vs. Non-survivors",
    col = c("red", "green"),
    labels = paste(names(survival_table), "\n", round(100 * survival_table / sum(survival_table), 1), "%"))

# Pie chart for class distribution
pie(class_table, 
    main = "Passenger Class Distribution",
    col = c("blue", "yellow", "cyan", "purple"),
    labels = paste(names(class_table), "\n", round(100 * class_table / sum(class_table), 1), "%"))
