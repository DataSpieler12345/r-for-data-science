#Logical Operator 

x<- c(TRUE,FALSE,0,6)
y<- c(TRUE,TRUE,FALSE,FALSE)

#Negation Operation
!x

#perform element-wise AND operation
x&y

#examines only the first element of the operands resulting into 
#a single length logical vector.
x%%y

#perform element-wise OR operation
x|y

#examines only the first element of the operands resulting into 
#a  single length logical vector 
x||y

#Assignment Operators

#using Arrow operator
x<- 5
x

#using equal to operator
x = 9
x

#using left hand
10 -> x
x
