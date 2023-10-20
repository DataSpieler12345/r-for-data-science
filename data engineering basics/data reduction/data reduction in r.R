# Cargar el conjunto de datos iris
data(iris)

# Verificar que el conjunto de datos se ha cargado correctamente
head(iris)

# summary
summary(iris)

#create a dataset
d <-iris[,-5]

# calculate the pcr
pc <-prcomp(d, scale.= TRUE)

#summary pc
summary(pc)
plot(pc)
plot(pc, type="line")

# create another dataset
d2 <- cbind(iris, pc$x[,1:2])
head(d2)

#create a ggplot
if (!require("ggplot2")) install.packages("ggplot2")
library(ggplot2)
ggplot(d2, aes(PC1, PC2, col=Species, fill=Species))+
  geom_point(shape="o")+
  stat_ellipse(geom="polygon", alpha=0.5)
