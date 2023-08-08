##################################################################
########################## DATATYPES ##############################

i     <- 1                # create a numeric variable
sport <- "football"       # create a character variable
flag  <-  TRUE           	# create a logical variable

##################################################################
########################## VARIBALE ASSIGNMENT #############################

#Assigning values to x variable
x <- 5		
print(x)

# Assignment using equal operator.
var.1 = c(0,1,2,3)  
print(var.1)
print(var.1[1])

# Assignment using leftward operator.
var.2 <- c("learn","R")   
print(var.2[1])

# Assignment using rightward operator.   
c(TRUE,1) -> var.3  
print(var.3)


##################################################################
########################## CLASS OF VARIBALE #####################


#class() function represents the abstract class of an object
#typeof()function determines the way an object is stored in memory.

i = 5
class(i) 			 # returns "numeric"
typeof(i) 			# returns "double"

var_x <- "Hello"
class(var_x)


##################################################################
########################## FINDING VARIABLE #####################

print(ls())


##################################################################
########################## DELETING VARIABLE #####################

rm(i)

