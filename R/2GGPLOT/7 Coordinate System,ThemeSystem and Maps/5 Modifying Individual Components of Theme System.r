#To modify an individual theme component
#plot+theme(element.name=element_function())

#The element.name can be
#Plot elements
#Axis elements
#Legend elements
#Panel elements
#Facet elements

#The element.function() can be
#Text:element_text()
#Lines:element_line()
#Rectangles:element_rect()
#Nothing:element_blank()
#Units:eg.unit(1,"cm")
#Margins:margin()

#Examples
#plot+theme(axis.title=element_text(color="red"))
#plot+theme(panel.background=element_blank())
#plot+theme(legend.key=element_rect(fill="blue"))



#ELEMENT TEXT 

#This is the default
df=data.frame(x=1:5,y=1:5)
p=ggplot(Df,aes(x,y))+geom_point()+labs(title="This is the title")



#To modify
p+theme(plot.title=element_text(family="Times"))                                                    #To modify font family
p+theme(plot.title=element_text(family="Times",face="bold"))                                        #To make text bold
p+theme(plot.title=element_text(family="Times",face="bold",size=20))                                #To increase size
p+theme(plot.title=element_text(family="Times",face="bold",size=20,color="darkblue"))               #To change color 
p+theme(plot.title=element_text(family="Times",face="bold",size=20,color="darkblue",hjust=0))       #Sets title at left     #Default
p+theme(plot.title=element_text(family="Times",face="bold",size=20,color="darkblue",hjust=0.5))     #Sets title in middle
p+theme(plot.title=element_text(family="Times",face="bold",size=20,color="darkblue",hjust=1))       #Sets title at right


#To add margin between title and graph
#Top right bottom left 
p+theme(plot.title=element_text(family="Times",face="bold",size=20,color="darkblue",hjust=1,margin=margin(0,0,20,0))) 




#ELEMENT LINE       element_line()
df=data.frame(x=1:5,y=1:5)
p=ggplot(Df,aes(x,y))+geom_point()+labs(title="This is the title")

p+theme(axis.line=element_line(color="gray40"))                                     #This adds color to axis lines
p+theme(axis.line=element_line(color="gray40",size=1))                              #Make axis lines bigger
p+theme(axis.line=element_line(color="gray40",size=1,lineend="round"))              #Makes axis lines ends curved
p+theme(axis.line=element_line(color="gray40",size=1,lineend="round",arrow=arrow()))    #Makes axis lines ends arrow




#element_rect()             to change themes related to area
df=data.frame(x=1:5,y=1:5)
p=ggplot(Df,aes(x,y))+geom_point()+labs(title="This is the title")


p+theme(panel.background=element_rect(color="black"))                           #Makes outline border of graph black
p+theme(panel.background=element_rect(color="black",size=2))                    #Makes bigger
p+theme(panel.background=element_rect(color="black",size=2,fill="white"))       #Inside graph color is white




#element_blank()
#Draws Nothing
#doesnt allocate space for that element
#doesnt receive 

df=data.frame(x=1:5,y=1:5)
p=ggplot(Df,aes(x,y))+geom_point()+labs(title="This is the title")

p+theme(panel.grid=element_blank())                                         #Makes grid disappear
p+theme(panel.grid=element_blank(),panel.background=element_blank())        #background is blank 
p+theme(panel.grid=element_blank(),panel.background=element_blank(),axis.ticks=element_blank())     #No axis ticks