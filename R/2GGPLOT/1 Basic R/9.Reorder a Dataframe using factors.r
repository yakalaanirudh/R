opinions=c("Horrible","Bad","Neutral","Good","Fantastic")

opinions=as.factor(opinions)
#"Horrible","Bad","Neutral","Good","Fantastic"   levels:Bad,Fantastic,Good,Horrible,Neutral

count=c(45,35,22,60,15)

df=data.frame(opinions,count)

#   opinions    count
#   Horrible    45
#   Bad         35
#   Neutral     22
#   Good        60
#   Fantastic   15


#Now if we plot the above in a bar graph the row names will be in the order of levels which is alphabetic


#To prevent this we follow two steps
#Define your custom ordering
#Reorder the levels of the factor inside the dataframe

newOrder=c("Horrible","Bad","Neutral","Good","Fantastic")

#transform to transform a data frame in this case df and reassign it to dff
dff=transform(df,opinions=factor(opinions,levels=newOrder))

#Now if we plot the above in a bar graph the row names will be in the order of levels which is newOrder