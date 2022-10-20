#Plotting Overview

#Scatter Plot
data(mtcars)
plot(x=mtcars$hp,y=mtcars$wt)           #Gives a scatter plot
plot(x=mtcars$hp,y=mtcars$wt,main='Scatter PLot of hp vs wt')           #Gives Title


#Bar Plot
count_cyl=table(mtcars$cyl)             #Gives  a table with how many cars for 4,6,8 cylinders

barplot(count_cyl,main="Count of Cars by number of cylinders")          

barplot(count_cyl,main="Count of Cars by number of cylinders",
xlab="Number of Cylinders",ylab="Count of cars", col=c('darkred','green','orange'))#Adds x and y axis labels and gives color to bars


#Box Plot
boxplot(hp~gear,data=mtcars,main="Boxplot of gear vs hp")
#Shows max,75th percentile,median,25th percentile,min


#Histograms
hist(x=mtcars$hp,color=c('darkgreen'),bars=20,main="Histogram of horsepower")              #bars are the intervals region



#GGPLOT
install.packages('ggplot2')
library(ggplot2)

#GGPLOT we plot by two steps
#ggplot(data=mtcars,aes(x=hp))      #This is the data we want to plot   #In aes we give axis
#geom_histogram()                   #This is what graph we want to plot with that data

#It plots a histogram
ggplot(data=mtcars,aes(x=hp))+geom_histogram()

#Plots a scatter graph
ggplot(data=mtcars,aes(x=hp,y=wt))+geom_point()


#In histogram inside color is salmon and border color is black
ggplot(data=mtcars,aes(x=hp))+geom_histogram(fill='salmon',color='black')

#The size of bar gets bigger only viewavle size not interval of data
ggplot(data=mtcars,aes(x=hp))+geom_histogram(fill='salmon',color='black',binwidth=50)

#It changes to scatter plot
ggplot(data=mtcars,aes(x=hp,y=wt))+geom_histogram(color='black')