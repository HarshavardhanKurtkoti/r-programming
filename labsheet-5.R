#Load the Data
df <- read.csv("sales_data.csv")

#check the data structure
str(df)

#summary
summary(df)

#Scatter plot

forscatterplot <- df[c('quantity','revenue')]
plot(forscatterplot,xlab = "Quantity", ylab = "Revenue",main = "Scatter Plot: Quantity vs Revenue")

#barplot
library(ggplot2)
total_revenue_by_category <- sales_data %>%
  group_by(category) %>%
  summarise(total_revenue = sum(revenue))

ggplot(total_revenue_by_category, aes(x = category, y = total_revenue, fill = category)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Revenue by Category", x = "Category", y = "Total Revenue") +
  theme_minimal() +
  theme(legend.position = "none")


#Line plot
plot(df$date, df$revenue, 
     type = "l",  # "l" stands for line plot
     xlab = "Date", 
     ylab = "Revenue", 
     main = "Line Plot: Revenue Over Time", 
     col = "blue")
  
