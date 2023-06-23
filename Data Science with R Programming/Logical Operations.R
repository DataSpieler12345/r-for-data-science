# Basic Arithmetic operations

192+250 #Addition
955-380 #Subtraction
20*100 # Multiplication
50/5 #Division
5^4 #Exponent
18%%7 #Modulo - returns the remainder

(500*2)+(80/2) #Order of operations
500*(2+1) #Order of operation

#Assigning variables
selling <- 500          #Variable1
cost <- 250             #Variable2
profit <- selling -cost #Variable3
profit                  #Display the value stored in profit

# Data type in R
num <- 3.7 #Decimals are part of the Numeric class in R

i <- 10 #Whole numbers are known as integers
typeof(i) #To check the data type of the variable 

j <- 10L
j
class(j)

t <- TRUE
f >- FALSE #Boolean values are part of the logical class
typeof(t)

ch <- "HELLO" #Text/string values are known as characters
class(ch) #Checks the data type of a variable
typeof(ch) #Checks the data type of a variable

c <- 1+2i #R supports complex data type too
class(c)
length(c)

# Using the Print function

print("hey") #Prints hey on the screen

y <- 20
print(y) #Print the value of y

x <- mtcars
print(mtcars) #Prints the mtcars data set

print(paste('Hello','Students')) #Paste function

print(paste('Hello','Students', sep=',')) #Sep is for the chosen separator between the pasted items

paste0('Hello','Students') #Display without space

sprintf("%s is %f feet tall", "Ashley", 5.1) #Returns a character vector containing a formatted combination


