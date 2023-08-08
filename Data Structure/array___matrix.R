############################################################################################
################################### MATRIX   ###############################################

#The basic syntax to create a matrix is given below:

matrix(data, nrow, ncol, byrow, dimnames)
#where,
#data = the input element of a matrix given as a vector.
#nrow = the number of rows to be created.
#ncol = the number of columns to be created.
#byrow = the row-wise arrangement of the elements instead of column-wise
#dimnames = the names of columns/rows to be created.

#Create  a matrix of 3 row and 4 column 
sales_matrix <- matrix(0, nrow = 3, ncol = 4)
sales_matrix

#Another Example
  M1 <- matrix(c(11:19), nrow = 3, ncol =3, byrow= TRUE)
print(M1)

#Accessing elements of Matrix
#To access the elements of a matrix, row and column indices are used in the following ways:
print(M1[1,1])
print(M1[3,3])
print(M1[2,3])

