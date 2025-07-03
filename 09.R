data('iris')
str(iris)
summary(iris)


set.seed(100)
rnum = sample(1:150)
iris = iris[rnum,]
head(iris)

normalize = function(x) {
  return ((x - min(x))/max(x) - min(x))
}

iris.new = as.data.frame(lapply(iris[,1:4],normalize))

iris.train = iris.new[1:130,]
iris.train.target = iris[1:130,5]
iris.test = iris.new[130:150,]
iris.test.target = iris[130:150,5]
library(class)
model <- knn(
  train = iris.train,
  test = iris.test,
  cl = iris.train.target,
  k = 16,
)
model

table(iris.test.target,model)

accuracy = sum(model == iris.test.target) / length(iris.test.target)
accuracy
