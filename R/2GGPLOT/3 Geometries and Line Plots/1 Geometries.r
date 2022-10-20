#Geometries control the type of plot we want to create

library(ggplot2)
p=ggplot(data=mpg,mapping=aes(x=displ,y=hwy))   #Now only a graph is displayed with no points in it

p+geom_point()              #Now every value is mapped to a point
p+geom_line()               #Now every value is mapped and a line is formed connecting all (points are not highlighted)
#Geom line plots a line in the order they appear on the graph
p+geom_point()+geom_line()  #Now a line and points are highlighted  #This is a connected scatter plot

geom_path()                 #Is similar to geom line but it plots points in order they appear in the data frame

geom_bar()                  #It needs only y values(aesthetics)


p=ggplot(data=mpg,mapping=aes(x=displ,y=hwy))+geom_point(shape=8,size=4)