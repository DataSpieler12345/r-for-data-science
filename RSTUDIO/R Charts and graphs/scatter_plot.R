#Scatterplots show many points plotted in the Cartesian plane. 
#Each point represents the values of two variables. 
#One variable is chosen in the horizontal axis and another in the vertical axis.

#The simple scatterplot is created using the plot() function

#Syntax
plot(x, y, main, xlab, ylab, xlim, ylim, axes)

#x is the data set whose values are the horizontal coordinates.
#y is the data set whose values are the vertical coordinates.
#main is the tile of the graph.
#xlab is the label in the horizontal axis.
#ylab is the label in the vertical axis.
#xlim is the limits of the values of x used for plotting.
#ylim is the limits of the values of y used for plotting.
#axes indicates whether both axes should be drawn on the plot.

#Import MTCars
input <- mtcars[,c('wt','mpg')]
print(head(input))

# Plot the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)
