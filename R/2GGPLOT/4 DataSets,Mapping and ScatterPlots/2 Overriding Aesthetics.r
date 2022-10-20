#We can 
#ADD
#OVERRIDE
#REMOVE
#Aesthetics


#ADDING AESTHETICS
ggplot(data=mpg,aes(x=displ,y=hwy,color=hwy))+geom_point()
ggplot(data=mpg,aes(x=displ,y=hwy,color=hwy))+geom_point(aes(size=hwy))


#OVERRIDING AESTHETICS
ggplot(data=mpg,aes(x=displ,y=hwy,color=hwy))+geom_point()
ggplot(data=mpg,aes(x=displ,y=hwy,color=hwy))+geom_point(aes(x=class)

#Now if we add another layer it will use x as displ
ggplot(data=mpg,aes(x=displ,y=hwy,color=hwy))+geom_point(aes(x=class)+geom_line()



#REMOVING AESTHETICS
ggplot(data=mpg,aes(x=displ,y=hwy,color=hwy))+geom_point(aes(color=NULL))