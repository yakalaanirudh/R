#Creating a dataframe
candidates=c("Biden","Trump")
results=c(306,232)
election=c("2020 Election","2020 Election")
df=data.frame(candidates,results,election)


library(ggplot)

#This creates two seperate bars
ggplot(df,aes(x=candidates,y=results,fill=candidates))+geom_col() 

#This creates one bars
ggplot(df,aes(x=election,y=results,fill=candidates))+geom_col()

#This amkes y axis 1
ggplot(df,aes(x=election,y=results,fill=candidates))+geom_col(position=position_fill())

#Changing width
ggplot(df,aes(x=election,y=results,fill=candidates))+geom_col(position=position_fill(),width=0.1)

#colors
USColors=c("Biden"="midnightblue","Trump"="firebrick")

ggplot(df,aes(x=election,y=results,fill=candidates))+geom_col(position=position_fill(),width=0.1)+
scale_fill_manual(values=USColors,guide=NULL)               #guide=NULL remove scolor legend

#Flipping
ggplot(df,aes(y=election,x=results,fill=candidates))+geom_col(position=position_fill(),width=0.1)+
scale_fill_manual(values=USColors,guide=NULL)

#Colors in reverse order
ggplot(df,aes(y=election,x=results,fill=candidates))+geom_col(position=position_fill(reverse=T),width=0.1)+
scale_fill_manual(values=USColors,guide=NULL)

#geom_segment adds a line at the specified co ordinates
ggplot(df,aes(y=election,x=results,fill=candidates))+geom_col(position=position_fill(reverse=T),width=0.1)+
scale_fill_manual(values=USColors,guide=NULL)+
geom_segment(x=0.5,xend=0.5,y=1-0.15,yend=1+0.15)

#Theme removal void removes everything
ggplot(df,aes(y=election,x=results,fill=candidates))+geom_col(position=position_fill(reverse=T),width=0.1)+
scale_fill_manual(values=USColors,guide=NULL)+
geom_segment(x=0.5,xend=0.5,y=1-0.15,yend=1+0.15)+
theme_void()


