install.packages("arules")
install.packages("arulesViz")

library(arules)
library(arulesViz)
data("Groceries")
summary(Groceries)

# Apriori Algorithm

rules <- apriori(Groceries, parameter = list(support=0.001, confidence=0.75))
options(digits = 2)
inspect(rules[1:10])

# lets do some analysis by using some visualizations
plot(rules, jitter = 0)

plot(rules, method ="grouped")
plot(rules[1:20], method ="graph", control=list(type="items"))

#rules2
rules2 <- apriori(Groceries, parameter = list(support=0.002, confidence=0.5))
plot(rules2, method ="grouped")

# rule3
rules3 <- apriori(Groceries, parameter = list(support=0.006, confidence=0.5))
plot(rules3, method ="grouped")
