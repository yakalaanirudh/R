#Matrices
#Matrices are vectors with dimension attribute.They are created column wise.They are vectors too


#Creation       #Created column wise unless specified
#matrix()
x=matrix(1:12,nrow=4,ncol=3)

#   1   5   9
#   2   6   10
#   3   7   11
#   4   8   12


x1=matrix(1:12,nrow=4,rcol=2)

#   1   5
#   2   6
#   3   7
#   4   8


#If the dimensions are bigger for the lemenst then r will duplicate the given elements to fill the matrix
#Then number of entries in the matrix should be a multiple of number of elements given

#NAMING
#We can name columns and rows
#dimnames,rownames,colnames

myrows=c("A","B","C","D")
mycols=c("X","Y","Z")

x2=matrix(1:12,nrow=4,ncol=3,dimnames=list(myrows,mycols))

#To access names
rownames(x2)        #A B C D
colnames(x2)        #X Y Z



#ACCESSING MATRICES
x[3]        #returns element in first colmn 3 rd row
x[2,3]      #returns element in 2nd row,3rd column
x["rowname","colname"]
x[2,]       #returns 2nd row
x[,3]       #returns 3rd column
x[1:3,]     #returns first 3 rows



#MODIFICATION
t(x)            #returns transpose of matrix

#rbind and cbind attaches new row and new column to a matrix
cbind(x,c(21,22,23,24))
rbind(x,c(21,22,23,24))

cbind(x,"row5"=c(21,22,23,24))
rbind(x,"col5"=c(21,22,23,24))


dim(x)      #Gives dimensions of matrix

dim(x)=c(2,8)   #rearranges the matrix

#We can use rbind and cbind to create matrices from vectors
p=c(1,2,3,4)
q=c(11,12,13,14)
is.vector(p)    #TRUE
is.vector(q)    #TRUE
is.matrix(p)    #FALSE
is.matrix(p)    #FALSE

r=rbind(p,q)
is.matrix(r)    #TRUE
