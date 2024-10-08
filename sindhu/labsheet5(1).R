higest_revenue<-mac(total_revenue_by_category$total_revenue)


cat("Category with the highest revenue:",category_with_highest_revenue," ")
cat("Revenue generated:"),highest_revenue,"\n")
print(product_with_highest_revenue)

sales_data$quater <-quarters(as.Date(sales_data$date,format="%d-%m-%Y"))

total_revenue_per_quarter <- sales_data %>%
  group_by(quarter) %>%
  summarize(total_revenue=sum(revenue))
