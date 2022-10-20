library(viridis)            #It gives us a palette of colors to use in the graphs

library(dplyr)
library(ggplot2)
install.packages("babynames")       #Data packages
library(babynames)


baby=filter(babynames,name %in% c("Anna","Emma","Clara"),sex=="F")

ggplot(baby,aes(x=year,y=n))+geom_line()        #This does not plot a line for every name

ggplot(baby,aes(x=year,y=n,group=name))+geom_line()     #We have one line for each name

ggplot(baby,aes(x=year,y=n,group=name,color=name))+geom_line()+scale_color_viridis()
#scale_color_viridis()          #The scale color is continuous but our data is discrete

ggplot(baby,aes(x=year,y=n,group=name,color=name))+geom_line()+scale_color_viridis(discrete=T)
#The above plots a line graph with each line having different color (a line for each name)


#We can also the graph from plot in bottom right export to we can choose use cairo device in the drop down after