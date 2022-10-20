#There are 5 types

#Vectors
#Lists
#Matrices
#Arrays
#Data.frames


#Vectors
#Vector is a collection of elements of same class
#We can create vectors using c() or vector()
#INDEXING STARTS AT 1

v=c(1,2,3,4)
class(v)            #numeric
typeof(v)           #double

vv=c("A","B","C","D")
class(vv)            #character
typeof(vv)           #double

x=vector("numeric",5)           #creates a vector of type numeric and length 5
#The above creates  a vcector    0 0 0 0 0
x+1                             #   1 1 1 1 1
is.vector(x)                    #TRUE
a1=c(11,12,13,14,15)
a1[2]                           #12
a1[c(1,3)]                      #11 13
a1[1:3]                         #11 12 13
a1[3]=23                        #Reassigning
a1[1:5]=c(21,22,23,24,25)       #Reassigning

#Mixing of classes leads to coercion
a2=c(TRUE,"HELLO")
a2              #"TRUE" "HELLO"             #R coerced true from logical to character


#COMPARING VECTORS
#Comparsion gives TRUE only if the vectors are of same type
v1=c(1:3)           #integer
v2=c(1,2,3)         #numeric
v3=c(1L,2L,3L)
v1==v2              #false
v1==v3              #true


#Dimensions of a vector
length(v1)


#Cocatenation
x1=c(1,2,3)
x2=c(4,5,6)
z=c(x1,x2)          #1 2 3 4 5 6
z=c(x1,7,x2)        #1 2 4 7 4 5 6