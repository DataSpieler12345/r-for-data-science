install.packages("depmixS4")
library(depmixS4)

data(speed)
write.csv(speed, file = "speed.csv", row.names = FALSE)
file_path <- file.path(getwd(), "speed.csv")
file_path

str(speed)

plot(ts(speed[, 1:3]), main = "speed data")


##### Models

model1 <- depmix(list(rt ~ 1, corr ~ 1),
                 data = speed,
                 nstates = 1,
                 family = list(gaussian(), multinomial("identity")))
fm1 <- fit(model1, verbose = FALSE)

model2 <- depmix(list(rt ~ 1, corr ~ 1),
                 data = speed,
                 nstates = 2,
                 family = list(gaussian(), multinomial("identity")),
                 transition = ~ scale(Pacc),
                 ntimes=c(168, 134, 137))
fm2 <- fit(model2)

model3 <- depmix(list(rt ~ 1, corr ~ 1),
                 data = speed,
                 nstates = 3,
                 family = list(gaussian(), multinomial("identity")),
                 transition = ~ scale(Pacc),
                 ntimes=c(168, 134, 137))
fm3 <- fit(model3)

# calculate the bic
plot(1:3, c(BIC(fm1), BIC(fm2), BIC(fm3)),ty = "b", xlab = "Model", ylab = "BIC")


