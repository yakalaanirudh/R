#Most of the stuff we use in R are objects
#Examples of objects in R are
#Vector
#Matrix
#List
#DataFrame


#Vectors are characterized by size and type of elements
#All elememnts in a vector should be of same type
#Vectors are index based and start at 1
#To create  avector use c()

melons<-c(3.4,2.2,7.1,10,18)
#or
#melons=c(3.4,2.2,7.1,10,18)

#To access we can write melons[1]

#If we want weight to be halved we can write
melons/2               #Each element is halved

#If we want weight to be doubled we can write
melons*2               #Each element is doubled
melons+2


#To add specific values to each element
melons+c(0.1,0.2,1.7,0.3,1.3)
#We can also rename it like
new_melons=melons+c(0.1,0.2,1.7,0.3,1.3)


#We acn also do special operations on each element like
sqrt(melons)            #sqrt of each element
sum(melons)             #sum of all elements
mean(melons)            #mean of all elements

#Comparisons
melons>4
#[false,false,true,true,true]
melons==10
#[false,false,false,false,false]


#WE can also combine it with AND and OR
melons>4 & melons==10
melons>4 | melons==10


#/0 yield Inf
#sqrt(-1) yield NaN     -Not a Number
#If no entry it is NA   -Not Available


#na.rm=true
#the above command allows us to neglect any NA (not available) in the vector
sum(c(3.4,3.1,3.7,3.5,NA),na.rm=TRUE)           #13.7
mean(c(3.4,3.1,3.7,3.5,NA),na.rm=TRUE)          #3.425

#In r studio
#Top Left is script file
#Bottom Left is console
#Top right is global environment

#Adding             3+7
#Subtracting        3-7
#Multiplying        3*7
#Divding            3/7

#They follow BODMAS rule


#Functions
sqrt(7)
exp(3)
log(10)     #base is e
log(10,10)  #base is 10

#To seek documentation we can write ?
#?mean()