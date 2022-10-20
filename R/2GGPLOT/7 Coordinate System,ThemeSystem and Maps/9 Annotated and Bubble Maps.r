#On a chloropleth map we can add text to make them annotated maps

#The data needed is info of the label we want to print
#The data for position of label(lat,long)

#we use state_centers_data.csv

state.centers=read.csv("state_centers_data.csv")


ggplot(usa.crimes,aes(x=long,y=lat,group=group))+geom_polygon(aes(fill=Assault))+coord_quickmap()+theme_void()+
scale_fill_viridis_c(option="E",name="Number of assaults per 100,100 inhabitants")+theme(legend.position="bottom")


ggplot(usa.crimes,aes(x=long,y=lat,group=group))+geom_polygon(aes(fill=Assault))+
geom_text(data=state.centers,aes(x=avg_long,y=avg_lat,label=state_initials))+
coord_quickmap()+theme_void()+
scale_fill_viridis_c(option="E",name="Number of assaults per 100,100 inhabitants")+theme(legend.position="bottom")


ggplot(usa.crimes,aes(x=long,y=lat))+geom_polygon(aes(fill=Assault,group=group))+
geom_text(data=state.centers,aes(x=avg_long,y=avg_lat,label=state_initials))+
coord_quickmap()+theme_void()+
scale_fill_viridis_c(option="E",name="Number of assaults per 100,100 inhabitants")+theme(legend.position="bottom")


ggplot(usa.crimes,aes(x=long,y=lat))+geom_polygon(aes(fill=Assault,group=group))+
geom_text(data=state.centers,aes(x=avg_long,y=avg_lat,label=state_initials),size=2.5,fontface="bold")+
coord_quickmap()+theme_void()+
scale_fill_viridis_c(option="E",name="Number of assaults per 100,100 inhabitants")+theme(legend.position="bottom")



#A bubble map is when we have  abackground map we can add points whose size is proportional to value

#We need info of point
#Info of the value of variable that will be mapped to size


state.centers=merge(State.centers,arrets,by="region")

ggplot(usa.crimes,aes(x=long,y=lat))+geom_polygon(aes(group=group),fill="NA",color="gray",size=0.3)+
coord_quickmap()+theme_void()

#We will get a point at the center of each state
ggplot(usa.crimes,aes(x=long,y=lat))+geom_polygon(aes(group=group),fill="NA",color="gray",size=0.3)+
geom_point(data=state.centers,aes(x=avg_long,y=avg_lat))+
coord_quickmap()+theme_void()

#The point size and color is proportional to assault
ggplot(usa.crimes,aes(x=long,y=lat))+geom_polygon(aes(group=group),fill="NA",color="gray",size=0.3)+
geom_point(data=state.centers,aes(x=avg_long,y=avg_lat,size=Assault,color=Assault))+
coord_quickmap()+theme_void()