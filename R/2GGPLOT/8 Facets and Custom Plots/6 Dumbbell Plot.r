ggplot(pres,aes(y=name))+
geom_point(aes(x=start))+geom_point(aes(x=end))+
geom_Segment(aes(x=start,xend=end,y=name,yend=name))

library(forcats)
pres$name=fct_reorder(pres$name,pres$start,.desc=T) #Reorder name by start date

#To color the bars
presedential.colors=c("Republican"="firebrick4","Democratic"="dodgerblue4")

ggplot(pres,aes(y=name,color=party))+
geom_point(aes(x=start))+geom_point(aes(x=end))+
geom_Segment(aes(x=start,xend=end,y=name,yend=name))