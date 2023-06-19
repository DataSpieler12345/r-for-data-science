setwd("E:/RStudio/Data Science with R Programming")
getwd

#part 1 : Cars Data: The buyers of cars are interested in determining the factors 
#which influence the car mileage in the city

cars_data <- read.csv("cars.csv", sep=",")

# # Get column names
column_name <- colnames(cars_data)

# Modify column names containing a "."
column_name <- gsub("\\.", "_", column_name)

# Assign new column names to the data set
colnames(cars_data) <- column_name

# Verify the new column names
colnames(cars_data)

View(cars_data)
summary(cars_data)
str(cars_data)
names(cars_data)
colnames(cars_data)
print(colnames(cars_data), quote = FALSE)

cars_results <- lm(formula = city_mpg ~ engine_type + body_style + drive_wheels + engine_type + num_of_cylinders + horsepower
                   + curb_weight + wheel_base + length, data=cars_data)
cars_results
summary(cars_results)


#----------------------
#Boston Data set

boston_data <- read.csv("housing.csv")
summary(boston_data)
View(boston_data)
str(boston_data)

boston_results <- lm(formula = MEDV ~ ., data = boston_data)
boston_results
