wine_data=(read.csv('winemag-data_first150k.csv'))

portugese_wines=wine_data[wine_data$country=="Portugal"]

library(ggplot2)

ggplot(portugese_wines,aes(x=points))+geom_density()            #Plots a density plot


#Mean,Median

mean(portugese_wines$points)
median(portugese_wines$points)

#We get a sd of names of countries in 1 col and their means in another col(x)
median_points=aggregate(wines_data$points,list(wines_data$country),FUN=median)
medianpoints_order=median_points[order(median_points$x),]                   #ordering



#Comparing Distributions
aggregate(iberian_data$points,list(iberian_data$country),FUN=var)               #Variance
aggregate(iberian_data$points,list(iberian_data$country),FUN=sd)                #Standard Deviation