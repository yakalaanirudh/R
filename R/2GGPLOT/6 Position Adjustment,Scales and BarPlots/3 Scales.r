#   Scales:Definition and Usage

#Scales control the mapping from data to aesthetics
#Guidee is the legend
#Scales generate guides.WWe cant see scales but we can see guides
#every aesthetic is related to one scale

ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point()+theme_classic()
#Both the above and below generate same plot
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point()+theme_classic()+
scale_x_continuous()+scale_y_continuous()+scale_color_continuous()
#For the above plot ggplot() generates three scales
#   Aesthetics      Scales                          Guides
#   x=mpg           scale_x_continuous              Horizontal axis
#   y=wt            scale_y_continuous              Vertical axis
#   color=cyl       scale_color_continuous          color bar

#Changing scale
ggplot(mtcars,aes(x=mpg,y=wt,color=factor(cyl)))+geom_point()+theme_classic()+
scale_x_continuous()+scale_y_continuous()+scale_color_discrete()

#changing name of colorbar
ggplot(mtcars,aes(x=mpg,y=wt,color=factor(cyl)))+geom_point()+theme_classic()+
scale_x_continuous()+scale_y_continuous()+scale_color_discrete(name="Number of \ncylinders")

#changing type of color bar legend
ggplot(mtcars,aes(x=mpg,y=wt,color=factor(cyl)))+geom_point()+theme_classic()+
scale_x_continuous()+scale_y_continuous()+scale_color_binned(name="Number of \ncylinders")

#The latest scale overwrites previous scale