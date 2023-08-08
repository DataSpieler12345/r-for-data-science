############################################################################################
################################### Factor ###############################################

#List of values
data <- c("Male","Female","Male","Child","Child","Male","Female","Female")
print(data)

#Converting into Factors
factor.data <- factor(data)
print(factor.data)


#Another Example
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
# Check the levels of data
levels(fdata)
fdata
