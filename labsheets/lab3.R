data=read.csv(file.choose())
data=read.csv("sales_data.csv")
library(dplyr)
str(sales_data)

summary(sales_data)

summarise_all(sales_data,~sum(is.na(.)))

sales_data<-sales_data %>%
  na.omit()

sales_data<-distinct(sales_data)

cal_data<-sales_data$price
min(cal_data)
max(cal_data)
min_max<-(cal_data-min(cal_data))/(max(cal_data)-min(cal_data))
min_max
mean(cal_data)
sd(cal_data)

z_score<-cal_data-mean(cal_data)/sd(cal_data)
z_score
median(cal_data)
robust<-cal_data-median(cal_data)/(quantiled(cal_data.probs=.75)-quantile(cal_data.probs))
robust

calcR_data<-sales_data$revenue
min(calcR_data)
max(calcR_data)
min_max(calcR_data-min(calcR_data))/(max(calcR_data)-min(calcR_data))
