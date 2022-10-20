#A boxplot plots median and where most data is placed,whiskers(lines) where less data and outliers in form of ...
#geom_boxplot()

ggplot(mpg,aes(x=class,y=hwy))+geom_boxplot()
ggplot(mpg,aes(x=class,y=hwy))+geom_boxplot(width=0.4)      #To reduce width so all boxes are more seperated
ggplot(mpg,aes(x=class,y=hwy))+geom_boxplot(varwidth=T)     #the width of individual box plot is proportioanl to number of observations


#Colors it but it also displays a legend for each plot
ggplot(mpg,aes(x=class,y=hwy))+geom_boxplot(aes(fill=class))

#To remove legend
ggplot(mpg,aes(x=class,y=hwy))+geom_boxplot(aes(fill=class),show.legend=F)

#But this lightens outliers too making them difficult to view
ggplot(mpg,aes(x=class,y=hwy))+geom_boxplot(aes(fill=class),show.legend=F,alpha=0.3)


ggplot(mpg,aes(x=class,y=hwy))+geom_boxplot(aes(fill=class),show.legend=F,alpha=0.3,outlier.alpha=1)


#Instead of . outliers will now have the shape x
ggplot(mpg,aes(x=class,y=hwy))+geom_boxplot(aes(fill=class),show.legend=F,alpha=0.3,outlier.alpha=1,outlier.shape=4)

#No outliers visible
ggplot(mpg,aes(x=class,y=hwy))+geom_boxplot(aes(fill=class),show.legend=F,alpha=0.3,outlier.alpha=1,outlier.shape=NA)

library(viridis)    #Colors library

ggplot(mpg,aes(x=class,y=hwy))+geom_boxplot(aes(fill=class),show.legend=F,alpha=0.3,outlier.alpha=1,outlier.shape=NA)+
scale_fill_viridis(discrete=T)


#Reverse Orientation
ggplot(mpg,aes(y=class,x=hwy))+geom_boxplot(aes(fill=class),show.legend=F,alpha=0.3,outlier.alpha=1,outlier.shape=NA)+
scale_fill_viridis(discrete=T)


library(forcats)

#If we want the classes to ordered by value of mediam
ggplot(mpg,aes(y=fct_reorder(class,hwy, .fun=median),x=hwy))+
geom_boxplot(aes(fill=class),show.legend=F,alpha=0.3,outlier.alpha=1,outlier.shape=NA)+
scale_fill_viridis(discrete=T)


#In reverse order
ggplot(mpg,aes(y=fct_reorder(class,hwy,.fun=median, .desc=T),x=hwy))+
geom_boxplot(aes(fill=class),show.legend=F,alpha=0.3,outlier.alpha=1,outlier.shape=NA)+
scale_fill_viridis(discrete=T)