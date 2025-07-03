x = women$height
y = women$weight

print(cor(x,y))

plot(x,y,main = "Corelation x and y", pch = 19,frame = FALSE)

x <- c(1,2,3,4,5,6,7,8,9)
y <- c(9,8,7,6,5,4,3,2,1)

print(cor(x,y))

plot(x,y,main="Main Plot Graph", pch = 19, frame = FALSE)
