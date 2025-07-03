input = read.csv("~/Desktop/contact_data.csv")
input

x = cor(input[,-1])
print(x)

pairs(input[,-1])

y = x[6,1:5]
print(y)

cnt = 1

while(cnt <= length(y)){
   if(y[cnt] > .5)
     print(y[cnt])
  cnt= cnt + 1
}

