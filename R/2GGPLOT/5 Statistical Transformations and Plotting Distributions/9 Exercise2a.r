#Draw a box plot and add a layer to display mean too
library(viridis)
ggplot(mpg,aes(x=hwy,y=class))+geom_boxplot(aes(fill=class))

ggplot(mpg,aes(x=hwy,y=class))+geom_boxplot(aes(fill=class),show.legend=F,alpha=0.5,outliers,alpha=1)+
scale_fill_viridis(discrete=T)


#To add mean we add another layer geom point
#geom point deafult is identity we override it to mean
ggplot(mpg,aes(x=hwy,y=class))+geom_boxplot(aes(fill=class),show.legend=F,alpha=0.5,outliers,alpha=1)+
scale_fill_viridis(discrete=T)+
geom_point(stat="summary",fun="mean",shape=15)