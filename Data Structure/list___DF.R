#######################################################################
##########################  LIST ######################################

# List of non-homogenous datatypes
list1<- list("R", "Python", c(8,2,67), TRUE, 51.99, 11.78,FALSE)
print(list1)

#Accessing Elements of a List
list2 <- list(c("Jan","Feb","Mar"), list(3,4,5))
print(list2[1])
print(list2[2])

#Adding elements in list
list3 <- list(c("Jan","Feb","Mar"), list(3,4,5))
list3[3] <- "Hello"
print(list3)


#Deleting List
list2 <- NULL

#Deleting element of list
list3[1] <- NULL

#Character list
vec <- c(1,2,3)
print(vec)

#String list
char_vec <- c("Hadoop", "Spark", "Flink", "Mahout")
print(char_sec)

#######################################################################
##########################  Data-Frame ################################


# Create the data frame.
df  <- data.frame(emp_id = c (1:5),
                  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
                  salary = c(623.3,515.2,611.0,729.0,843.25))
# Print the data frame.			
print(df) 

#Extract a specific column from a data frame, use the following syntax:
print(df$emp_name)

#Extract specific rows
print(df[1:2,])
  

#The following code extracts the first and third rows with 
#second and third columns respectively.
print(df[c(1,2),c(2,3)])

#Add column in exsisting datafram
df$gender <- c('Male','Male','Female','Male','Male')
print(df)


