#Chloropleth maps are maps colored according to some variable

usa.state=map_data("state")

#color="black" outline color
ggplot(usa.states,aes(x=long,y=lat))+geom_polygon(fill="NA",color="black")      #No group the map is not plotted correctly

ggplot(usa.states,aes(x=long,y=lat,group=group))+geom_polygon(fill="NA",color="black")+coord_quickmap()+theme_void()


#The above is a map of usa with states plotted
#unique(usa.states$group)       #It tells us how many unique groups are there in the dataset


#we will use a dataset called USArrests to color the map

head(USArrests)     #We get columns of state(row name),murder assault,UrbanPop,Rape

#To plot this dataset into the map we merge it based on the column state as it is common in both

arrests=USArrests

#In arrests the state is rowname so we add a new field based on the rownames
arrests$region=tolower(rownames(USArrests))


#Merge
usa.crimes=merge(usa.states,arrests,by="region")

#The merging deviates the order of column "Order" which is required to plot 
#So we get it into default order
usa.crimes=usa.crimes[order(usa.crimes$order),]


ggplot(usa.crimes,aes(x=long,y=lat,group=group))+geom_polygon(aes(fill="NA",color="black"))+coord_quickmap()+theme_void()

#plotted by assault
ggplot(usa.crimes,aes(x=long,y=lat,group=group))+geom_polygon(aes(fill=Assault))+coord_quickmap()+theme_void()  

#scale_fill_viridis_c() means continuous
ggplot(usa.crimes,aes(x=long,y=lat,group=group))+geom_polygon(aes(fill=Assault))+coord_quickmap()+theme_void()+
scale_fill_viridis_c()


#Different color
ggplot(usa.crimes,aes(x=long,y=lat,group=group))+geom_polygon(aes(fill=Assault))+coord_quickmap()+theme_void()+
scale_fill_viridis_c(option="E")

#name of legend
ggplot(usa.crimes,aes(x=long,y=lat,group=group))+geom_polygon(aes(fill=Assault))+coord_quickmap()+theme_void()+
scale_fill_viridis_c(option="E",name="Number of assaults per 100,100 inhabitants")

#change position of legend
ggplot(usa.crimes,aes(x=long,y=lat,group=group))+geom_polygon(aes(fill=Assault))+coord_quickmap()+theme_void()+
scale_fill_viridis_c(option="E",name="Number of assaults per 100,100 inhabitants")+theme(legend.position="bottom")