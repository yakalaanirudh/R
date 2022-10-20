#In this graph
#class of vehicle on x axis
#highway fuel consumption on y axis
#we also calculate and plot the avg for each class of vehicle
#we also label number of acrs in each class

library(ggplot2)
library(dplyr)

#summarise allows us to group mpg dataset by class column
#then we create two different coulmns
#n -number of vehicles(data points) in each class
#hwy=we calculate mean of the field(mpg) for vehicles in that class
class_info=summarise(group_by(mpg,class),n=n(),hwy=mean(hwy))

#This just plots the graph,there is overlapping
ggplot(data=mpg,aes(x=class,y=hwy))+geom_point()


#To prevent overlapping we use jitter
ggplot(data=mpg,aes(x=class,y=hwy))+geom_point(position="jitter",alpha=0.4)


#we add the avg values we calculated
ggplot(data=mpg,aes(x=class,y=hwy))+geom_point(position="jitter",alpha=0.4)+
geom_point(data=class_info,color="red",size=4)


#we add names to the points(here number of vehicles in that class)
ggplot(data=mpg,aes(x=class,y=hwy))+geom_point(position="jitter",alpha=0.4)+
geom_point(data=class_info,color="red",size=4)+geom_text(data=class_info,aes(label=n))


#we displace the number downwards by 5(the label appears just numbers like 5 7)
ggplot(data=mpg,aes(x=class,y=hwy))+geom_point(position="jitter",alpha=0.4)+
geom_point(data=class_info,color="red",size=4)+geom_text(data=class_info,aes(label=n,y=5))


#the label appears like n=5 n=7
ggplot(data=mpg,aes(x=class,y=hwy))+geom_point(position="jitter",alpha=0.4)+
geom_point(data=class_info,color="red",size=4)+geom_text(data=class_info,aes(label=paste0("n="n),y=5))



#We want color to affect two layers one from points and other from average
#The second layers inherits it so we remove red
ggplot(data=mpg,aes(x=class,y=hwy,color=class))+geom_point(position="jitter",alpha=0.4)+
geom_point(data=class_info,size=4)+geom_text(data=class_info,aes(label=paste0("n="n),y=5))


#but geomtext has also inherited color so we override it
ggplot(data=mpg,aes(x=class,y=hwy,color=class))+geom_point(position="jitter",alpha=0.4)+
geom_point(data=class_info,size=4)+geom_text(data=class_info,aes(label=paste0("n="n),y=5,color=NULL))


#Adding labels
ggplot(data=mpg,aes(x=class,y=hwy,color=class))+geom_point(position="jitter",alpha=0.4)+
geom_point(data=class_info,size=4)+geom_text(data=class_info,aes(label=paste0("n="n),y=5,color=NULL))+
labs("title"="Fuel consumption per class of vehicle",x="class of vehicle",y="Highway fuel consumption")