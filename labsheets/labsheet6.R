sales_data=read.csv("sales_data.csv")
sales_data
library(dplyr)
str(sales_data)
head(sales_data)
glimpse(sales_data)
summary(sales_data)
summarize_all(sales_data,-sum(is.na(.)))
sales_data<-distinct(sales_data)
sales_data

head(sales_data)
filtered_data<-subset(sales_data,revenue>1000)
head(filtered_data)

arranged_data<-sales_data[order(sales_data$data),]
head(arranged_data)
grouped_data<-sales_data%>%

grouped_data1<-sales_data%>%
  group_by(category)%>%
  summarise(total_revenue=sum(revenue))
grouped_data1

df1<-data.frame(ID=1:5,Name=c("Alice","bob","charlie","david",""))
df2<-data.frame(ID=3:7,Score=c(95,87,78,91,82))
df1
df2
df2 


