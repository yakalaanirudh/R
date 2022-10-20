#   Scales:Color Scales

#If aesthetic is to color we use scale_color_continuous and if aesthetic is to fill we use scale_fill_continuous
#   Continuous
#   scale_color_continuous/scale_fill_continuous
#       scale_color_gradient/scale_fill_gradient                #Allows low and high value
#       scale_color_gradient2/scale_fill_gradient2              #Allows low, middle and high value
#       scale_color_gradientn/scale_fill_gradientn              #Allows as amny values as we want


ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_continuous()    #Same
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_gradient()      #Same
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_gradient(low="blue",high="red") 

ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_gradient2(low="blue",high="red",mid="yellow") 
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_gradient2(low="blue",high="red",mid="yellow",midpoint=6) 

ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_gradientn(c("blue","yellow","red","green")) 


#   Binned
#   scale_color_binned/scale_fill_binned
#       scale_color_steps/scale_fill_steps
#       scale_color_steps2/scale_fill_steps2
#       scale_color_stepsn/scale_fill_stepsn


ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_binned()    #Same
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_steps()      #Same
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_steps(low="blue",high="red") 

ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_steps2(low="blue",high="red",mid="yellow") 
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_steps2(low="blue",high="red",mid="yellow",midpoint=6) 

ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_color_stepsn(c("blue","yellow","red","green")) 

#   Discrete
#   scale_color_discrete/scale_fill_discrete
#       scale_color_hue/scale_fill_hue
#       scale_color_grey/scale_fill_grey

ggplot(mtcars,aes(x=mpg,y=wt,color=factor(cyl)))+geom_point(size=3)+scale_color_discrete()
ggplot(mtcars,aes(x=mpg,y=wt,color=factor(cyl)))+geom_point(size=3)+scale_color_discrete(type=c("red","orange","blue"))



#Viridis colors     #must be colour
scale_colour_viridis_c()            #continuous
scale_colour_viridis_b()            #binned
scale_colour_viridis_d()            #discrete

ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_colour_viridis_c()
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_colour_viridis_b()
ggplot(mtcars,aes(x=mpg,y=wt,color=factor(cyl)))+geom_point(size=3)+scale_colour_viridis_d()



#USEFUL PARAMETERS
#alpha
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3,alpha=0.3)+scale_colour_viridis_b()      #Only plot lightens
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3)+scale_colour_viridis_b(alpha=0.3)       #legend and  plot lightens


#direction      DEFAULT=1 REVERSE=-1
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3,alpha=0.3)+scale_colour_viridis_b(direction=1) 
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3,alpha=0.3)+scale_colour_viridis_b(direction=-1) 


#discrete       generate a discrete palette (default=F) we do not have to use it if we use scale_colour_viridis_d


#Option A="magma"   B="inferno"     C="plasma"  D="viridis"(default)    E="cividis"    
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(size=3,alpha=0.3)+scale_colour_viridis_b(option="B") 