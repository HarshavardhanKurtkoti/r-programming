# load the data
sales_data=read.csv("sales_data.csv")

#Data exploration
library(dplyr)

#check the data structure
str(sales_data)

#summary statistics
summary(sales_data)

#check the missing values
summarize_all(sales_data,~sum(is.na(.)))

#remove rows with missing values
sales_data<-sales_data %>%
  na.omit()

sales_data<-distinct(sales_data)

#check the clean data
summary(sales_data)

#calculate the total revenue
total_revenue <- sales_data %>% summarise(sum(revenue))
total_revenue

#calculate the revenue by group
total_revenue_by_product <- sales_data %>%
  group_by(product) %>%
  summarise(total_revenue_by_product = sum(revenue))
total_revenue_by_product

#Find the product with the highest revenue 
highest_revenue <- total_revenue_by_product %>%
  filter(total_revenue_by_product == max(total_revenue_by_product))
highest_revenue

  ind the product with the highest revenue 
average_price <- sales_data %>%
  summarise(average_price = mean(price))
average_price

#What was the total quantity of products sold by the company? 
total_quantity_sold <- sales_data %>%
  summarise(total_quantity_sold = sum(quantity))
total_quantity_sold


#Which category had the highest revenue? How much revenue did it generate? 

total_revenue_by_category <- sales_data %>%
  group_by(category) %>%
  summarise(total_revenue = sum(revenue))
total_revenue_by_category


highest_revenue_category <- total_revenue_by_category %>%
  filter(total_revenue == max(total_revenue))
print(highest_revenue_category)

#What was the average revenue per sale? 

vector <- c(1,2,3,4)
vector[2]

a<-1:10
b<- seq(1,10)


set.seed(123)

runif(1)
matrix(1:9, nrow=3, ncol=3)
