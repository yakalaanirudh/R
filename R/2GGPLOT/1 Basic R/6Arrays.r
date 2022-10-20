#Arrays
#They are multi-dimensional objects

#Creation
array()

#If we create an array of dimenion(3,3,2) then it give stwo matrice sof 3 by 3 dimension


#Accessing
#[row,col,matrix]

a=array(1:18,dim=c(3,3,2))
a[1,1,2]    #10

a[,1]       #WE get matrix of first col of 1st matrix and 1st column of second matrix

#NAMING
#Naming in arrays is achieved using dimnames()
rnames=c("r1","r2","r3")
cnames=c("c1","c2","c3")
mnames=c("m1","m2")

rownames(a)=R
dimnames(a)=list(rnames,cnames,mnames)
