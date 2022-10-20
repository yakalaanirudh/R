#UTILITIES IN R HANDLING MISSING VALUES

#NA     Not Available
#Nan    Not a number
#A Nan value is also NA but the converse not true

#Check if something is a missing value
is.na()
is.nan()

complete.cases()        #Returns which rows have no missing value
na.omit()               #Omits which rows have no missing value