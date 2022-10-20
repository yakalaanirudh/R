#Dataframes
#Dataframes are list of equal dimension vectors.(Two dimenisonal).Can store different types
#In a dataframe all coumns should be of equal length
#GGPLOT only accepts dataframes as input

#Creation
data.frame()

df=data.frame(x=1:3,y=3:1)

#   x   y
#   1   3
#   2   2
#   3   1

person_names=c("Alice","Bob","charlie","David")
ages=c(20,22,31,18)
df1=data.frame(person_names,ages)

#   person_names    ages
#   Alice           20
#   Bob             22
#   Charlie         31
#   David           18
class(df1)      #data.frame
typeof(df1)     #list

v=c(11,12,13,14,15)
as.data.frame(v)
#   v
#   11
#   12
#   13
#   14
#   15


#we can combine with using cbind and rbind
cbind(v,v)


#Dimesnions
#we can get the dimensions of  adataframe using length(),ncol(),nrow()

#Cars data frame has two columns speed and distance

head(cars)          #we will see first 6 rows
head(cars,10)       #we will see first 10 rows

length(cars)        #2
ncol(cars)          #2
#length and ncol are same
nrow(cars)          #50


cars$speed          #we will get first column as first column is speed
cars["speed"]       #we will get first column as first column is speed

class(cars$speed)           #numeric
class(cars["speed"])        #Dataframe

c=cars

c[c$speed<=7,]                  #It gives two columns spped and distance        #COMMA IMPORTANT
c[(c$speed<=7 &c$dist>=10)]


#MODIFYING
c[1,1]=100
c[c$speed,]$speed=100

c=rbind(c,(99,77))            #Adds a row


#NAMES
colnames(c)         #Speed  Dist
colnames(c[2])="Distance"           #Modification