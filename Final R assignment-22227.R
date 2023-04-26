data(iris)
head(iris)
str(iris)  
summary(iris)


library("ggplot2")

# Perform linear regression on petal length and width
model <- lm(Petal.Width ~ Petal.Length, data = iris)

# Print the summary of the model
summary(model)

# Make predictions on the training set
pred <- predict(model)

# Calculate root mean squared error (RMSE) on the training set
rmse <- sqrt(mean((iris$Petal.Width - pred)^2))

# Calculate coefficient of determination (R-squared)
rsq <- summary(model)$r.squared

# Print the evaluation metrics
cat("RMSE:", rmse, "\n")
cat("R-squared:", rsq, "\n")



# Visualize the results using ggplot2
library(ggplot2)

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(color = "darkblue", size = 2) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Linear Regression of Petal Length and Width", x = "Petal Length (cm)", y = "Petal Width (cm)") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5),
        axis.title = element_text(size = 12),
        axis.text = element_text(size = 10))


#Multiple Linear Regression

library(ggplot2)
model <- lm(Sepal.Length ~ Sepal.Width + Petal.Length + Petal.Width, data = iris)

summary(model)

ggplot(data = iris, aes(x = Petal.Length, y = Sepal.Length)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Multiple Linear Regression of Sepal Length", x = "Petal Length", y = "Sepal Length") +
  geom_smooth(aes(y = predict(model)), color = "blue", se = FALSE)





#Logistic  Regression
set.seed(123)
iris$setosa <- ifelse(iris$Species == "setosa", 1, 0)
model <- glm(setosa ~ Sepal.Length + Sepal.Width, data = iris, family = binomial)
summary(model)

# Load necessary libraries
library(pROC)
library(ggplot2)
library(ggpubr)

# Make predictions
pred <- predict(model, type = "response")

# Create confusion matrix
threshold <- 0.5
pred_class <- ifelse(pred > threshold, 1, 0)
conf_mat <- table(Actual = iris$setosa, Predicted = pred_class)
print(conf_mat)

library(ggplot2)
library(pROC)

# Generate some sample data
library(ggplot2)
library(pROC)

# Generate some sample data
set.seed(123)
actual <- sample(c(0, 1), 100, replace = TRUE)
predicted <- rnorm(100)

# Compute ROC curve
roc <- roc(actual, predicted)

# Compute AUC
auc <- round(auc(roc), 2)

# Extract coordinates from ROC curve
roc_coords <- coords(roc, "all")

# Create data frame from coordinates
roc_df <- data.frame(x = roc_coords[[1]], y = roc_coords[[2]])

# Plot ROC curve
roc_plot <- ggplot(data = roc_df, aes(x = 1 - x, y = y)) +
  geom_line(color = "#0072B2", size = 1.5) +
  geom_abline(intercept = 0, slope = 1, linetype = "dashed", color = "#D55E00") +
  ggtitle(paste0("ROC Curve (AUC = ", auc, ")")) +
  xlab("False Positive Rate (1 - Specificity)") +
  ylab("True Positive Rate (Sensitivity)") +
  theme(plot.title = element_text(size = 14, face = "bold", hjust = 0.5),
        axis.title = element_text(size = 12, face = "bold"),
        axis.text = element_text(size = 10),
        legend.position = "none")

# Display plot
roc_plot





#Poisson Regression
# Fit Poisson model
poisson_model <- glm(Species_int ~ Sepal.Length + Sepal.Width, data = iris, family = "poisson")

# Make predictions
predicted <- predict(poisson_model, type = "response")

# Create binary predictions based on a threshold
threshold <- 0.5
binary_predicted <- ifelse(predicted > threshold, 1, 0)

# Compute residual deviance
res_dev <- sum(dpois(iris$Species_int, lambda = predicted, log = TRUE))
res_dev

# Compute AIC
aic <- AIC(poisson_model)
aic

# Compute BIC
bic <- BIC(poisson_model)
bic










