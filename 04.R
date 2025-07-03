data("iris")
summary(iris)

set.seed(111)
ind <- sample(2,nrow(iris),replace = TRUE,prob = c(0.8,0.2))
ind
traning <- iris[ind == 1,]
testing <- iris[ind == 2,]

library(psych)
pairs.panels(traning[,-5],gap = 0,bg = c("red", "yellow", "blue")[traning$Species],pch=21)

pc <- prcomp(traning[,-5],center = TRUE, scale = TRUE)
attributes(pc)
pc$center
pc$scale

summary(pc)
print(pc)
