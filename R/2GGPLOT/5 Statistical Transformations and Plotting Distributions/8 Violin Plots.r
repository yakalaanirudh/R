#Box plots only show summary statistics violin plots show whole distribution

#A violin plot displays continuos ndata like a box plot
#It is acombination of density plot and box plot
#geom(violin)       #default stat transformation (stat_ydensity)


ggplot(mpg,aes(x=class,y=hwy))+geom_violin()

#Trim adds outliers to plot
ggplot(mpg,aes(x=class,y=hwy))+geom_violin(trim=F)      #default trim=T


#by deafult all areas of indiciduals violins plots is same scale changes it
ggplot(mpg,aes(x=class,y=hwy))+geom_violin(scale="area")

#Area proportional to count of observations
ggplot(mpg,aes(x=class,y=hwy))+geom_violin(scale="count")

#All violins have same width
ggplot(mpg,aes(x=class,y=hwy))+geom_violin(scale="width")



#draw_quantiles
ggplot(mpg,aes(x=class,y=hwy))+geom_violin(draw_quantiles=c(0.25,0.5,0.75))