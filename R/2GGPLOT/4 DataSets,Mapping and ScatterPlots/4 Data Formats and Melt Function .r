#Town           Year    Males   Females
#SpringField    2000    200     300
#SpringField    2020    250     250
#Warrenville    2000    1000    1200
#Warrenville    2020    1100    1250
#MiddleTown     2000    750     600
#MiddleTown     2020    550     550
#The above is wide format

library(ggplot2)
d=read.csv("longWideData.csv")

#This creates a plot one for each town and gender total 6
ggplot(d,aes(x=Year,color=Town))+geom_line(aes(y=Males))+geom_line(aes(y=Females),linetype="dashed")


#This adds points to male line
ggplot(d,aes(x=Year,color=Town))+geom_line(aes(y=Males))+geom_line(aes(y=Females),linetype="dashed")+
geom_point(aes(y=Males))

#This adds points to Female line
ggplot(d,aes(x=Year,color=Town))+geom_line(aes(y=Males))+geom_line(aes(y=Females),linetype="dashed")+
geom_point(aes(y=Males))+geom_point(aes(y=Females))

#The above graph doesnt have legend for male and female because we specified geoms for them seperately
#The above graph the syntax is also being repeated




#To convert it to long format
#Town           Year    Gender      Value
#SpringField    2000    Male        200
#SpringField    2020    Male        250
#Warrenville    2000    Male        1000
#Warrenville    2020    Male        1100
#MiddleTown     2000    Male        750
#MiddleTown     2020    Male        500
#SpringField    2000    Female      300
#SpringField    2020    Female      250
#Warrenville    2000    Female      1200
#Warrenville    2020    Female      1250
#MiddleTown     2000    Female      600
#MiddleTown     2020    Female      550


#To convert it to long format we use function called melt   #It is available in package(reshape2)
melt(
    data,               #data we want to convert can be df,array,matrices,tables,lists
    id.vars,            #Variables that will not converted Town Year
    measure.vars,       #The columns we want to manipulate Male,Female
    variable.name="Gender", #Name of new column
    na.rm=FALSE,
    value.name="Value",     #Name of new column
    factorsAsstrings=TRUE
)


melted_data=(d,id.vars=c("Town","Year"))        #To convert from wide format to long format

#This maps but not correctly
ggplot(melted_data,aes(x=Year,y=Value,color=Town))+geom_line()+geom_point()


#We specigy groups to plot data according and we want it both on gender and town
ggplot(melted_data,aes(x=Year,y=Value,group=interaction(Gender,Town),color=Town))+geom_line()+geom_point()

#This adds linetype for different genders
ggplot(melted_data,aes(x=Year,y=Value,group=interaction(Gender,Town),color=Town,linetype=Gender))+geom_line()+geom_point()