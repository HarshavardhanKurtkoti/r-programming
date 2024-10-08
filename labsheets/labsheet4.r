v<-c(2,4,5,6,4,3,7,8,9,3,5,6)
hist(v,xlab="weight",col="blue",border="red")
v<-c(2,4,5,6,4,3,7,8,9,3,5,6)
hist(v,xlab="No of Articles",
     col="green",border="yellow")
v<-c(2,4,5,6,4,3,7,8,9,3,5,6)
hist(v,xlab="No of Articles",col="green",
     border="grey",xlim=c(0,50),
     ylim=c(0,5),breaks=5)
str(airquality)
Temperature<-airquality$Temp
hist(Temperature)
hist(Temperature,
     main="Maximum daily temperature at La Guardia Airport",
     xlab="Temperature in degrees Fahrenheit",
     xlim=c(50,100),
     col="darkmagenta",
     freq=FALSE
     )
input<-mtcars[,c('mpg','cyl')]
print(head(input))
data(mtcars)
boxplot(disp~gear,data=mtcars,
        main="Displacement by gear",
        xlab="gear",
        ylab="displacement")
data<-read.csv(file.choose())

