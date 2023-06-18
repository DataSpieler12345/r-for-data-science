# Call the Library to use it
library(readxl)

install.packages("plyr")
library(plyr)

StudentClass <- read_excel("Studentclass.xlsx")

# Viewing the data
View(StudentClass )

# field list
str(StudentClass)

# rename the field age to Age
StudentClass <- rename(StudentClass, c("i..Name" = "Name"))
str((StudentClass))
View(StudentClass)

# summary
summary(StudentClass)

# predict model with weight / height
results <- lm(formula = Weight ~ - Height, data = StudentClass)
results

results1 <- lm(formula = StudentClass$Weight ~ StudentClass$Height)
results1

summary(results)
