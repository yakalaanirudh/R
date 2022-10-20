ggplot(diam,aes(x=cut,y=price))+geom_point()
ggplot(diam,aes(x=cut,y=price))+geom_point(position="jitter")
ggplot(diam,aes(x=cut,y=price))+geom_point(position=position_jitter(width=0.15))    #makes jitter width 0.15
ggplot(diam,aes(x=cut,y=price))+geom_point(position=position_jitter(width=0.15),alpha=0.3,size=3,shape=16)


ggplot(diam,aes(x=cut,y=price))+geom_point(aes(color=price),position=position_jitter(width=0.15),alpha=0.3,size=3,shape=16)+
scale_color_gradientn(colors=c(low_yellow,mid_orange,high_red))     #This is for coloring the points

#yellow 0-0.05  orange 0.05-0.1 red 0.1-1 
ggplot(diam,aes(x=cut,y=price))+geom_point(aes(color=price),position=position_jitter(width=0.15),alpha=0.3,size=3,shape=16)+
scale_color_gradientn(colors=c(low_yellow,mid_orange,high_red),values=c(0,0.05,0.1,1)) 

#This removes the legend
ggplot(diam,aes(x=cut,y=price))+geom_point(aes(color=price),position=position_jitter(width=0.15),alpha=0.3,size=3,shape=16)+
scale_color_gradientn(colors=c(low_yellow,mid_orange,high_red),values=c(0,0.05,0.1,1),guide="none") 

