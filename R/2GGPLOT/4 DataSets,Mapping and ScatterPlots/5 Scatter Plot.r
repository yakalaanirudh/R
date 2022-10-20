#Scatter Plot=geom_point()

geom_point(
    mapping=NULL,
    data=NULL,
    stat="identity",            #No statistical transformation to data
    position="identity",        #Points drawn at specified location according to its co-ordinates
    na.rm=FALSE,
    show.legend=NA,
    inherit.aes=TRUE
)

#We can derive plots from scatter plot
#Connected Scatter plot         #If geom_line() is added
#Bubble Plot                    #If we map size of point to a third variable

library(dplyr)
library(ggplot2)
theme_set(theme_minimal())

humans=filter(starwars,species=="Human")

is.na(humans$mass)          #tells which rows have  a na    #It gives a vector wher etrue means we have an unavailable value

humans=humans[!is.na(humans$mass),]         #we remove all rows with na

#The below creates a scatter plot
ggplot(humans,aes(x=mass,y=height))+geom_point(size=4)


#Since there are mainy points we change opacity to view them clearly or we can use jitter
ggplot(humans,aes(x=mass,y=height))+geom_point(size=4,alpha=0.4)


#jitter moves the location of points slightly   #way 1
ggplot(humans,aes(x=mass,y=height))+geom_point(size=4,alpha=0.4,position="jitter")

#jitter moves the location of points slightly   #way 2
ggplot(humans,aes(x=mass,y=height))+geom_jitter(size=4,alpha=0.4)


#Do not use jitter and geom_jitter together as it will plot data twice
#ggplot(humans,aes(x=mass,y=height))+geom_point(size=4,alpha=0.4)+geom_jitter(size=4,alpha=0.4)


humans=muatate(humans,BMI=mass/(height/100)^2)              #Adds new column

ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI),size=4)

#The BMI column we created is a continuous data 
#   1   To color it we can define our own color gradient scale_color_gradient
ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI),size=4)+scale_color_gradient(low="green",high="red")


#   2   If we want to use a middle color(for data sets we have specify mid point) use scale_color_gradient2
ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI),size=4)+
scale_color_gradient2(low="green",mid="yellow",midpoint=22,high="red")


#   3   We ca use default gradients using scale_color_gradientn
#heat.colors(3) 3 is numbe rof colors to use which is redundant here as it is continuous data
ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI),size=4)+scale_color_gradientn(colors=heat.colors(3))
#To reverse the direction of palette using rev
ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI),size=4)+scale_color_gradientn(colors=rev(heat.colors(3)))


#   4   we can use our own palette
mypalette=c("royalblue","forestgreen","gold","darkorange","firebrick")
ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI),size=4)+scale_color_gradientn(colors=mypalette)




#FOR DISCRETE DATA
#In R we have  a function called cut which transforms continuous data to discrete data when we specify the ranges

humans$BMI_categories=cut(humans$BMI,breaks=c(0,18.5,25,30,35,Inf),
labels=c("Underweight","Normal","Overweight","Obese","Extremely Obese"),right=FALSE)

#The above adds a column named BMI_categories based on BMI at that break values with those names
#right=FALSE means the right(higher interval) is not included in the range


ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI_categories),size=4)


ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI_categories),size=4)+scale_color_manual(values=mypalette)
ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI_categories),size=4)+scale_color_manual(values=rev(heat.colors(5)))

#This adds alegend to the color palatte
ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI_categories),size=4)+
scale_color_manual(values=rev(heat.colors(5)),name="BMI")

#To add name from dataframe to the point
#But the names sseem to be cluttered
ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI_categories),size=4)+
scale_color_manual(values=rev(heat.colors(5)),name="BMI")+
geom_text(aes(label=name))

#We can install a package named ggrepel it will place names so that all can be seen
#repel means names repel off each other and margins(margins wont cut the names)
library(ggrepel)


ggplot(humans,aes(x=mass,y=height))+geom_point(aes(color=BMI_categories),size=4)+
scale_color_manual(values=rev(heat.colors(5)),name="BMI")+
geom_text_repel(aes(label=name))