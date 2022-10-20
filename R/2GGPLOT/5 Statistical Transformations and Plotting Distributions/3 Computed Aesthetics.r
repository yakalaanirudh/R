#When a stat performs a transformation,new variables are created

#For histogram
#   count       number of points in bin
#   density     density of points in bin,scaled to integrate to 1
#   ncount      count,scaled to maximun of 1
#   ndensity    density,scaled to maximun of 1

#This plots a histogram of 30 bins
#It plots count in each bin
ggplot(mpg,aes(displ))+geom_histogram()
#The above is same as
ggplot(mpg,aes(displ))+geom_histogram(aes(y=stat(count)))


#We can modify it by
ggplot(mpg,aes(displ))+geom_histogram(aes(y=stat(count/max(count))))