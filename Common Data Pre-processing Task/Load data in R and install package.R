############################# Packages in R ###################################

#R packages are collections of functions and data sets developed by the community. 
#They increase the power of R by improving existing base R functionalities, or by adding new ones.

#First check the installed packages
installed.packages()

#Install new packages using code
install.packages('dplyr')

#Install multiple new packages using code
install.packages(c('dplyr','ggplot'))

#Load a package
library(gplots)
library(dplyr)

#Checking updates from UI

#Check the description of package
packageDescription('dplyr')

############################# LOAD DATA in R ###################################

#First way
#Read it
install.packages('readxl')
library('readxl')
loanFiltered <- read_excel("loanFiltered.xlsx")

#Second way
#Going through UI

# Check some statistics of dataframe

#Print the shape
dim(loanFiltered)

#print number of rows
nrow(loanFiltered)

#print number of rows
ncol(loanFiltered)

#Print first 5 records
head(loanFiltered,5)


