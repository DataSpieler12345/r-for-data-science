#Vector in R

#Create vectors
vec1 <-c("a","b","c")
vec1
class(vec1)

vec2<-c(10,20,30)
vec2
class(vec2)

vec3<-c(TRUE,FALSE,TRUE)
vec3
class(vec3)

#print the above 3 vector at once with semicolon
vec1;vec2;vec3 #';' is used to separate 2 or more variables


vec4<-c(10,"a",TRUE) #R converts every value to character type
vec4
class(vec4)

vec5 <-c(FALSE,2) #R converts every value to numeric type
vec5
class(vec5)

vec6<- c('A',1)
vec6
class(vec6)

vec7<-c(1:20)
vec7

vec8<- seq(1,20)
vec8

vec9<-1:25
vec9

# create a vector with odd values b/w 1 to 20
odd_value<-seq(1,20,2)
odd_value

#Create a vector with even values b/w 1 to 20
even_value<-seq(2,20,2)
even_value

# Create vector with 10 odd values starting from 20
vec10 <- seq(from = 21, by = 2, length.out = 10)
vec10

# Naming your vectors using names() function

temperature<- c(72,71,68,73,69,75,71)
temperature

#Another way to name your vectors

days<-c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
temperature1 <-c(40,45,60,30,36,12,29)
names(temperature1)<-days
temperature1

#one more way to give names to each price values
price<-seq(100,220,20)
names(price)<-paste0("p",1:7)
price

#Basic operation on Vectors

v1<-c(2,1,4)
v2<-c(5,6,7)

#add 2 vectors
v1+v2

#Multiply 2 vectors
v1*v2

#subtract 2 vectors
v2-v1

#divide 2 vectors
v1/v2

#using basic maths functions with vectors
v1

sum(v1) # Add the values in a vector 
sd(v1) # Finds the standard deviation
var(v1) # to display the variance
prod(v1) # Give the product of the vector values
max(v1) #Returns the maximum value
min(v1) #Return the minimum value

# Comparing vectors using comparison operators

v1<- c(19,12,45)
v2<- c(19,20,30)

v1<v2
v1>v2
v1!=v2
v1==v2

v <- c(1,2,3,4,5)
v>3

#Vector slicing and indexing 

price1<-seq(550,670,20)
names(price1)<-paste0("p",1:7)
price1

#Using index position
price1[3]
price1[3:4]
price[c(1,4)]
price[c(2,6)]

#indexing with names
price[c("p3")]
price[c("p3","p4","p7")]
price1["p3"]

#using logical position
price[c(T,F,T,T,F,F,F)]
price[c(T,F)]

#using exclude position method
price1[-2]
price[c(-2,-5)]

#using comparison operator
price1[price1>600]

filter <-price1>600
price1[filter]
