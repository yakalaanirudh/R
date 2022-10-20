#We map an aesthetic to a variable
#We set an aesthetic to a constant value


#MAPPING
ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point(aes(color=hwy),size=3)
#If we declare inside aes() It is a mapping otherwise it is a setting
#In the above line color is mapping and size is setting
#In the above graph points color changes according to highway but all points size is same


#SETTING
ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point(color="darkblue",size=3)
#Do not use aes for setting
#In the above graph all points have same color darkblue and size is same


#In the below plot since color is NOT MAPPPED BUT SET geom point does not inherit it
#If we want geom point to use a color we need to specify it inide geom point again
ggplot(data=mpg,aes(x=displ,y=hwy),color="darkblue")+geom_point(size=3)