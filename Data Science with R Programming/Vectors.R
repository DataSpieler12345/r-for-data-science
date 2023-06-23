#Vector in R 
#Basic type of R object is a vector
#Empty vectors can be created with vector() function, A vector can contain objects of same type/class
#Note: A vector is sequence of data elements of the same basic type | we use the c() function to declare a vector
#Note: List is a vector which can cantain objects of differents classes

# Create vectors
v1 <- c(1,2,3,4,5)

v2 <- c('red','green','black','yellow')

v3 <- c(6,7,8,9,10)
v4 <- v1 + v4
mixed_vec = c(v1,v2)

print(v1)
print(v2)
class(v1)
print(v4)
print(mixed_vec)

### One dimensional objects
# Integer vector
num = 1:10
class(num)

#Numeric vector, it has a float, 10.5
num =c(1:10, 10.5)
class(num)
num

#character vector
ltrs = letters[1:10]
class(ltrs)
ltrs

#Factor vector
fac = as.factor(ltrs)
class(fac)

# for 2 dimensional objects, we will refere matrix.R

# Mixing objects
#There are accasions when different classes of R objects get mixed together. Sometimes this happens
#by accident but it can also happen on purpose.
y <- c(1.7, "a") ##character
y
class(y)

y <- c(TRUE, 2) ##Numeric
class(y)
y

y <- c("a", TRUE) ##character
y

#we are mixing objects of two different class in a vector. But for vectors this is not allowed.
#When different objects are mixed in a vector, coercion occurs so that every element in the vector is 
#of the same class. Above, we see the effect of implicit coercion. What R tries to do is find a way to
#represent all of the objects in the vector in a reasonable fashion.

#Explicit coercion
#Objects can be explicitly coerced from one class to another using the as.* functions
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

#If R cannot figure out how to coerce an object, this can result in NAs being produced. 
x <- c("a","b","c")
class(x)
as.numeric(x)
as.logical(x)
as.complex(x)

x

#Attributes
#R objects have attributes(metadata for object)
#Examples of R object attributes (names,dimnames,dimension[matrices,arrays],class[integer,numeric]),
#length,other user-defined attributes/metadata
x <- 1
x
#Not all R objects contain attributes, in which case the attributes() function returns NULL.
attributes(x)
