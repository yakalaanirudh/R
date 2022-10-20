#facet_wrap()
#Wraps a 1d sequence of panels into 2d

#Parameters
#vars(a,b)
#First is rows,second is columns


library(ggplot2)

#This creates a scatter plot where points are colored based on the number of cylinders
p=ggplot(mtcars,aes(x=mpg,y=hp,color=factor(cyl)))+geom_point(size=3)

#This makes three plots one for each cylinder and all points are colored different
p+facet_wrap(vars(cyl))

#This creates 6 plots (3 cyl and am has two variables ,manual and auto transmission) in a 2*3 format
p+facet_wrap(vars(cyl,am))
p+facet_wrap(vars(am,cyl))      #It creates same plots as above but in different order


#nrows  number of rows in multiples
#ncols  number of columns in multiples  we can only specify one of these two

p+facet_wrap(vars(am,cyl),nrow=1)       #This creates 6 plots but in 6 columns
p+facet_wrap(vars(am,cyl),ncol=1)       #This creates 6 plots but in 6 rows


#dir    Direction of sequence of panels
#h  horizonta
#v  vertical
p+facet_wrap(vars(cyl,am),dir="h")
p+facet_wrap(vars(cyl,am),dir="v")


#Scales     should all panels share the same scale
#Yes        Default
#No
#   free_y  -y-scale is independent
#   free_x  -x-scale is independent
#   free    -x and y scales are independent

p+facet_wrap(vars(cyl,am))
p+facet_wrap(vars(cyl,am),scale="fixed")    #All plots have same scale(dimensions)
p+facet_wrap(vars(cyl,am),scale="free_x")



#Strip Position         #top,bottom,left,right
#The facet values numbe rof cylinders and automatic or manual transmission are displayed on top as default
#To change their position we use strip
p+facet_wrap(vars(cyl,am))
p+facet_wrap(vars(cyl,am),strip.position="left")

#Though the position is changed we need to change the orienation of the text to that we do the below
p+facet_wrap(vars(cyl,am),strip.position="left")+theme_light()+theme(strip.text.y=element_text(angle=0))





#facet_grid()   It is similar to facet_grid() but it creates plots for all possible combinations
#Parameters cols and rows
#cols=vars(a)   rows=vars(b)     or  other form a~b
p=ggplot(mtcars,aes(x=mpg,y=hp,color=factor(cyl)))+geom_point(size=3)
p+facet_grid(cyl~.)         #. means no other variable

p+facet_grid(am~cyl)        #It plots 6 graphs even though in oen graph there are no points
#facet_wrap() wont plot a multiple which has no points in it but facet_grid() will

#we cant set scales as we did with facet_wrap()
#It has some constarints like
#All panels in a column must have same x scale
#All panels in a row must have same y scale
p+facet_grid(am~cyl,scale="free")

