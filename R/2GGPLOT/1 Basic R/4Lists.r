#Lists
#Lists is an R object which contains different types like numerics,strings,vectors or another list in them

#Creation list()
#Coercion doesnt happen in lists

l=list()
class(l)            #list
l1=list("John",72,TRUE)
l1[[1]]              #John

l2=list("John",72,TRUE,c(1,2,3))
l3=list("John",72,TRUE,c(1,2,3),list("Hannah","Bob"))


#Accessing lists                USE [[]]
#[]                     #Using [] gives a list
#[[]]                   #Uisng [[]] give steh particular element
l3[1]               #John
class(l3[1])        #list

l3[[1]]             #John
class(l3[[1]])      #character

l3[[5]][[2]]        #Bob

#Names they make it easier to access the lists
names(l3)=c("Name","age","retied","numbers","parents")
#Now to access we can do
l3$retired           #TRUE
l3[["retired"]]        #TRUE


#Length
length(l3)          #5

#We can manipulate lists i.e add update delete
l3$Name="Jim"               #Updation
l3[length+1]="Seattle"      #Addition
names(l3)                   #"Name","age","retied","numbers","parents"

#ADDING NAME TO THE AAPPENDED ELEMENT
names(l3)[6]                #Residence


#We can also add using
l3$Profession="Software Engineer"           #This is added to end of the list


l3$numbers=NULL             #Deletion



#Concatenation
l11=list(1,2,3,4,5)
l12=list("a","b","c","d","e")
l13=c(l11,l12)          #1 2 3 4 5 a b c d e