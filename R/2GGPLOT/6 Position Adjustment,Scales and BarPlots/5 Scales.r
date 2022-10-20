#   Scales:Position Scales

#Continuous
#   scale_x_continuous/scale_y_continuous
#   scale_x_log10/scale_y_log10
#   scale_x_reverse/scale_x_reverse
#   scale_x_sqrt/scale_x_sqrt


p=ggplot(mtcars,aes(x=mpg,y=wt))+geom_point(size=3)

#Changing name of scale the above graph x axis anme is mpg
p+scale_x_continuous(name="Miles per gallon")

#On axis where ticks placed(major breaks)
p+scale_x_continuous(name="Miles per gallon",breaks=c(10,20,30))

#remove minor breaks
p+scale_x_continuous(name="Miles per gallon",breaks=c(10,20,30),minor_breaks=NULL)

#Adding minor breaks at particular location
p+scale_x_continuous(name="Miles per gallon",breaks=c(10,20,30),minor_breaks=c(7,18,36))

#number of major ticks we want
p+scale_x_continuous(name="Miles per gallon",n.breaks=5) 


#Changing ticks of x axis
p+scale_x_continuous(name="Miles per gallon",n.breaks=5,labels=LETTERS[1:6])        #A B C D E F

#Limits of x axis
p+scale_x_continuous(name="Miles per gallon",limits=c(15,30))

#Axis becomes logarithmic
p+scale_x_continuous(name="Miles per gallon",trans="log10")

#Axis in reverse
p+scale_x_continuous(name="Miles per gallon",trans="reverse")

#Axis position changed from bottom to top
p+scale_x_continuous(name="Miles per gallon",position="top")


#for binned scale
#   scale_x_binned/scale_y_binned
p=ggplot(mtcars,aes(x=mpg,y=wt))+geom_point(size=3)

#makes x axis binned
p+scale_x_binned()

#nice breaks    Default true
p+scale_x_binned(nice.breaks=T)     #Breaks willbe nicely placed


#for discrete scale
#   scale_x_discrete/scale_y_discrete
q=ggplot(mtcars,aes(x=class,y=hwy))+geom_point(size=3)

q+scale_x_discrete(breaks=c("compact","midsize","subcompact"))
