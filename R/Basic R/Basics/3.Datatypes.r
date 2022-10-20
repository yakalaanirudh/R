#String/Characters/Text
#text_var="name"


#Numerical default for numbers
#num=1
#we need to specify to be stored as integers
#Num=1L                 #We need to write L
#Num=as.integer(1)



#Logical
#Boolean values
#TRUE FALSE
#can be transformed to numeric using as.numeric or as.integer


#Conversion Functions
#as.numeric()
#as.integer()
#as.character()
#as.logical()
#class()


#we can clssify data types as underlying level and class level
number=1
class(number)       #numeric
typeof(number)      #double

my_date=as.Date('05-07-1996')
class(my_date)          #Date
typeof(my_date)         #double


word="newspaper"
class(word)         #"character"   
typeof(word)         #"character"   

#integer uses less data than numeric
a=1L
class(a)        #integer
typeof(a)       #integer
b=1
class(b)        #numeric

class(TRUE)     #logical


numeric_vector=c(1,2,3,4,5)
class(numeric_vector)       #numeric
typeof(numeric_vector)      #numeric


charcter_vector=c(1,2,3,4,"5")
class(charcter_vector)      #character
typeof(charcter_vector)     #character

is.numeric(12)              #numeric
is.numeric("12")            #character


x=23
as.charcter(number)         #"23"
y="24"
as.numeric(y)               #24


x1=c(1,2,3,4,5)         
class(x1)                   #numeric vector
x2=c(1,2,3,4,"5")
class(x2)                   #chaarcter vector
#we can switch vectors data types as we do with variables


#Factors
#Factors only allows distinct values
labels=c("Asia","Oceania","Antarctica","Europe","Africa","Europe","North America","South America","Africa")
factor_labels=factor(labels)      #"Asia","Oceania","Antarctica","Europe","Africa","North America","South America"
class(factor_labels)                #factor
typeof(factor_labels)               #integer
as.integer(factor_labels)           #3 6 2 1 4 5 7 #alphabetical order of factors
nlevels(factor_labels)              #7          #nlevels is count of distinct elements
altitude_levels=c('High','Low','Medium','Low','High','Low')
factor(altitude_levels)             #High Low Medium
altitude_factor=factor(altitude_levels,order=TRUE,levels=c('Low','Medium','High'))          # we are telling R Low < Medium < High
as.integer(altitude_factor)         #3 1 2 1 3 1



#Dates
Vector_Dates=c('2019-01-01','2019-01-02')
class(Vector_Dates)             #character
Vector_Dates2=as.Date(c('2019-01-02','2019-01-02'))      #this conversts the characters to dates in the vector
class(Vector_Dates2)                #Date
typeof(Vector_Dates2)               #double
as.numeric(Vector_Dates2)           #17897 17898        2nd jan>1st jan
as.Date(c("2019-02-02"))                #2019-02-02
as.Date(c("01/01/2019"))               #0001-01-20         #to avoid this we use formats
as.Date(c("01/01/2019"),format='%d/%m%/%y')            #2020-01-01
#It is because y picks only first two characters of year in this case 20
as.Date(c("01/01/2019"),format='%d/%m%/%Y')            #2019-01-01
example_date=as.Date(c("01Jan2019"),format="%d%b%Y")                 #2019-01-01
format(example_date,'%d')               #1          #extracts date
format(example_date,'%m')               #01         #extracts month
format(example_date,'%Y')               #2019       #extracts year
days=as.numeric(format(Vector_Dates,"%y"))         #This creates a vector of years of all dates in the vector