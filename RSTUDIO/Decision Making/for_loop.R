################################ FOR LOOP ################################
#A for loop is used to iterate over a vector in R programming.

#Syntax
for (val in sequence)
{
  statement
}



#Below is an example to count the number of even numbers in a vector.
x <- c(2,5,3,9,8,11,6)
count <- 0
for(val in x) {
  if(val %% 2 == 0)  
    count = count+1
}
print(count)


# Example
v <- LETTERS[1:4]
for ( i in v) {
  print(i)
}
