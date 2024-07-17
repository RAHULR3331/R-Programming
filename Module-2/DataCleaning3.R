#Create a Dataframe
df <- data.frame(
  Name = c("vipul", "jayesh", "anurag"),
  Age = c(25, 23, 22),
  Score = c(95, 89, 78)
)
df

#Install Package
install.packages("dplyr")
library(dplyr)

#Create a Tibble
tb <- tibble(
  Name = c("vipul", "jayesh", "anurag"),
  Age = c(25, 23, 22),
  Score = c(95, 89, 78)
)
tb

#use mtcars dataset
head(mtcars)

# Chain operations using the pipe operator
result <- mtcars %>%
  filter(mpg > 20) %>%        # Filter rows where mpg is greater than 20
  select(mpg, cyl, hp) %>%    # Select specific columns
  group_by(cyl) %>%           # Group the data by the 'cyl' variable
  summarise(mean_hp = mean(hp))  # Calculate the mean horsepower for each group

# Display the result
print(result)


# Create a data frame with missing data
d <- data.frame(name = c("Abhi", "Bhavesh", "Chaman", "Dimri"),
                age = c(7, 5, 9, 16),
                ht = c(46, NA, NA, 69),
                school = c("yes", "yes", "no", "no"))

# Display the data frame
print(d)

# Finding rows with NA value
rows_with_na <- d %>% filter(is.na(ht))
print(rows_with_na)

# Finding rows with no NA value
rows_without_na <- d %>% filter(!is.na(ht))
print(rows_without_na)

# Arranging name according to the age
new<- arrange(d, age)
print(new)

# startswith() function to print only ht data
select(d, starts_with("ht"))

select(d, starts_with("ge"))

# -startswith() function to print everything except ht data
select(d, -starts_with("ht"))

# Printing column 1 to 2
select(d, 1: 2)

# Printing data of column heading containing 'a'
select(d, contains("a"))

# Printing data of column heading which matches 'na'
select(d, matches("na"))

# Calculating a variable x3 which is sum of height and age, printing with ht and age
mutate(d, x3 = ht + age) 

# Calculating a variable x3 which is sum of height and age, printing without ht and age
transmute(d, x3 = ht + age) 

# Calculating mean of age
summarise(d, mean = mean(age))

# Calculating min of age
summarise(d, med = min(age))

# Calculating max of age
summarise(d, med = max(age))

# Calculating median of age
summarise(d, med = median(age))


# Printing three rows
sample_n(d, 3)

# Printing 50 % of the rows
sample_frac(d, 0.50)

#slice functions
# Create DataFrame
df <- data.frame(
  id = c(10,11,12,13,14,15,16,17),
  name = c('sai','ram','deepika','sahithi','kumar','scott','Don','Lin'),
  gender = c('M','M','F','F','M','M','M','F'),
  dob = as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16',
                  '1995-03-02','1991-6-21','1986-3-24','1990-8-26')),
  state = c('CA','NY',NA,NA,'DC','DW','AZ','PH'),
  row.names=c('r1','r2','r3','r4','r5','r6','r7','r8')
)
df

# Select rows 2 and 3
df2 <- df %>% slice(2,3)
df2

# Select rows from list
df2 <- df %>% slice(c(2,3,5,6))
df2

# select rows by range
df2 <- df %>% slice(2:6)
df2

#Drop rows using slice()
df2 <- df %>% slice(-2,-3,-4,-5,-6)
df2

# Drop by range
df2 <- df %>% slice(-2:-6)
df2

#join functions (https://www.geeksforgeeks.org/joining-data-in-r-with-dplyr-package/)
# create dataframe with 1 to 5 integers 
gfg1 <- data.frame(ID=c(1: 5)) 
gfg1

# create dataframe with 4 to 8 integers 
gfg2 <- data.frame(ID=c(4: 8)) 
gfg2

# perform inner join 
inner_join(gfg1, gfg2, by="ID") 

# perform left join 
left_join(gfg1,gfg2, by = "ID") 

# perform right join 
right_join(gfg1,gfg2, by = "ID")  

#perform full join
full_join(gfg1,gfg2, by = "ID")   

# perform semijoin 
semi_join(gfg1,gfg2, by = "ID")   

# perform anti join 
anti_join(gfg1,gfg2, by = "ID") 