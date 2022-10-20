#To plot a box plot and add a layer of violin plot on top of it
ggplot(mpg,aes(x=hwy,y=class))+geom_violin()

ggplot(mpg,aes(x=hwy,y=class))+geom_violin(aes(fill=class),show.legend=F,alpha=0.5)+scale_fill_viridis(discrete=T)

#color=NA   No black outline on violin plot
ggplot(mpg,aes(x=hwy,y=class))+geom_violin(aes(fill=class),show.legend=F,alpha=0.5,color=NA)+scale_fill_viridis(discrete=T)


#To add boxplot and reduce box plot width we use width=0.2
ggplot(mpg,aes(x=hwy,y=class))+geom_violin(aes(fill=class),show.legend=F,alpha=0.5,color=NA)+scale_fill_viridis(discrete=T)+
geom_boxplot(fill=NA,width=0.2)