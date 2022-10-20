#read.table()       #read file in a table format and create a data.frame from it

df=read.table("readSample.csv")
#The above function place sthe first row in the csv file which is a header row as first row in the table
#and name sthe columns as V1 V2 V3 V4 V5

#To get first column
df$V1       #Name   Alice   Bob  Charlie

#HEADER
#boolean indicating if there is a header line.DEFAULT=FALSE
df=read.table("readSample.csv",header=TRUE)
df$Name       #Alice   Bob  Charlie


#sep    String seperator Default=" "
#If the file is seperated by commas and df still in default r renders all data into a single column

df=read.table("readSample.csv",header=TRUE,sep=",")
df=read.table("readSample.csv",header=TRUE,sep="\t")            #If seperated by tabs


#Strings as factors     Whether our charcater variable shsould be encoded as factors    DEFAULT FALSE
df=read.table("readSample.csv",header=TRUE,sep=",")
class(df$residence)         #character
df=read.table("readSample.csv",header=TRUE,sep=",",stringsAsFactors=TRUE)
class(df$residence)         #factor


#comment.char       character string indicating comment  DEFAULT=#
#Suppose in the file at the starting of one row a # is placed r will ignore it a 
df=read.table("readSample.csv",header=TRUE,sep=",",stringsAsFactors=TRUE,comment.char="?")
#Now R will read that row


#nrows  number of rows to be read from the file DEFAULT=read all
df=read.table("readSample.csv",header=TRUE,sep=",",stringsAsFactors=TRUE,comment.char="?",nrows=3)


#skip   number of lines to be skipped at the beginning DEFAULT=0
df=read.table("readSample.csv",header=TRUE,sep=",",stringsAsFactors=TRUE,comment.char="?",nrows=3,skip=10)


#In a read csv DEFAULT VALUES FOR HEADER=TRUE,sep=,,comment.char=""