data(iris)

lm_model <- lm(Sepal.Length ~ Sepal.Width, data= iris)

summary(lm_model)


new_data <- data.frame(Sepal.Width = c(2, 2.1, 3.2))
predictions <- predict(lm_model, new_data, interval = "confidence")
predictions


plot(iris$Sepal.Width, iris$Sepal.Length, 
     pch = 19, col = "blue", 
     xlab = "Sepal Width", ylab = "Sepal Length",
     main = "Linear Regression: Sepal length and width")
abline(lm_model, col = "red", lwd = 2)