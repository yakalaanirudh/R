#A plot (contains)
#   A default Dataset+mapping from dataset to aesthetics
#   One or more layers
#       One geometry                                    #point or line
#       One statistical transformation                  #histogram to binning
#       One Positional Adjustment                       #changing to logarithmic
#       One dataset +mapping from data to aesthetics    #plot from another data set
#   One scale for each aesthetic mapping
#   One co-ordinate system
#   One facet specification


#Facet specification is if we have same datatype and one for one year and another for another year
#WE can use facet to draw two side by side graphs for each year


#   A  B   C   D
#   2   3   4   a
#   1   2   1   a
#   4   5   15  b
#   9   12  8   b


A=c(2,1,4,9)
B=c(3,2,5,12)
C=c(4,1,15,8)
D=c("a","a","b","b")
mydata=data.frame(A,B,C,D)
library(ggplot2)


p=ggplot(data=mydata,map=aes(x=A,y=C))
p                       #When we type p a blank graph appears with no points because we did not specify the geometry


#Adding geometry
#stat="identity"            #statistical transformation
#position="identity"        #Positional Adjustment 
p=p+geom_point(mapping=aes(shape=D),stat="identity",size=4,position="identity")


#Adding scale
p=p+scale_x_continuous()+scale_y_log10()

#Adding co-ordinate
p=p+coord_cartesian()
#p=p+coord_polar()


#Adding facet specification
p=p+facet_grid(cols=vars(D))