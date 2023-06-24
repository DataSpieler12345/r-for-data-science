# Data Frame: a data frame is used to store the data in the form of table 
#We use the data.frame() function to create a data frame

#Example

BMI <- data.frame(
  gender = c("Male","Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81, 83, 78),
  Age = c(42, 38, 26)
)
print(BMI)


#Examples

name  <- c("German","Paola","Fabio","Socorro","Channel")
name
class(name)

age <- c(28,30,31,38,35)
children <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
df <- data.frame(name,age,children)
df


df <- data.frame(Name=name, Age=age, Children=children)
df
str(df)

df <- data.frame(name,age,children,stringsAsFactors=FALSE)
df
str(df)

#sub-setting a data frame 
df

df[3,2]

df[3, "age"]

df[3,]

df["age"]

df[c(3,5), c("age","children")]
df[2]

df$age
df[["age"]]
df["age"]

# adding columns
df

# add height
height <- c(163,177,163,162,157)
df$height <- height
df


# add weight
weight <- c(75,65,54,34,78)
cbind(df,weight)
df



