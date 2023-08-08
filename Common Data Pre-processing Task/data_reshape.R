##Data Reshaping in R is about changing the way data is organized into rows and columns. 
##Most of the time data processing in R is done by taking the input data as a data frame.
##R has many functions to split, merge and change the rows to columns and vice-versa in a data frame.


#cbind function
#We can join multiple vectors to create a data frame using cbind function. Its based on column wise

#rbind function
#we can merge two data frames using rbind() function.its based on row wise

##############################################################################################################################

#Declare three individual vectors
city <- c("Tampa","Seattle","Hartford","Denver")          # Create vector objects.
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)

#Add it in final variable using CBIND
addresses <- cbind(city,state,zipcode)
#using rbind
addresses <- rbind(city,state,zipcode)

print(addresses)

###############################################################################################################################
# Examle of # Create another data frame with similar columns

new.address <- data.frame(
  city = c("Lowry","Charlotte"),
  state = c("CO","FL"),
  zipcode = c(80230,33949)
)
# Print the data frame.
print(new.address)

# Combine rows form both the data frames.
all.addresses <- rbind(addresses,new.address)		

print("# # # The combined data frame\n") 		# Print a header.
print(all.addresses)
