 if (!require("class")) install.packages("class")
 library("class")
 
 wine <- read.csv("./classification in r/data/wine.csv")
 head(wine)
 
 # Normalize
 normalize <- function(x) {
   norm <- (x - min(x)) / (max(x) - min(x))
   return(norm)
 }
 
 
 df <- as.data.frame(lapply(wine[,2:14], normalize))
 df <- cbind(df, wine[,1])
 head(df)
 names(df)[14]<-"Type"
 colnames(df)
 
 set.seed(321)
 
 df.split <- sample(2,
                    nrow(df),
                    replace = TRUE,
                    prob = c(0.7,0.3))
 
 # training and test 
 df.train <- df[df.split==1,1:13]
 df.test <- df[df.split==2,1:13]
 
 # labels
 df.train.labels <- df[df.split==1,14]
 df.test.labels <- df[df.split==2,14]
 
 # knn algorithm
 df.pred <- knn(train=df.train,
                test=df.test,
                cl=df.train.labels,
                k=7)
 
 # create one table and see the prediction numbers
 table(df.pred, df.test.labels)