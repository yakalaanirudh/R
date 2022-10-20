#geom_density=stat_density+geom_line

#It is a smooth version of frequency polygon

ggplot(diamonds,aes(x=depth))+geom_density()

ggplot(diamonds,aes(x=depth))+geom_density(stat="density")      #Same as above


ggplot(diamonds,aes(x=depth,color=cut))+geom_density()          #A seperate line for each cut

ggplot(diamonds,aes(x=depth,color=cut,fill=cut))+geom_density(alpha=0.3)


#Area plots and density plots looks the same
#But area plots use stat identity means no transformation while
#Area plots also require y



#RIDGELINE PLOTS
#Ridge line plots are partially overlapping lineplots available in package ggridges
#RidgeLine plots also require y

library(ggridges)

ggplot(diamonds,aes(x=depth,color=cut,fill=cut))+geom_density_ridges(aes(y=cut))

