#UTILITIES IN R GENERTION OF SEQUENCES

#seq(from,to,by,length.out,along.with)
#from   starting value  DEFAULT=1
#to     ending value    DEFAULT=1
#by     increment       DEFAULT=((to-from)/(length-1))


1:10                        #1 2 3 4 5 6 7 8 9 10
seq(1,10)                   #1 2 3 4 5 6 7 8 9 10
seq(1,10,by=2)              #1 3 5 7 9

#length.out         desired length of sequence                              DEFAULT=NULL
#along.with         take the length from the length of this argument        DEFAULT=NULL

seq(0,10,by=3)                          #0 3 6 9
seq(1,10,by=3,length.out=4)              #1 4 7 10

v=c(1,2,3,4,5)                          #numbe rof elements as this vector that is passed as an argument
seq(1,20,by=3,along.with=v)             #1 4 7 10 13     



#rep        replicate values
rep(x,[times,length.out,each])
rep(2,10)               #2 2 2 2 2 2 2 2 2 2
rep(c(2,4,6),3)         #2 4 6 2 4 6 2 4 6


rep(1:5,each=2)         #1 1 2 2 3 3 4 4 5 5

rep(1:5,each=2,times=3)         #1 1 2 2 3 3 4 4 5 5 1 1 2 2 3 3 4 4 5 5 1 1 2 2 3 3 4 4 5 5

rep(1:5,length.out=15)          #1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 


#paste()            Used to concatenate vectors after converting to char


#sample(x,size,replace=FALSE,prob=NULL)
sample(1:5,1)           #2          #one value
sample(1:5,10,replace=TRUE)           #we allow repition