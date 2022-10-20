#They are both designed to divide x axis into bins and count the number of observations in each bin
#They have a restriction that data on the x-axis should be continuous

#we are using diamonds data set
ggplot(diaminds,aes(x=price))+geom_histogram()          #Default bins=30

ggplot(diaminds,aes(x=price))+geom_histogram(binwidth=500)
ggplot(diaminds,aes(x=price))+geom_histogram(bins=50)


#Flipped orientation
ggplot(diaminds,aes(y=price))+geom_histogram(binwidth=500)
ggplot(diaminds,aes(y=price))+geom_histogram(bins=50)


##In a histogram bars are plotted in a frequency polygon a line is plotted with the top point of all bins
ggplot(diaminds,aes(x=price))+geom_freqpoly()
ggplot(diaminds,aes(x=price))+geom_freqpoly(binwidth=500)
ggplot(diaminds,aes(x=price))+geom_freqpoly(bins=50)



#Here in the bars parts of each bar are colred in accordance to number of diamonds of that cut type
ggplot(diaminds,aes(x=price,fill=cut))+geom_histogram(binwidth=500)

#The above seems a bit to hard to analyze so freqpoly does the same but offers better view
ggplot(diaminds,aes(x=price,color=cut))+geom_freqpoly(binwidth=500)