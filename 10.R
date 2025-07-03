df_data = read.csv("~/Desktop/exam_data.csv")
df_data

attach(df_data)
plot(hours,score)
boxplot(score)

model <- lm(hours~score, data = df_data)
model

res <- resid(model)
fitted_val <- fitted(model)

plot(fitted_val,res)
abline(h = 0, col = "red")

qqnorm(res,main="Normal Q-Q plot")
qqline(res, col = "red")
