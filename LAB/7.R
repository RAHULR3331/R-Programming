library(ggplot2)
library(dplyr)

data("mpg")

mpg_summary <- mpg %>%
  group_by(manufacturer, class) %>%
  summarise(count = n()) %>%
  ungroup()

ggplot(mpg_summary, aes(x = manufacturer, y = count, fill = class)) +
  geom_bar(stat = "identity") +
  labs(title = "Count of Cars by Manufacturer and Class", 
       x = "Manufacturer", 
       y = "Count", 
       fill = "Class") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_brewer(palette = "Set3")
