# As & When dataset is not complete and when information is not available we call it missing values.
# In R the missing values are coded by the symbol NA. To identify missings dataset the function is is.na()

#Syntax
is.na(x) # returns TRUE of x is missing


#Examples

y <- c(1,2,3,NA)
is.na(y) # returns a vector (F F F T)

#Dataframe Example

#create  Name variable
Name <- c("John", "Tim", NA)
#create  Gender variable
Gender <- c("men", "men", "women")
#create Age variable
Age <- c(45, 53, NA)


#Dataframe whith 3 variable
dt <- data.frame(Name, Gender, Age)  

#Check the missing value
is.na(dt)

#count the Numbe of missing values
sum(is.na(dt))

#remove the missings
na.omit(dt)                       	


################################# Excluding Missing Values from Analyses ###################################################

x <- c(1,2,NA,3)
# Average
mean(x)
mean(x, na.rm=TRUE)

# Sum
sum(x)
sum(x,na.rm = TRUE)
