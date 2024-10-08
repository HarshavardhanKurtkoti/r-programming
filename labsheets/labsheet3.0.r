data()
data(mtcars)
head(mtcars,10)
nrow(mtcars)
ncol(mtcars)
dim(mtcars)
names(mtcars)
Data_Cars<-mtcars
rownames(Data_Cars)
Data_Cars$cyl
Data_Cars$hp
sort(Data_Cars$cyl)
sort(Data_Cars$cyl,decreasing=TRUE)
summary(Data_Cars)
max(Data_Cars)
min(Data_Cars)

head(PlantGrowth)
data(USArrests)

head(USArrests)
data(iris)
head(iris)
tail(iris)
names(iris)
unique(iris$Species)
summary(iris)