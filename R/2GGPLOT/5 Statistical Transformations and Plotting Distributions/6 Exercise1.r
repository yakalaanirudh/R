#A histogram of displ on x axis and count on y axis
#The count of each bin is displayed on top

library(ggplot2)
theme_set(theme_minimal())
ggplot(mpg,aes(x=displ))+geom_histogram(bins=10,fill="darkblue",alpha=0.5)


#We use geomm_text to display the count of each bar
#We did not use geom_label because geom_label has a line surrounding the text
#geom_text has default stat identity so we overwrite with stat=bin


#bins=10            because we want geom_text to hac\ve same bins
#label=stat(count)  because we want to display count on top of each bin
#y=stat(count)      beacuse we want to display the count on top of each bin
ggplot(mpg,aes(x=displ))+geom_histogram(bins=10,fill="darkblue",alpha=0.5)+
geom_text(stat="bin",bins=10,aes(label=stat(count),y=stat(count)))


#nudeg_y=2          displaces text of count upwards
ggplot(mpg,aes(x=displ))+geom_histogram(bins=10,fill="darkblue",alpha=0.5)+
geom_text(stat="bin",bins=10,aes(label=stat(count),y=stat(count))nudeg_y=2)


#Font formatting of count
ggplot(mpg,aes(x=displ))+geom_histogram(bins=10,fill="darkblue",alpha=0.5)+
geom_text(stat="bin",bins=10,aes(label=stat(count),y=stat(count))nudeg_y=2,color="darkblue",size=3)



#To increase numbe rof points on x-axis
ggplot(mpg,aes(x=displ))+geom_histogram(bins=10,fill="darkblue",alpha=0.5)+
geom_text(stat="bin",bins=10,aes(label=stat(count),y=stat(count))nudeg_y=2,color="darkblue",size=3)+
scale_x_continuous(breaks1:7)