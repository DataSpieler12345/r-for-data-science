#Upper Limit = Q3 + 1.5 * IQR


boxplot(iris)
summary(iris)

#q3 = 3.300
q3<-3.300
IQR(iris$Sepal.Width)

ub <- q3 + 1.5*IQR(iris$Sepal.Width)

#filter row with values
d<- iris[iris$Sepal.Width < ub,]

boxplot(d)


#Lower Limit = Q1 - 1.5 * IQR
summary(d)
#q1 = 2.800
q1<-2.8
lb <- q1 - 1.5*IQR(iris$Sepal.Width)

#filter row with values
d2<- d[d$Sepal.Width > lb,]

boxplot(d2)
