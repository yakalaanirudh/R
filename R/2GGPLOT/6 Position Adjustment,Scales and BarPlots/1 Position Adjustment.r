#Position Adjustment:Identity,Jitter,Nudge

#If the Objects we need to plot end up on top of each other we do position Adjustemnt.
#In Scatter Plot we do jitter to slightly adjust overlapped points
#Every geometry has a default position adjustment like for scatter plot it is jitter

#TYPES OF POSITION ADJUSTMENT

#   1   position_identity()
#It means do not apply any transformation to data plot it as-is
#It is the default for geom_point(),geom_line()

#Ways to call
#   position="identity"
#   position=position_identity()

ggplot(mpg,aes(x=class,y=hwy))+geom_point()     #DEFAULT position="identity"
ggplot(mpg,aes(x=class,y=hwy))+geom_point(position="identity")
ggplot(mpg,aes(x=class,y=hwy))+geom_point(position=position_identity())



#   2   position_jitter()
#Adds random noise to data to avoid overlaps
#Useful for scatter plots
#Wrapper:geom_jitter()

#Parameters
#   seed    -   random seed to make jitter reproducable         -how much noise
#   width   -   amount of jitter horizontally
#   height  -   amount of jitter vertically

ggplot(mpg,aes(x=class,y=hwy))+geom_point(position="jitter")
ggplot(mpg,aes(x=class,y=hwy))+geom_point(position=position_jitter())

ggplot(mpg,aes(x=class,y=hwy))+geom_point(position=position_jitter(seed=123))

#Hides legend
ggplot(mpg,aes(x=class,y=hwy,color=class))+geom_point(show.legend=F,position=position_jitter(width=0.5,height=0))
ggplot(mpg,aes(x=class,y=hwy))+geom_point(position=position_jitter(width=0.5,height=1))




#   3   position_nudge()    nudge means is pushing someone gently not far away
#   Adjusts the position of items by a small amount
#   useful for geom_text
#   Built-in:geom_text(...,nudge_x=0,nudge_y=0)


#Parameters
#   x   -amount of horizontal distance to move
#   y   -amount of vertical distance to move


x=1:5
y=1.5
lab=c("A","B","C","D","E")
df=data.frame(x,y,lab)

ggplot(df,aes(x,y))+geom_point(size=4,color="lightblue")
ggplot(df,aes(x,y))+geom_point(size=4,color="lightblue")+geom_text(aes(label=lab))  #This makes the text apepar on the point

#The text dispalce sslightly upwards
ggplot(df,aes(x,y))+geom_point(size=4,color="lightblue")+geom_text(aes(label=lab),position=position_nudge(y=0.4))

#Same as above
ggplot(df,aes(x,y))+geom_point(size=4,color="lightblue")+geom_text(aes(label=lab),nudge_y=0.4)