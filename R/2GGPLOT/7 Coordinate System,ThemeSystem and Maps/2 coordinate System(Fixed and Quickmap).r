#coord_fixed()
##It keeps the plot in that proportion(Aspect ratio) no matter the exporting size to another format

#ratio y/x in graph

x=1:10
y=1:10
df=data.frame(x,y)
ggplot(df,aes(x,y))+geom_point()        #When we export it we can choose the size of x and y values of graph

#The below is a square plot
#Now we can change dimensions when we export it will be same as graph that is shown
ggplot(df,aes(x,y))+geom_point()+coord_fixed(ratio=1)  

#The below will be a long length less height mao as y is reduced by 10
ggplot(df,aes(x,y/10))+geom_point()+coord_fixed(ratio=1)

#If we want it to make a square map
ggplot(df,aes(x,y/10))+geom_point()+coord_fixed(ratio=10)


#coord_map() and coord_quickmap() are used to plot maps in R

#coord_quickmap()
#Used for   smaller areas
#Works best for areas close to equator


#coord_map()
#Used for   larger areas too
#Works best for areas anywhere on earth
#But it is costly to compute takes more time

