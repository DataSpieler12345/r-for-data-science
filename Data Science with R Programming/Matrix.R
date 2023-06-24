setwd("E:/RStudio/Data Science with R Programming")
getwd()

#Matrix: a Matrix is a collection of data elements arranged in a two-dimensional rectangular layout
#We use the matrix() function to create a matrix 

M <- matrix(1:9, nrow=3, ncol=3, byrow = T)
M

print(M)


matrix(1:6,nrow=2)

matrix(1:6,nco=2)
matrix(1:6,nrow=2,byrow=TRUE)
matrix(1:3, nrow=2,ncol=3)
cbind(1:3,1:3)
rbind(1:3,1:3)

n<- matrix(1:6,byrow=TRUE,nrow=2)
n
rbind(n,7:9)

n <- matrix(1:6,byrow=TRUE,nrow=2)
n


n <- matrix(1:6,byrow=TRUE,nrow=2)
n
rownames(n) <- c("row1", "row2")
n


colnames(n) <- c("col1","col2","col3") 
n

n <- matrix(1:6,byrow=TRUE,nrow=2)
dinames = list(c("row1","row2"), c("col2","col3"))
dinames


x <- matrix(1:8, ncol=2)
x

l <- matrix(LETTERS[1:6], nrow=4,ncol=3)
l 

cbind(x,l)
