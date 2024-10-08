x<-c(10,20,30,40)
pie(x,init.angle=90)
x<-c(10,20,30,40)
mylabel<-c("Apple","Banana","Mango","Cherry")
pie(x,label=mylabel,main="Fruits")
colors<-c("pink","blue","grey","black")
pie(x,label=mylabel,main="Fruits",col=colors)
legend("bottomright",mylabel,fill=colors)
temperatures<-c(22,27,26,24,23,26,28)
result<-barplot(temperatures,
main="Maximum Temperatures in a week",
xlab="Degree Celsius",
ylab="Day",
names.arg=c("Sun","Mon","tue","wed","thu","fri","sat"),
col=c("pink","grey","blue","black","green","red","yellow"),
density=c(5,10,15,20,25,30,35),
horiz=TRUE
)
print(result)

titanic_data<-matrix(c(112,234,435,657,689,345,355,576),
                    nrow=2,ncol=4)
titanic_data
result<-barplot(titanic_data,
                main="Survival of each class",
                xlab="class",
                names.arg=c("1st","2nd","3rd","crew"),
                col=c("blue","green")
                )
legend("topleft",
       c("Not survived","Survived"),
       fill=c("pink","grey")
       )
print(result)

v<-c(3,54,43,59,9,6,88,8,9,3,7)
hist(v,xlab="wight",col="grey",border="pink")
v<-c(23,56,53,23,4,67,90,12,3,33,4)
hist(v,xlab="No.of articles",
     col="skyblue",border="pink")