#Creating Matrices
#When we craete matrices the number of elements in data should be a factor of the total number of elements in the matrix
#a=matrix(data=1:7,nrow=10,ncol=7)      Possible
#a=matrix(data=1:4,nrow=10,ncol=4)      Error
#Elemenst may repeat but cant be half used like in example 2 above

example_matrix=matrix(data=1:4,nrow=10,ncol=4)
#xample_matrix2=array(data=1:4,dim=c(10,4))        both creates same matrices
#example_matrix==example_matrix2            TRUE
class(example_matrix)           #Matrix
class(example_matrix2)           #Matrix
#dim(example_matrix)            #10 4
#nrow(example_matrix)            #10
#ncol(example_matrix)            #4
#
#   1   3   1   3
#   2   4   2   4
#   3   1   3   1
#   4   2   4   2
#   1   3   1   3
#   2   4   2   4
#   3   1   3   1
#   4   2   4   2
#   1   3   1   3
#   2   4   2   4
#

example_matrix=matrix(data=1:4,nrow=10,ncol=4 byrow=TRUE)       #byrow default is false

#
#   1   2   3   4
#   1   2   3   4
#   1   2   3   4
#   1   2   3   4
#   1   2   3   4
#   1   2   3   4
#   1   2   3   4
#   1   2   3   4
#   1   2   3   4
#   1   2   3   4
#



#Matrix Operations
example_matrix3=matrix(data=1:4,nrow=2,ncol=2)
#
#   1   3
#   2   4
#
example_matrix4=matrix(data=201:204,nrow=2,ncol=2)
#
#   201   203
#   202   204
#

#Matrix Multiplication Elementwise          #same numebr of elements must
example_matrix5=example_matrix3*example_matrix4
#
#   201   609
#   404   816
#
example_matrix6=example_matrix3+example_matrix4     #summed element wise same with - and /
#
#   202   206
#   204   208
#

#To calculate matrix dot product
#we need to wrap * symbol with % signs
example_matrix7=example_matrix3%*%example_matrix4
#
#   807   815
#   1210   1222
#
