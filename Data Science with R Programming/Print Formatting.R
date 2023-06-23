# R uses the print() function to display the variables
# R uses the paste() and paste0() functions to format strings and variables together for printing in a few different ways

#<- is the assignment operator
x <- 1
x
print(x)

msg <- "Hello Guys"
print(msg)

y <- 5 ##nothing printed

y ##auto-printing occurs 
print(y) ##explicit printing
##[1] : means y is a vector and 5 is its first element

#using operator to create integer sequences
#integer sequence of lengh 20
x <-10:30
x
#=========

#R has 5 basic or "atomic" classes of objects
#1. Character
#2. numeric(real numbers)
#3. integer
#4. complex
#5. logical(true/false)