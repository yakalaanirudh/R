#   Scales:Classification

#Structure of scale
#It consists of three parts

#   1   "scale"                                         #Just scale
#   2   Name of primary aesthetic(color,shape,x)        #What the scale affects
#   3   Nme of scale(continuous,discrete,brewer)        #Type of scale


#Clssification regarding to aesthetic
#   Position scale
#   Color scale
#   Other aesthetic scale       like alpha 


#Internally scale are three types
#   continuous scale
#   discrete scale
#   binned scale            #we cant use binned scale with discrete data



class(mtcars$cyl)           #numeric

ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point()       #Default continuous for this case

ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point()+scale_color_continuous()

ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point()+scale_color_binned()

#changing continuous to discrete using factor
ggplot(mtcars,aes(x=mpg,y=wt,color=factor(cyl)))+geom_point()+scale_color_discrete()