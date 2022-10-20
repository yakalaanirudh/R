#There are two steps to plotting maps
#   1   Obtaining geographical data
#   2   Plotting it


#In r we can plot maps in two ways
#   1   Built-in package "maps"
#   2   Using packages  "rgdal","sf"


library(ggplot2)

usa=map_data("usa")     #It gives a data frame of longitudes,latitudes,group,order,region etc

#geom_polygon is similar to geom_path except it colors interior area too


ggplot(usa,aes(x=long,y=lat))+geom_polygon()
ggplot(usa,aes(x=long,y=lat,group=group))+geom_polygon()            #It changes area near great lakes
ggplot(usa,aes(x=long,y=lat,group=group))+geom_polygon()+coord_quickmap()   #Plots in mercator projection