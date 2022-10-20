data()          #males inbuilt data in R available
data(mtcars)    #uses mtcars data set       #Since these are inbuilt data sets we do not have to reassign them
#creates a df with 32 observations of 11 variables (32 rows and 11 columns)

?mtcars  #works with inherent data sets only it tells us about the data i.e shows metadata

dim(mtcars)             #shows dimensions of the df 32x11

nrow(mtcars)            #32
ncol(mtcars)            #11


#if we want to view the whole DF it consumes too much memory it might crash the system so we preview it
#?head()            #tells us about head function

#even if we dont give x and n the arguments will be auto assigned
head(x=mtcars,n=5)  #first 5 rows

tail(x=mtcars,n=5)


str(mtcars)         #give sstructure of DF tells data types

row.names(mtcars)                       #we can do the same with rownames and colnames
brands=row.names(mtcars)                #assigning it to a variable


summary(mtcars)                         #tells summary of DF like max,min,avg,sd,variance of columns



#Filtering Data Frames
data(mtcars)

mtcars[,'cyl']                      #we just want the column of cyl from DF it gives a vector
class(mtcars[,'cyl']  )             #numeric
#the same can be achieved by mtcars$cyl

mtcars$cyl==4                       #Gives a vector of TRUE  and FALSE vector
mtcars[mtcars$cyl==4,]              #gives the data vector of all rows where cyl=4 with all columns
class(mtcars[mtcars$cyl==4,] )      #DF


mtcars[(mtcars$cyl==4)|(mtcars$cyl==6),]        #where cyl=4 OR cyl=6

mtcars[(mtcars$cyl==4)|(mtcars$gear==3),]       #where cyl=4 OR gear=3

mtcars[(mtcars$cyl==4)&(mtcars$gear==3),]       #where cyl=4 AND gear=3

mtcars[mtcars$cyl!=4,]                          #where cyl!=4


#mtcars[(mtcars$cyl==4)|(mtcars$cyl==6),]
#if many OR clauses it might be difficult to debug so

cyl_list=c(4,6)
mtcars[mtcars$cyl %in% cyl_list,]


mtcars[(mtcars$hp>100) &(mtcars$hp<110),]



#Creating New Columns in the DataFrame
data(mtcars)

mtcars$hp

mtcars$wt

mtcars$hp/mtcars$wt

mtcars$hp_wt=mtcars$hp/mtcars$wt                #This creates  anew column named hp_wt

mtcars$model=rownames(mtcars)                   #This creates a new column named model based on rownames



#Apply Family
data(iris)
#Apply function allows us to apply a function across different elements
#It takes 3 arguments
#Array or Matrix
#1 rows 2 columns
#Function to be applied

apply(X=iris,MARGIN=2,FUN=mean)
apply(X=iris,[1:4],MARGIN=2,FUN=mean)               #Apply to columns 1 to 4
#apply(X=iris,MARGIN=2,FUN=max)
#lapply means list apply
lapply(X=iris,FUN=mean)
#lapply returns a list while sapply returns a simplified version of the object



#New Column with Sapply
data(mtcars)
mtcars$model=rownames(mtcars)
#strsplit               split string by a character
#Here we split the car name as the first part of model is the brand name
#we are trying to find which brand has highest avg hp

strsplit(x=mtcars$model,split=' ')          #returns alist where every element is  a vector whose elements are the one's split by ' '
models=strsplit(x=mtcars$model,split=' ')

models[[1]][1]
models[[2]][1]
models[[3]][1]
#Instaed of doing it for 32 times we use apply

sapply(X=models,FUN='[',n=1)            #We only want first word of split  #[ for iterating

mtcars$brand=sapply(X=models,FUN='[',n=1) 
view(mtcars)

class(mtcars$brand)         #character

#lapply(X=models,FUN='[',n=1) 
#class(mtcars$brand)         #list
#lapply generates list while sapply generates character




#Aggregating and Sorting
$hp_brands=aggregate(x=mtcars$hp,by=mtcars$brand,FUN=mean)          #We arenaming the resulting DF as hp_brands
class($hp_brands)         #DataFrame

col(hp_brands)=c('brand','mean_hp')         #we are naming the columns as brand and mean_hp for the data frame named hp_brands


order(hp_brands$mean_hp)                    #Gives just indexes

hp_brands[order(hp_brands$mean_hp),]        #Gives the sorted DF

hp_brands[-order(hp_brands$mean_hp),]       #Reverse Order





#Merging DataFrames
mtcars$carname=rownames(mtcars)                 #Creates a column with row names
brands_origin=data.frame(car_brand=c('Mazda','Toyota','Fiat','Volvo','Skoda'),
country=('Japan','Japan','Italy','Sweden','Czech Republic'))

merge(x=mtcars,y=brands_origin,by="brand")                          #Inner Join
mtcars_merged=merge(x=mtcars,y=brands_origin,by="brand")


merge(x=mtcars,y=brands_origin,by="brand")                          #Left Join
mtcars_merged2=merge(x=mtcars,y=brands_origin,by="brand",all.x=TRUE)


merge(x=mtcars,y=brands_origin,by="brand")                          #Right Join
mtcars_merged3=merge(x=mtcars,y=brands_origin,by="brand",all.y=TRUE)


merge(x=mtcars,y=brands_origin,by="brand")                          #Outer Join
mtcars_merged4=merge(x=mtcars,y=brands_origin,by="brand",all=TRUE)



