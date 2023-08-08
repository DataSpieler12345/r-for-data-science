#A histogram represents the frequencies of values of a variable bucketed into ranges. 
#Histogram is similar to bar chat but the difference is it groups the values into continuous ranges. 
#Each bar in histogram represents the height of the number of values present in that range.

#R creates histogram using hist() function.

#Syntax
hist(v,main,xlab,xlim,ylim,breaks,col,border)

#v is a vector containing numeric values used in histogram.
#main indicates title of the chart.
#col is used to set color of the bars.
#border is used to set border color of each bar.
#xlab is used to give description of x-axis.
#xlim is used to specify the range of values on the x-axis.
#ylim is used to specify the range of values on the y-axis.
#breaks is used to mention the width of each bar.

# Create data for the graph.
v <- c(9,13,21,8,36,22,12,41,31,33,19)

# Create the histogram.
hist(v,xlab = "Weight",col = "green",border = "red", xlim = c(0,40), ylim = c(0,5),
     breaks = 5)
