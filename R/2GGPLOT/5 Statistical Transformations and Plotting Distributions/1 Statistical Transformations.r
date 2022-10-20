#Statistical transformations are the transformations we do to the data that is inputted to the plot
#They summarize the data in some way

#Scatter plots,line plots plot data AS-IS

#A histogram ,geom_smooth does a statistical transformation of the data
#A histogram does binning where the length of each bar is proportional to the number of items in each bin
#A geom_smooth draws a line which is a smooth approximation of the points in an approximate straight line

#We can tell ggplot to do what to do in two ways
#1  By using a geom taht does what we want  geom-smooth
#2  By explicitly stating the stats

#geoms control the way the plot looks
#stats control the way the data is transformed

#Every geometry has  a default statistical transformation
#geom_line          DEFAULT STAT IS stat_identity           stat_identity means leave data as is
#geom_point         DEFAULT STAT IS stat_identity
#geom_smooth        DEFAULT STAT IS stat_smooth             stat_smooth means plot a smooth line with all points

ggplot(mpg,aes(x=cty,y=hwy))+geom_point()                   #Plots a scatter plot
ggplot(mpg,aes(x=cty,y=hwy))+geom_point(stat="identity")    #Plots a scatter plot because default is identity no change
ggplot(mpg,aes(x=cty,y=hwy))+geom_point(stat="smooth")      #Plots a smooth line of points (NOT A LINE BUT A SMOOTH LINE OF POINTS)


#Similarly a stat has a default geometry
#stat_smooth            DEFAULT geom is geom_smooth
#stat_count             DEFAULT geom is geom_bar
#stat_sum               DEFAULT geom is geom_point

ggplot(mpg,aes(x=cty,y=hwy))+geom_smooth()
ggplot(mpg,aes(x=cty,y=hwy))+stat_smooth()

#The above two plots yield the same result because the deafult stat for geom_smooth is stat_smooth


ggplot(mpg,aes(x=cty))+stat_count()
ggplot(mpg,aes(x=cty,y=hwy))+stat_sum()
