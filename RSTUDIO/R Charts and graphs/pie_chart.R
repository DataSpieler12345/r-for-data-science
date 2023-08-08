#In R the pie chart is created using the pie() function which takes positive numbers as a vector input. 
#The additional parameters are used to control labels, color, title etc.


#Syntax
pie(x, labels, radius, main, col, clockwise)

#x is a vector containing the numeric values used in the pie chart.
#labels is used to give description to the slices.
#radius indicates the radius of the circle of the pie chart.(value between ???1 and +1).
#main indicates the title of the chart.
#col indicates the color palette.
#clockwise is a logical value indicating if the slices are drawn clockwise or anti clockwise


# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Plot the chart.
pie(x,labels)


################################################# WITH NAME & COLOR ########################################################
# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Plot the chart with title and rainbow color pallet.
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))

################################################# Slice Percentages and Chart Legend #######################################

# Create data for the graph.
x <-  c(21, 62, 10,53)
labels <-  c("London","New York","Singapore","Mumbai")

piepercent<- round(100*x/sum(x), 1)

# Plot the chart.
pie(x, 
    labels = piepercent, 
    main = "City pie chart",
    col = rainbow(length(x)))
#Provide legend
legend("topright", c("London","New York","Singapore","Mumbai"), cex = 0.8, fill = rainbow(length(x)))
