################################################### INDEXING #################################################################
#Indexing means selecting a subset of the elements in order to use them in further analysis or 
#possibly change them.

#Here we focus just on three kinds of vector indexing: 
#positional
#named reference
#logical 

#Any of these indexing techniques works the same for all classes of vectors


############################################## Positinal Indexing ##########################################

#First element for vector
print(c("a", "b", "c")[2])

#Define vector
a <- 1:12
#Print value at index of last position
print(a[2])


############################################## Named Indexing ##############################################

#Define vector with named storage
b <- c(x = 1, y = 2, z = "4")
#Print it
print(b)

#Named extraction
print(b['z'])


############################################## Logicial Indexing ##########################################

#Define vector from 10 to 3
c <- 10:3
print(c)

#Check values if its equal to 5
c[c == 5]

#Check value where its not equal to 5	
c[!c == 5]

#Check value when its greater than 5
c[c > 5]        
