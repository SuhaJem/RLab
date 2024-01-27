library(dplyr)
library(readr)

# Customer data
customer_data <- data.frame(
  customer_id = c(1, 2, 3, 4, 5),
  name = c("A", "A", "C", "D", "E"),
  purchase_amount = c(100, 20, 10, 60, 80)
)

print(customer_data)

# Calculate the number of records and unique customers
num_records <- nrow(customer_data)
num_unique <- length(unique(customer_data$customer_id))

print(num_records)
print(num_unique)

# Calculate the statistical analysis
mean1 <- mean(customer_data$purchase_amount)
median1 <- median(customer_data$purchase_amount)
std1 <- sd(customer_data$purchase_amount)

cat("\nMean:", mean1)
cat("\nMedian:", median1)
cat("\nStandard Deviation:", std1)
cat("\n")

# Task 4: Create a segment based on purchase amount
customer_data <- customer_data %>% 
  mutate(segment = ifelse(purchase_amount < median1, "Low spender", "High spender"))

print(customer_data)

# Visualize the data
hist(customer_data$purchase_amount, main = "Distribution of Purchase Amounts", xlab = "PurchaseAmount", col = "blue")
