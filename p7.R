# load the libraries
library(ggplot2)
library(dplyr)

# customer data 
purchase_data<- data.frame(
  customer_id = c(1,2,3,4,5,6,7,8,9,10),
  purchase_amount =c(100,200,300,400,500,600,700,800,900,1000)
)
print(purchase_data)

# calaculate and display the statistics 
mean1<- mean(purchase_data$purchase_amount)
median1<- median(purchase_data$purchase_amount)
st_d<-sd(purchase_data$purchase_amount)
q1<- quantile(purchase_data$purchase_amount, 0.25 )
q2 <- quantile(purchase_data$purchase_amount, 0.75)

# display the result,
cat("\n Mean :", mean1)
cat("\n Meadian:", median1)
cat("\n Standard deviation :", st_d)
cat("\n1st quartile", q1)
cat("\n2nd quartile", q2)

# create a histogram 
histogram<- ggplot( purchase_data, aes(x= purchase_amount))+
  geom_histogram(binwidth=50 , fill=" skyblue", color= " black")+labs(title="distribution of purchase amount", x= " Purchase amount", y="Frequency")
print(histogram)

