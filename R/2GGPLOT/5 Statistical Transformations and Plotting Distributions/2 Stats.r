#   1   stat_smooth(geom_smooth) 

ggplot(mpg,aes(x=cty,y=hwy))+geom_point()   #This plots a scatter plot

ggplot(mpg,aes(x=cty,y=hwy))+geom_point() +geom_smooth()    #This adds a smooth approximation (line) to the scatter plot


library(nlme)


#The below plot has multiple lines
ggplot(0xboys,aes(x=age,y=height,group=subject))+geom_line()

#If we add a geom smooth it adds a smooth line to every line
#This is because geom_smooth inherits group from default and plots for every line
ggplot(0xboys,aes(x=age,y=height,group=subject))+geom_line()+geom_smooth()

#But if w e want a smooth approximation of all lines in a single line
#So we place group in geom_line
ggplot(0xboys,aes(x=age,y=height))+geom_line(group=subject)+geom_smooth()



#   2   stat_unique(geom_point)
#It removes all duplicate points

ggplot(mpg,aes(x=cty,y=hwy))+geom_point()
ggplot(mpg,aes(x=cty,y=hwy))+geom_point(alpha=0.3)

#It can be done in two ways(to remove duplicates)
#1
ggplot(mpg,aes(x=cty,y=hwy))+stat_unique()
ggplot(mpg,aes(x=cty,y=hwy))+stat_unique(alpha=0.3)

#2
ggplot(mpg,aes(x=cty,y=hwy))+geom_point(alpha=0.3,stat="unique")


#   3   stat_summary(geom_pointrange)
#It takes a function as input and calculates mean,max,min of some set of values

ggplot(mpg,aes(x=cty,y=hwy))+stat_summary() #Since we did not soecify any function it defaults to mean_se   (mean_standard error)

#Thw below graph plots all points and another layer plots the avg for that class on the graph
ggplot(mpg,aes(x=cty,y=hwy))++geom_point(alpha=0.3,position="jitter")+stat_summary(fun=mean)     #this just calculates mean

#we can also do this through
ggplot(mpg,aes(x=cty,y=hwy))++geom_point(alpha=0.3,position="jitter")+geom_point(stat="summary",fun="mean")
