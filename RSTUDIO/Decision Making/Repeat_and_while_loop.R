################################ LOOP ####################################
#A repeat loop is used to iterate over a block of code multiple number of times.


#Syntax
repeat {
  statement
}


#Example
x <- 1
repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}


# Example
v <- c("Hello","loop")
cnt <- 0
repeat {
  print(v)
  cnt <- cnt+1
  if(cnt == 5) {
    break
  }
}

############################# WHILE LOOP ########################################
#While loops are used to loop until a specific condition is met.

#Syntax
while (test_expression)
{
  statement
}


#EXample
i <- 1
while (i < 6) {
  print(i)
  i = i+1
}


v <- c("Hello While loop")
cnt <- 0
while (cnt < 7) {
  print(v)
  cnt = cnt + 1
}

