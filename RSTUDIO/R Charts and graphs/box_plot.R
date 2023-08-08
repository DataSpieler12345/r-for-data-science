#Boxplots is a measure of how well distributed is the data in a data set. 

#It divides the data set into three quartiles. 
#This graph represents the minimum, maximum, median, first quartile and third quartile in the data set.

#Boxplots are created in R by using the boxplot() function.

#Syntax
boxplot(x, data, notch, varwidth, names, main)

#X is a vector or a formula.
#data is the data frame.
#notch is a logical value. Set as TRUE to draw a notch.
#varwidth is a logical value. Set as true to draw width of the box proportionate to the sample size.
#names are the group labels which will be printed under each boxplot.
#main is used to give a title to the graph

#Box plot
#Import mtcars with twp columns
input <- mtcars[,c('mpg','cyl')]
print(head(input))

# Plot the chart.
boxplot(mpg ~ cyl, 
        data = mtcars, 
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", 
        main = "Mileage Data")
