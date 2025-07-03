library(arules)
library(arulesViz)
SupMarTra <- read.csv("~/Downloads/snackitems_yes_no.csv",header = TRUE)
SupMarTra

summary(SupMarTra)
dim(SupMarTra)
length(SupMarTra)

rules <- apriori(SupMarTra,parameter = list(minlen = 2, maxlen = 5,supp= .5, conf = .8), appearance = list(none = c("I1=NO","I2=NO","I3=NO","I4=NO","I5=NO")))
inspect(rules)

write(rules, file = "~/Desktop/data.csv", sep = ",")
plot(rules)
sum(duplicated(labels(rules))) 
rules_unique <- rules[!duplicated(labels(rules))]

plot(rules_unique, method = "grouped")
plot(rules, method = "graph")
plot(rules, method = "graph", control = list(type = "items"))

