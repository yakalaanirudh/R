#Lists

#DataFrames are R Objects that are flecible
#They can store different types of data adn other R datatypes too
#Lists can have multi-dimensional objects but on the element level the element should be uni-dimensional


vector1=c(1,2,"3")
typeof(vector1)         #character

my_list=list(1,2,"3")
typeof(my_list)         #list


my_list2=list(c(1,2,3),array(1:4,dim=c(2,2)),TRUE)
#The above object each element has its own type namely vector(double),array(integer),logical
typeof(my_list2)         #list
#we can assign names to elements of vector
names(my_list2)=c('Vector','Array','Logical')
length(my_list2)            #3
str(my_list2)               #tells us the structure of the list

#Earlier we created the list and then named the elements
#We can also do it at the tiem of creation of the list
my_list2=list("Vector"=c(1,2,3),"Array"=array(1:4,dim=c(2,2)),"Logical"=TRUE)
#now if we want to get the names of the list elements
names(my_list2)             #'Vector','Array','Logical'




#List Indexing
my_list3=list("Vector"=c(1,2,3),"Array"=array(1:4,dim=c(2,2)),"Logical"=TRUE)
my_list3[1]         #1,2,3
my_list3[1][1]      #1,2,3
#because when we use single[] we are just accessing a sublist tog o into the element we need to use [[]]
my_list3[[1]]         #1,2,3
my_list3[[1]][1]      #1
#to access underlying values in a list we need to use [[]]

my_list3[2]
#
#   1   3
#   2   4
#
my_list3[2][2,2]    #error

my_list3[[2]]
#
#   1   3
#   2   4
#
my_list3[[2]][2,2]    #4


#If we want to select multiple elements from list use [] but we wont be able to access inner elements
my_list3[c(1,2)]
#
#1,2,3
#   1   3
#   2   4
#
my_list3[c(1,2)][2]         #also wont work we cant access an element from the sublist

#we can use $ to access inner elements
#$ will workmonly if we have names in the list we cant use $ to access by index based i.e my_list$3
my_list4=list("Vector"=c(1,2,3),"Array"=array(1:4,dim=c(2,2)),"Logical"=TRUE)
my_list4$Vector         #1,2,3              #It is same as my_list[['Vector']]
my_list4$Vector[1]      #1 





#Changing and adding elements to lists
example_list=list(c('a','b','c'),array(1:10,dim=c(2,5)))
#The above is a list of 2
#
#a,b,c
#   1   3   5   7   9
#   2   4   6   8   10
#

#To add an element(which in this case is a vector) we do
example_list[[4]]=c(1,2,3,4,5,6,7)
#example_list[4]=c(1,2,3,4,5,6,7)           only 1 will be added to the lsit not the entire vector
example_list[[4]]=TRUE              #Reassigning
example_list[[18]]=c(1,2,3,4,5,6,7,8,9,10)
#In the avove case the in between elements will be assigned a value of NULL since list is a continuous data type




#Deleting List Elements
example_list[[18]]=NULL
example_list[18]=NULL
#Deletion is the only case where [] works the same as [[]]




#Combining Lists
list_a=list(c(1,2),"A")
list_b=list(c(11,12),matrix(1:10,nrow=5,ncol=2))
#To combine lists we concatinate them
combined_list=c(list_a,list_b)