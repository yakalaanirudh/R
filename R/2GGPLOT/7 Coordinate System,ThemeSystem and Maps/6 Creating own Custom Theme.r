p=ggplot(mtcars,aes(x=mpg,y=hp,color=factor(cyl)))+geom_point(size=3)

p=ggplot(mtcars,aes(x=mpg,y=hp,color=factor(cyl)))+geom_point(size=3)+
scale_color_brewer(type="qual",palette=3,name="Number of cylinders")+
labs(title="Cars fuel consumption",x="Miles per gallon",y="HorsePower")

#Building Custom Theme
p+theme_light()                     #changes theme

p+theme_light(base_size=10,base_family="Poppins")       #default font in theme

#changes to plot
#we remove the border to the plot
p+theme_light(base_size=10,base_family="Poppins")+
theme(panel.border=element_blank()) 


#We remove smaller grid lines in x direction
p+theme_light(base_size=10,base_family="Poppins")+
theme(panel.border=element_blank(),
    panel.grid.minor.x= element_blank()
)

#we remove axis ticks
p+theme_light(base_size=10,base_family="Poppins")+
theme(panel.border=element_blank(),
    panel.grid.minor.x= element_blank(),
    axis.ticks= element_blank()
) 


#moving legend position to top
p+theme_light(base_size=10,base_family="Poppins")+
theme(panel.border=element_blank(),
    panel.grid.minor.x= element_blank(),
    axis.ticks= element_blank(),
    legend.position="top"
) 


#Adding space between axis titles and axis
p+theme_light(base_size=10,base_family="Poppins")+
theme(panel.border=element_blank(),
    panel.grid.minor.x= element_blank(),
    axis.ticks= element_blank(),
    legend.position="top",
    axis.title.y=element_text(margin=margin(r=10)),         #r=right
    axis.title.x=element_text(margin=margin(t=10))          #t=top
)


#Space between legend elements, legend title size and changing plot title to bold
p+theme_light(base_size=10,base_family="Poppins")+
theme(panel.border=element_blank(),
    panel.grid.minor.x= element_blank(),
    axis.ticks= element_blank(),
    legend.position="top",
    axis.title.y=element_text(margin=margin(r=10)),         #r=right
    axis.title.x=element_text(margin=margin(t=10)),         #t=top
    legend.text=element_text(margin=margin(0,10,0,0)),      #add on right       top,right,bottom,left
    legend.title=element_text(size=8),
    plot.title=element_text(face="bold")
)


#To save the custom theme we need to place it in a function

theme_nice=function(){
    theme_light(base_size=10,base_family="Poppins")+
    theme(panel.border=element_blank(),
    panel.grid.minor.x= element_blank(),
    axis.ticks= element_blank(),
    legend.position="top",
    axis.title.y=element_text(margin=margin(r=10)),         
    axis.title.x=element_text(margin=margin(t=10)),         
    legend.text=element_text(margin=margin(0,10,0,0)), 
    legend.title=element_text(size=8),
    plot.title=element_text(face="bold")
)
}


#then lets say we craeted a plot q
#to add this theme we can do
q+theme_nice()

#we can save this in a  script file customtheme.r 
#we can load it in another file using
#source(customtheme.r)