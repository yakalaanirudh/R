library(viridis)            #It gives us a palette of colors to use in the graphs

library(dplyr)
library(ggplot2)
install.packages("babynames")       #Data packages
library(babynames)


baby=filter(babynames,name %in% c("Jessica","Natalie","Sarah"),sex=="F")

babyRange=filter(baby,year>1980,year<max(baby$year))     #Filter between 1980 and max year in baby


#A line for each name with different color
ggplot(babyRange,aes(x=year,y=n,group=name,color=name))+geom_line()


#A line for each name with different color  #But using viridis colors
ggplot(babyRange,aes(x=year,y=n,group=name,color=name))+geom_line()+scale_color_viridis(discrete=T)


#This adds points to the graph
ggplot(babyRange,aes(x=year,y=n,group=name,color=name))+geom_line()+scale_color_viridis(discrete=T)+geom_point()


#This changes line type from solid to dashed
ggplot(babyRange,aes(x=year,y=n,group=name,color=name))+geom_line(linetype="dashed")+scale_color_viridis(discrete=T)+geom_point()


#This changes size and opacity of points
ggplot(babyRange,aes(x=year,y=n,group=name,color=name))+geom_line(linetype="dashed")+
scale_color_viridis(discrete=T)+geom_point(size=3,alpha=0.5)