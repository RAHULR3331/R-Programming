install.packages("gganimate")

library(gganimate)

library(ggplot2)

library(gapminder)

# Load the gapminder dataset

data(gapminder)

head(gapminder)



# Create the ggplot object

p <- ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, size = pop, color = continent, frame = year)) +
  
  geom_point(alpha = 0.7, show.legend = FALSE) +
  
  scale_x_log10() +  # Use log scale for GDP per capita
  
  scale_size(range = c(2, 12)) +  # Set the range for point sizes
  
  labs(title = 'Year: {frame_time}', x = 'GDP per Capita', y = 'Life Expectancy') +
  
  theme_minimal() +
  
  theme(plot.title = element_text(hjust = 0.5)) +
  
  transition_time(year) +
  
  ease_aes('linear')



# Animate and save the plot

animate(p, duration = 20, fps = 10, width = 800, height = 600, renderer = gifski_renderer("gdp_lifeExp_animation.gif"))