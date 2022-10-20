#How to make bar plots look good

#   Flip your axes
#   Order your bars by value
#   Change the color palette
#   Make bars thinner

library(dplyr)

il=filter(midwest,state--"IL",poptotal>100000&poptotal<500000)

ggplot(il,aes(x=county,y=poptotal,fill=poptotal))+geom_col()

#Flipping axis
ggplot(il,aes(y=county,x=poptotal,fill=poptotal))+geom_col()

#   Order your bars by value
library(forcats)
class(il$county)            #character
il$county=factor(il$county) #we are making it a factor
class(il$county)            #factor

#reordering counties according to population
il$county=fct_reorder(il$county,il$poptotal)
ggplot(il,aes(y=county,x=poptotal,fill=poptotal))+geom_col()        #Now bars reordered


#   Change the color palette
library(viridis)
ggplot(il,aes(y=county,x=poptotal,fill=poptotal))+geom_col()
ggplot(il,aes(y=county,x=poptotal,fill=poptotal))+geom_col()+scale_fill_viridis_b()     #bin scale

ggplot(il,aes(y=county,x=poptotal,fill=poptotal))+geom_col()+scale_fill_viridis_b(option="E")     #color palette E

#reversing color palette
ggplot(il,aes(y=county,x=poptotal,fill=poptotal))+geom_col()+scale_fill_viridis_b(option="E",direction=-1)


#   Make bars thinner       DEFAULT width=0.9
ggplot(il,aes(y=county,x=poptotal,fill=poptotal))+geom_col(width=0.8)+scale_fill_viridis_b(option="E",direction=-1)
