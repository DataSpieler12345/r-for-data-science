
#######################################################################
##########################  VECTOR ####################################


# create a vector "red" "yellow" "blue"
u <- c("red", "yellow", "blue")	
print(u)
typeof(u)

# create a vector 1 2 3 4 5
v <- 1:5				                      
print(v)

# create a logical vector of length 3
a <- vector(length=3) 			          
print(a)

# create a numeric vector of length 3
b <- vector(mode="numeric", 3)
print(b)



#Accessing elements of Vector
#Elements of a vector can be accessed by using their respective indexes.[ ] 
#brackets are used to specify indexes of the elements to be accessed.

x <- c("Jan","Feb","March","Apr","May","June","July")
y <- x[c(3,2,7)]
print(y)


print(x[4])

#Vector Arithmetic
v1 <- c(7,6,9,89,71)
v2 <- c(54,2,86,114,57)

#Addition
add.v <- v1+v2
print(add.v)

#Substraction
sub.v <- v1-v2
print(sub.v)

#Multiplication
multi.v <- v1*v2
print(multi.v)

#Division
divi.v <- v1/v2
print(divi.v)

