#   Shortcut to Scales:labs &lims
#Manipulation of labels and limits

#labs
#Shortcut to modify axis label names    (xlab),(ylab)
#Most convinient way use labs with arguments
#title
#x
#y
#subtitle
#caption
#tag

p=ggplot(mtcars,aes(x=mpg,y=wt))+geom_point()

p+labs(x="Miles per gallon",y="Weight",title="Title of plot",subtitle="This is a subtitle",caption="This is a caption",tag="This tag")



#lims
#Shortcut to modify limits of plot
#We can us exlim or ylim alone      xlim(0,50) ylim(NA,40)
#We can us evectors too             lims(x=c(0,50),y=c(NA,40))


p+labs(x="Miles per gallon",y="Weight",title="Title of plot",subtitle="This is a subtitle",caption="This is a caption",tag="This tag")+
xlim(0,50)

p+labs(x="Miles per gallon",y="Weight",title="Title of plot",subtitle="This is a subtitle",caption="This is a caption",tag="This tag")+
lims(x=c(10,20),y=c(3,4))