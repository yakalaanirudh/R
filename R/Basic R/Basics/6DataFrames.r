#Creating a DataFrame

#DataFrames are R Objects that store data similar to two dimensional tables
#They are similar to matrices but are able to store different types of data
#Has nrow,ncol functions
#The data in individual column should be of same type



#The number of elements in all the vectors should be equal
countries_data=data.frame(country=c('Portugal','France','UK'),population=c(213151,56451,51651),EU=c(TRUE,TRUE,FALSE))
#
#       country     population      EU
#   1   Portugal    213151          TRUE
#   2   France      56451           TRUE
#   3   UK          51651           TRUE
#
#The above is a 3 observations of 3 variables

#We can know the structure of the dataframe by 
str(countries_data)
#structure tells the data types of the vectors
#the above df shows country=c('Portugal','France','UK') as factors 
#if we want them to be strings(characters)

countries_data=data.frame(country=c('Portugal','France','UK'),population=c(213151,56451,51651),EU=c(TRUE,TRUE,FALSE),
stringsAsFcators=FALSE)

class(countries_data)       #data.frame
typeof(countries_data)      #list
#Lists is the only data type in R that allows different datatypes of the type is  a list



countries_data=data.frame(population=c(213151,56451,51651),EU=c(TRUE,TRUE,FALSE),row.names=c('Portugal','France','UK'),
stringsAsFcators=FALSE)
#
#                   population      EU
#       Portugal    213151          TRUE
#       France      56451           TRUE
#       UK          51651           TRUE
#
#The above is a 3 observations of 2 variables
#Now countries is rowname
view(countries_data)




#Indexing and Modifying Dataframes
countries_data[1,1]     #213151
countries_data[1,]      #Portugal    213151          TRUE
countries_data['France',]       #       France      56451           TRUE
countries_data[c('France','Portugal'),]
#
#       France      56451           TRUE
#       Portugal    213151          TRUE
#
countries_data['Portugal','population']=2           #The data will be reassigned




#Expanding DataFrames
countries_data2=data.frame(country=c('Portugal','France','UK'),population=c(213151,56451,51651),EU=c(TRUE,TRUE,FALSE))
spain_data=data.frame(country=c('Spain'),population=c(84894),EU=c(TRUE))

rbind(countries_data2,spain_data)       #The spain data will be added to bottom

capital_data=c('Lisbon','Paris','London','Madrid')
all_data=cbind(countries_data2,capitals_data)    #An extra row of capitals will be added



#Removing data from dataframes
countries_data2=countries_data2[-4,]            #spain will be removed the whole row

#wse can also do it by usinh NULL
countries_data2['-EU'] =NULL                    #The EU column will be removed from data frame