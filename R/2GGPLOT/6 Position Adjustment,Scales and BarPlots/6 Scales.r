#   Scales:Date Scales

#   class Date
#   scale_x_date/scale_y_date

#   datetimes(class POSIXct)
#   scale_x_datetime/scale_y_datetime

#   times(class hms)
#   scale_x_time/scale_y_time


Sys.Date    #returns todays date

x=Sys.Date()-1:90       #subtract 1 to 90 from todays date      It returns a vector
class(x)                #Date

y=runif(length(x))      #A random vector of length equal to x

df=data.frame(x,y)

p=ggplot(df,aes(X,y))+geom_line()

#Since x is a data variable ggplot makes x label as x
p+scale_x_date(name="Date")                 #Renaming x axis


myBreaks=seq(min(df$x),max(df$x),by=20)     #20 values between min and max of df$x  so 20 dates

#breaks are major bold lines on the plot
p+scale_x_dates(breaks=myBreaks)

#labels are names on axes
p+scale_x_dates(breaks=myBreaks,labels=LETTERS[1:5])


p+scale_x_date(date_breaks="2 weeks")       #breaks every 2 weeks
p+scale_x_date(date_breaks="20 days")       #breaks every 20 days