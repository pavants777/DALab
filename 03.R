airqual <- airquality
summary(airqual)

airqual[!complete.cases(airqual),]
boxplot(airqual)

boxplot(airqual$Ozone, horizontal = TRUE)
boxplot(airqual$Wind, horizontal = TRUE)

update_airqual = subset(airqual,  Ozone < 170 & Wind < 17)
boxplot(update_airqual)

airqual$Ozone[is.na(airqual$Ozone)] <- mean(update_airqual$Ozone)
summary(airqual)
airqual$Solar.R[is.na(airqual$Solar.R)] <- mean(update_airqual$Solar.R,na.rm = TRUE)
summary(airqual)

data_airquality=subset(airqual,Ozone<70 & Wind<17)
boxplot(data_airquality)
nrow(data_airquality)
data_airquality=subset(airqual,Ozone<70 & Wind<17 & Wind>2)
boxplot(data_airquality)
