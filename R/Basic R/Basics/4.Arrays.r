#Arrays are used to store data in multiple dimensions,vectors are one dimensional objects
#example_array=array(data=c(1,2,3),dim=c(1,2,2))
#They take vectors as input
#The dim argument controsl the dimension of the vector
#With c(1,2,2) we create 2 matrices with 1 row by 2 columns
#Every position in the dim corresponds to its dimension
#You can use dimnames to name elements on the array
#They hold elements of the same type


#1
my_vector=1:4
my_vector[3]        #3
my_vector[1,]       #error

#in an array first argument is data,even if we dont type data first argument is data
#2nd argument is dimensions,which tells shape of my data
# 2,2 means in each dimension there needs to be 2 elements
my_array=array(data=my_vector,dim=c(2,2))
my_array[1,1]       #1
my_array[1,2]       #3
my_array[2,1]       #2
my_array[2,2]       #4
#
#       1   3
#       2   4
#
class(my_array)     #matrix         #matrices are special type of arrays    #only class(2 dimensioanl arrays)   =matrix
#my_array2=(data=c(1,2,3,4,5,6),dim=c(2,2,2))
#class(my_array2)=array                                                     #class(2+ dimensioanl arrays)   =array
#class(1 dimensional array)=array
#typeof(my_array2)=integer  #my_arry2 is a 3 dimensional array
#dim(my_array2)         =2,2,2          It means our array has 3 dimensions and each dimension has two elements


#2  Indexing and modifying arrays
my_array3=array(1:8,dim=c(4,4))         #Since less numebr of elements the number are repeated
#       1       5       1       5
#       2       6       2       6
#       3       7       3       7
#       4       8       4       8 
my_array3[,4]           #5 6 7 8
my_array3[,3]           #1 2 3 4
my_array3[2:3,3]        #2 3
my_array3[4,]           #4 8 4 8
my_array3[3,]           #3 7 3 7
my_array3[1:3,3]        #1 2 3
#reassigning first row
my_array3[1,]=c(101,102,103,104)
#       101       102       103      104
#       2       6       2       6
#       3       7       3       7
#       4       8       4       8 
my_array3[2,]=my_array3[2,]+c(101,102,103,104)
#       101       102       103      104
#       103       108       105      110
#       3       7       3       7
#       4       8       4       8
my_array3[3:4,]=100
#       101       102       103      104
#       103       108       105      110
#       100       100       100      100
#       100       100       100      100
my_array3[1:2,]=array(c(1000,1000,1000,1000,1000,1000,1000,1000),dim=c(2,4))
#       1000       1000       1000      1000
#       1000       1000       1000      1000
#       100       100       100      100
#       100       100       100      100


#Operations
my_array4=array(data=c(100,100,100),dim=c(3,3,2))
#
#,,1
#       100     100     100
#       100     100     100
#       100     100     100
#,,2
#       100     100     100
#       100     100     100
#       100     100     100
#
my_array4[,,1]=sqrt(my_array3[,,1])
#
#,,1
#       10     10     10
#       10     10     10
#       10     10     10
#,,2
#       100     100     100
#       100     100     100
#       100     100     100
#
my_array4[,2,]=my_array4[,2,]**2        #power 2

my_array4[,,1]=my_array4[,,1]*my_array4[,,1]        #multilying every element in 1 with 2

my_array4[1,3,2]=my_array4[1,3,2]/10


#Array Dimnames Property
array5=array(c(200,200,300,300,400,400,500,600),dim=c(2,2,2))
#
#,,1

#     200     300
#     200     300
#,,2
#   400     500
#   400     600
#
array5=array(c(200,200,300,300,400,400,500,600),dim=c(2,2,2),dimnames=list(c('Texas','Washington'),c('Austin','Seattle'),c('2019','2020')))
#
#,,2019
#               Austin  Seattle
#   Texas       200     300
#   Washington  200     300
#,,2020
#               Austin  Seattle
#  Texas        400     500
#   Washington  400     600
#
array5['Texas','Austin','2019']     #200
array5['Texas','Austin',c('2019','2020')]     #200  400
array5['Texas','Houston','2019']    #error
dimnames(array5)        #Texas Washington Asutin Seattle 2019 2020
dimnames(array5)[[1]]=c('California','oregon')          #It chnages the names in dirnames

nrows(array5)           #2          #gives number of rows
ncols(array5)           #2          #gives number of cols


array5[,,-2]            #removes second matrix
array5[,-c(2),]         #removes Austin and Seattle




#Combining arrays
array6=array(1:4,dim=c(2,2))
#
#   1   3
#   2   4
#
array7=array(11:14,dim=c(2,2))
#
#   5   7
#   6   8
#
# to combine they should of the required format to combine for both rbind and colbind
rbind(array6,arry7)
#
#   1   3
#   2   4
#   5   7
#   6   8
#
dim(rbind(array6,arry7))        #4 2



cbind(array6,arry7)
#
#   1   3   5   7
#   2   4   6   8
#
dim(cbind(array6,arry7))        #2 4