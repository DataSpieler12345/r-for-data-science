##########################################################################################
########################### Decision Making ##############################################
##########################################################################################

#Syntax 
if (test_expression) {
  statement
}



x <- 5
if(x > 6){
  print("Positive number")
}


x = 10
if (x == 10){
  print("X equal to 10")
}

################################### IF ELSE ###################################

#Syntax
if (test_expression) {
  statement1
} else {
  statement2
}



x <- -5
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}


x <- c("what","is","truth")
if("Truth" %in% x) {
  print("Truth is found")
} else {
  print("Truth is not found")
}

