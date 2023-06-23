#List : A list is a generic vector that can contain object of different types
#We use the list() function to create a data frame

#example

list_1 <-list(x=c(10,20,30),
             y=c("a","b","c"),
             z =c(TRUE,FALSE))

print(list_1)


#example (vector | list)
test <- c("music tracks",100,5)
test
class(test)

test <- list("music tracks",100,5)
test

#testing
is.list(test)

test <- c("music tracks",100,5)
is.list(test) #false its a vector

test <- list("music tracks",100,5)
name(test) <- c("product", "count","rating")

names(test) <- c("product", "count","rating")
test
