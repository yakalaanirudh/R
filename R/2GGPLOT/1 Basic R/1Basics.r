#The top left is console
#The top right is the environment that lists the global variables
#The bottom right we can see the files or plot

getwd()
setwd("path")
dir()           #gives all folders in current working directory
ls()            #gives list of objects i hace in my current environment
objects()       #gives list of objects i hace in my current environment
remove(objectname)      #removes object from the environment
rm(objectname)          #removes object from the environment

#We can assign in two types
#a=7
#a<-7
#?function          $gives info about the function
#?read.csv

x=10
x                   #prints the value
print(x)            #prints the value

#To print a mpre complex statements cat is appropriate
a=7
b=10
cat("The value of a is",a,"the value of b is",b)

install.packages("ggplot2")                 #install.packages("packagename")
library(ggplot2)                            #to load the package