data=read.csv(file.choose())
data

summary(data)

scatter<-data[c('quantity','revenue')]
scatter
plot(scatter,main="relationship between quantity and revenue")

category_counts<-table(data$category)
#pie_chart<-ggplot(data=as.data.frame(category_counts),aes(x="",y=Freq,fill=var1))+
#  geom_bar(stat="identity")+
#  coord_polar(theta="y")+
 # labs(title="Percentage Distribution of Products by Category")
#print(pie_chart)      
pie(category_counts)

    