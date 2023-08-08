############################# LOAD DATA in R ###################################
#Read it
library('readxl')
loanFiltered <- read_excel("loanFiltered.xlsx")
#Print first five rows
head(loanFiltered)

#Print summary of dataset
summary(loanFiltered)

#structure of dataset
str(loanFiltered) 

#Finding min & max of specific column
min(loanFiltered$loan_amnt)
#Max
max(loanFiltered$loan_amnt)

#Range function gives us min and max in single operation
range(loanFiltered$loan_amnt)

#Finding avg of specific column
mean(loanFiltered$loan_amnt)

#find out standard deviation of particular column
sd(loanFiltered$loan_amnt)

#find out Variation of particular column
var(loanFiltered$loan_amnt)