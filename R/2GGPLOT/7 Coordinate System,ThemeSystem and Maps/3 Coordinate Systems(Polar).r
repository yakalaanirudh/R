#Polar coordinate system
#coord_polar()

ggplot(mpg,aes(x=displ))+geom_bar()                     #A bar plot
ggplot(mpg,aes(x=displ))+geom_bar()+coord_polar()         #A bar plot in polar coordinate system


#Parameters
#theta      
ggplot(mpg,aes(x=displ))+geom_bar()+coord_polar(theta="x")
ggplot(mpg,aes(x=displ))+geom_bar()+coord_polar(theta="y")


#1  clockwise       -1  anti-clockwise
ggplot(mpg,aes(x=displ))+geom_bar()+coord_polar(theta="y",direction=1)
ggplot(mpg,aes(x=displ))+geom_bar()+coord_polar(theta="y",direction=-1)


#start      offset of starting points in radians
ggplot(mpg,aes(x=displ))+geom_bar()+coord_polar(theta="y",start=0.1)        #Default start=0


#We can draw a piechart in R using barplot and applying polar coordinates

ggplot(mpg,aes(x=1,fill=factor(cyl)))+geom_bar()

#set theta="y"
ggplot(mpg,aes(x=1,fill=factor(cyl)))+geom_bar()+coord_polar(theta="y") #Now we have a pie chart