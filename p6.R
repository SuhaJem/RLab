library(forecast)
library(ggplot2)

# create a data frame 
sales_data <- data.frame(
  Month = seq(as.Date("2023-01-01"), as.Date("2023-12-01"), by = "month"),
  sales = c(1000, 2000, 3000, 4000, 5000, 6000, 5000, 6000, 1200, 6333, 12000, 589999)
)

# Print the sales_data data frame
print(sales_data)

# Convert sales data into time series data 
sales_ts <- ts(sales_data$sales, frequency = 12)
print(sales_ts)

# Fit an ARIMA model
arima_model <- auto.arima(sales_ts)

# Forecast the sales for the next twelve months 
sales_forecast <- forecast(arima_model, h = 12)

# Plot the graph 
plot(sales_forecast)

