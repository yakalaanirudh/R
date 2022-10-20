#   Scales:Manual & Identity Scales

#   scale_*_manual     only available for discrete scales

ggplot(mtcars,aes(x=mpg,y=wt,color=factor(cyl)))+geom_point(size=3)

#For colors
ggplot(mtcars,aes(x=mpg,y=wt,color=factor(cyl)))+geom_point(size=3)+scale_color_manual(values=c("red","green","blue"))

#For opacity
ggplot(mtcars,aes(x=mpg,y=wt,alpha=factor(cyl)))+geom_point(size=3)+scale_alpha_manual(values=c(0.1,0.5,1))


#For shape
ggplot(mtcars,aes(x=mpg,y=wt,shape=factor(cyl)))+geom_point(size=3)+scale_shape_manual(values=c(21,7,8))

#Now symbols will be 4 6 8
ggplot(mtcars,aes(x=mpg,y=wt,shape=factor(cyl)))+geom_point(size=3)+scale_shape_manual(values=c("4","6","8"))

#In legend earlier it will be 4=4 but now it will be just 4
ggplot(mtcars,aes(x=mpg,y=wt,shape=factor(cyl)))+geom_point(size=3)+scale_shape_manual(values=c("4","6","8"),labels=NULL)



#   scale_*_identity     when data already contains aesthetic mappings      identity means AS-IS

x=seq(1,6)
set.seed(123)
y=runif(length(x))          #create a vector y which is a random vector of length x
set.seed(123)
col=sample(colors(),length(x))      # vector of 6 colors

df=data.frame(x,y,col)

ggplot(df,aes(x,y,color=col))+geom_point(size=4)        #This plots a scatter plot  but the color of poinst do not match column col

ggplot(df,aes(x,y,color=col))+geom_point(size=4)+scale_color_identity() #Now in plot color of points match column col

#When we use identity no legend is generate dunless we specify  guide="legend"
ggplot(df,aes(x,y,color=col))+geom_point(size=4)+scale_color_identity(guide="legend")