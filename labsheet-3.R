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

#Apply Min-Max scaling(Normalization to a range of[0,1])
cal_data<-sales_data$price
min(cal_data)
max(cal_data)

min_max<-(cal_data-mean(cal_data))/(max(cal_data)-min(cal_data))
min_max
mean(cal_data)
sd(cal_data)

#Apply Z-score Normalization (Standardization with mean=0 and std=1) and display the output
z_score<-cal_data-mean(cal_data)/sd(cal_data)
z_score

median(cal_data)