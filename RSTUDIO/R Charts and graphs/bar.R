#A bar chart represents data in rectangular bars with length of the bar proportional 
#to the value of the variable. 

#R uses the function barplot() to create bar charts.
#The basic syntax to create a bar-chart in R is ???

barplot(H,xlab,ylab,main, names.arg,col)

#H 	is a vector or matrix containing numeric values
#xlab	 is the label for x axis
#ylab 	is the label for y axis
#main	 is the title of the bar chart.
#names.arg 	is a vector of names appearing under each bar.
#col is used to give colors to the bars in the graph.

#Example
max.temp <- c(22, 27, 26, 24, 23, 26, 28)
barplot(max.temp)

# barchart with added parameters
barplot(max.temp,
        main = "Maximum Temperatures in a Week",
        xlab = "Degree Celsius",
        ylab = "Day",
        names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
        col = "darkred",
        horiz = FALSE)


############################## CATEGORICAL DATA ############################
#Sometimes we have to plot the count of each item as bar plots from categorical data. 
#Example

age <- c(17,18,18,17,18,19,18,16,18,18)
barplot(age) #Wont print as requries

#We need to chage the approach
#Table gives us count of each values in vector
table(age)


#Bar Plot
barplot(table(age),
        main="Age Count of 10 Students",
        xlab="Age",
        ylab="Count",
        border="red",
        col="blue",
        density=10
)
