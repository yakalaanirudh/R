#We have to specify a co-ordinate system for our plot

#Cartesian Co-ordinate System       #It is deafult
coord_cartesian()
#It can be modified with
coord_flip()
coord_fixed()
coord_map()
coord_trans()


#Polar Co-ordinate System
coord_polar()


#Cartesian Co-ordinate System
p=ggplot(mtcars,aes(x=mpg,y=hp))+geom_point()+geom_smooth() #It polts a cartesian graph
p+coord_cartesian()                                         #It polts a cartesian graph beacuse it is default(No change)



#xlim,ylim
#To zoom-in and out of a plot we can use
p+scale_x_continuous(limits=c(15,20))
#The above zooms in on graph between x coordinates 15 and 20
#But the issue with this is it is not zooming in but R cuts the rest of the graph(it is gone)

#To avoid this we can use
p+coord_cartesian(xlim=c(15,20))        #This just zooms in on that part without removing rest of the part



#expand
#It allows a small area after the limits so that we can see all data(data wont overlap with axis)
p+coord_cartesian(expand=F)         #F      it will overlap



#clip
p+coord_cartesian(expand=F,clip="off")          #Now the points overlap but will be completely visible over axis
p+coord_cartesian(expand=F,clip="on")           #Now the point beyond axis will be sliced off (We will see part of point only)



#coord_flip()
#It flips y axis and x axis