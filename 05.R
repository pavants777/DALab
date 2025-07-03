x <- data.frame( 
  name = c("Bala","Ganesh","Geevan"),
  age = c(43,38,42),
  education = c(2.0,4.2,4.1)
)

print(x)

attach(x)

age
education 

M1 <- matrix(c(age,education),nrow = 3, byrow = FALSE)
print(M1)
E1 <- dist(M1,method = "euclidean")
print(E1)

ageD = age/10
print(ageD)
