setwd("C:\\Users\\it24100500\\Desktop\\IT24100500")
branch_data <- read.csv("Exercise.txt", header = TRUE)
boxplot(branch_data$Sales_X1, main = "Boxplot of Sales", ylab = "Sales_X1")
fix(branch_data)

# Calculate the five-number summary
summary_ad <- summary(branch_data$Advertising_X2)
print(summary_ad)

# Calculate the IQR
iqr_ad <- IQR(branch_data$Advertising_X2)
print(paste("IQR for Advertising_X2:", iqr_ad))


# Function to find outliers in a numeric vector
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

# Check for outliers in the 'Years_X3' variable
outliers_years <- find_outliers(branch_data$Years_X3)

# Print the results
if (length(outliers_years) == 0) {
  print("No outliers found in the 'Years' variable.")
} else {
  print("Outliers found in the 'Years' variable:")
  print(outliers_years)
}

