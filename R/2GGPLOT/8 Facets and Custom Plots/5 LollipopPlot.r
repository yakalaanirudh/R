#It is alternative to bar plot
#It has a bar and a point on top of it

library(ggplot2)
election=read.csv("election2019.csv",stringsAsFactors=T)

ggplot(election,aes(x=CANDIDATES.2019,x=SEATS.2019))+geom_col()

library(forcats)

#Reorder Candidates by seats
elections$CANDIDATES.2019=fct_reorder(election$CANDIDATES.2019,elections$SEATS.2019)
ggplot(election,aes(x=CANDIDATES.2019,x=SEATS.2019))+geom_col()


#Now starting of lollipop plot
ggplot(election,aes(y=CANDIDATES.2019,x=SEATS.2019))+geom_point(size=4)   #This creates the point


#The segment starts at x=0 and ends at x=SEATS.2019
#The segment starts at y=CANDIDATES.2019 and y=CANDIDATES.2019
ggplot(election,aes(y=CANDIDATES.2019,x=SEATS.2019))+geom_point(size=4)+
geom_segment(aes(x=0,xend=SEATS.2019,y=CANDIDATES.2019,yend=CANDIDATES.2019))


#We can add labels to it
ggplot(election,aes(y=CANDIDATES.2019,x=SEATS.2019))+geom_point(size=4)+
geom_segment(aes(x=0,xend=SEATS.2019,y=CANDIDATES.2019,yend=CANDIDATES.2019))+geom_text(aes(label=SEATS.2019),color="white")
