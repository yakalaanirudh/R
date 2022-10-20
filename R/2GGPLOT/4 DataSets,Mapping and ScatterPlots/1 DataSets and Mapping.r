#In R we can create a graph without data and later insert data and the or change data and the graph will be updated

#We can insert data in two ways
#   1   In default
ggplot(data=myData,mapping=aes(x=A,y=C))
#By this the rest of the components(layers or plots we plot use this data and aesthetics to map)


#   2   For each layer
ggplot()+geom_point(data=myData,mapping=aes(x=A,y=C)
#In this only the geom point layer uses the Data to plot
#if we add another layer it cant access data in the geom_point layer


#Dont manipulate data in the aesthetics like dividing two variables to create a  third one to be used

#geom_smooth(se=FALSE)  It creates a smooth line for points


#In this graph a smooth line is created for each color
#Because since we give aesthetic color in default both geom_point and geom_smooth inherit it
ggplot(mpg,aes(displ,hwy,color=class))+geom_point()+geom_smooth(se=FALSE)


#In this graph a smooth line is created for all points combined
#Because since we give aesthetic color in geom_point both geom_point geom_smooth cannot inherit it
ggplot(mpg,aes(disp,hwy))+geom_point(aes(color=class))+geom_smooth(se=FALSE)


#ORDER OF ARGUMENTS
#First two arguments to ggplot are data and mapping
ggplot(data=NULL,mapping=aes())
#First two arguments to all layer functions are mapping and data
geom_line(mapping=NULL,data=NULL)


#DIFFERENCE BETWEEN MAPPING AND SETTING
