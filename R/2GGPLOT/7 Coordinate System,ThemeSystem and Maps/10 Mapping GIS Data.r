#Sometimes the amp we want to draw is not available in r
#Thenw e need to look in repositories to get a shape file of format (*.shp)
#library(rdgal) library(sf)

library(sf)

world=read_sf(ne_50m_admin_0_countries/ne_50m_admin_0_countries.shp)            #shape file


ggplot(world)+geom_sf()+coord_sf()+theme_void()

#color="gray",size=0.2 color and size of lines in map
ggplot(world)+geom_sf(fill="NA",color="gray",size=0.2)+coord_sf()+theme_void()


#To turn to chloropleth map
cities=read.csv("cities_to_visit.csv")      #data

ggplot(world)+geom_sf(fill="NA",color="gray",size=0.2)+
coord_sf()+theme_void()

#size of dots
ggplot(world)+geom_sf(fill="NA",color="gray",size=0.2)+
geom_point(data="cities",aes(x=lon,y=lat),color="indianred",size=3)+
coord_sf()+theme_void()