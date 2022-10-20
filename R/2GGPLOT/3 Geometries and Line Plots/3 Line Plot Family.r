#To draw a line plot we use geom_line()
#It has two sister functions geom_path(),geom_step()

#The aesthetics for a line graph are
#x
#y
#alpha              #Values of alpha range from 0 to 1, with lower values corresponding to more transparent colors.
#color
#linetype           #dashed solid dashed solid
#size
#group              #It tells R which variables should be grouped together in one aesthetic


library(dplyr)
library(ggplot2)
install.packages("babynames")       #Data packages
library(babynames)

#The above gives a data frame of year,sex,name,number of times each name is used to name a baby and proportion of name

anna=filter(babynames,name=="Anna")         #Display only those rows where anna is name

anna=filter(babynames,name=="Anna",sex=="F")         #Display only those rows where anna is name and female gender for every year
#We have one observation per year

theme_set(theme_minimal())              #To change theme

ggplot(anna,aes(x=year,y=n))            #Nothing shown
ggplot(anna,aes(x=year,y=n))+geom_line()    #A line plot

ggplot(anna,aes(x=year,y=n))+geom_line()+geom_area    #UIt allows us to fill(with color) the area below the line

#In geom_line y axis may start lets say at 777 to displaya all values clearly
#But geom_area always sets starting value of y axis to 0

ggplot(anna,aes(x=year,y=n))+geom_line()
ggplot(anna,aes(x=year,y=n))+geom_line(size=1.5)
ggplot(anna,aes(x=year,y=n))+geom_line(size=1.5,alpha=0.5)
ggplot(anna,aes(x=year,y=n))+geom_line(size=1.5,alpha=0.5,color="midnightblue")
ggplot(anna,aes(x=year,y=n))+geom_line(size=1.5,alpha=0.5,color="midnightblue",linetype="solid")
