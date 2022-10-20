install.packages("ggplot2")     #installs packages
install.packages("xlsx")


library(ggplot2)            #loads all functions from the installed package
#after loading the library we can use functions in that library



getwd()         #gives current directory path
setwd('kajdhfkjae/aljhdlawdn')         #set working directory
directory_variable='kajdhfkjae/aljhdlawdn'
setwd(directory_variable)
# we can also choode setwd from drop down menu from UI


#To read csv files
filepath='./C/kjhdkaj/alkdnal/temp.csv'
loaded_data=read.csv(file=filepath)
class(loaded_data)              #data.frame


#To read xcel files
filepath='./C/kjhdkaj/alkdnal/temp.xls'
#install a pacakage
#install.packages('readxl')        #This installs the pacakage
#library(readxl)                     #This loads functions from the library readxl
loaded_data=read_excel(file=filepath)
class(loaded_data)              #data.frame

#Similarly we can use another library
filepath='./C/kjhdkaj/alkdnal/temp.xls'
#install a pacakage
#install.packages('xlsx')        #This installs the pacakage
#library(xlsx)                     #This loads functions from the library readxl
loaded_data=read.xlsx(file=filepath,sheetIndex=1)           #read first sheet if not provided default 1
class(loaded_data)              #data.frame



#To read mysql database
#install.packages('RODBC')
#library(RODBC)
#cursor=odbcConnect(dsn="mysqlconn",uid="root")
loaded_data=sqlQuery(channel=cursor,query='select * from file.film')
class(loaded_data)              #data.frame
close(cursor)
