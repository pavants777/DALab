LungCapData = read.csv("~/Desktop/LungCap.csv",header = TRUE)
LungCapData

LungCapData <- data.frame(LungCapData)
LungCapData

summary(LungCapData)
attach(LungCapData)
AgeGroup <- cut(LungCapData$Age..years., breaks = c(0,13,15,17,25),labels = c("<=13","14/15","16/17",">=25"))

AgeGroup

boxplot(LungCapData$LungCap.cc.~LungCapData$Smoke, ylab = "Capacity")
boxplot(LungCapData$LungCap.cc.[LungCapData$Age..years.>=18]~LungCapData$Smoke[LungCapData$Age..years.>=18])
boxplot(LungCapData$LungCap.cc.~LungCapData$Smoke*AgeGroup,col=c(4,2),)
