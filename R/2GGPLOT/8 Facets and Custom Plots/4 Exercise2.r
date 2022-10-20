library(ggplot2)
map=map_data("state")
elec=read.csv("US_Election_1976-2020.csv")

#in map the column name is region and in elec the columnnname is state.low
electionmap=merge(map,elec,by.x="region",by.y="state.low")

ggplot(electionmap,aes(x=long,y=lat))+geom_polygon(aes(group=group))


ggplot(electionmap,aes(x=long,y=lat))+geom_polygon(aes(group=group,fill=party_simplified))

USColors=c("DEMOCRAT"="darkblue","REPUBLICAN"="firebrick")

ggplot(electionmap,aes(x=long,y=lat))+geom_polygon(aes(group=group,fill=party_simplified))+scale_fill_manual(values=USColors)+
coord_quickmap()

#facet for all years
ggplot(electionmap,aes(x=long,y=lat))+geom_polygon(aes(group=group,fill=party_simplified))+scale_fill_manual(values=USColors)+
coord_quickmap()+facet_wrap(vars(year))

#removes theme
ggplot(electionmap,aes(x=long,y=lat))+geom_polygon(aes(group=group,fill=party_simplified))+scale_fill_manual(values=USColors)+
coord_quickmap()+facet_wrap(vars(year))+theme_void()

#removes name of legend
ggplot(electionmap,aes(x=long,y=lat))+geom_polygon(aes(group=group,fill=party_simplified))+scale_fill_manual(values=USColors,name="")+
coord_quickmap()+facet_wrap(vars(year))+theme_void()

#renames in legend
ggplot(electionmap,aes(x=long,y=lat))+geom_polygon(aes(group=group,fill=party_simplified))+
scale_fill_manual(values=USColors,name="",labels=c("Democrat","Republican"))+
coord_quickmap()+facet_wrap(vars(year))+theme_void()+(legend.position="top")