#FILTER             #SELECT ROWS ACCORDING TO COLUMN VALUES WITH FILTER()
#SELECT             #PICK VARAIBLES BY THEIR NAMES WITH SELECT()
#ARRANGE            #REORDER THR ROWS WITH ARRANGE()
#MUTATE             #CREATE NEW VARIABLES WITH FUNCTIONS OF EXISTING VARIABLES WITH MUATATE()

#df2=filter(df1,what)   #we should assign it in another dataframe for effects to be visible to us


install.packages("dplyr")
library(dplyr)

#if the data frame is large use str() to know the structure of the dataframe

#FILTER
#IT RETAINS ROWS THAT SATISFY THE CONDITION
#df[df$age<35,]         #IN DEFAULT R
filter(df,age<35)

#df[(df$age<35&df$residence=="Boston"),]         #IN DEFAULT R
filter(df,age<35,residence=="Boston")

filter(df,age<35,residence=="Boston"|residence=="Seattle")
filter(df,age<35,residence %in% c("Boston","Seattle"))



#SELECT
SELECT(df,age,residence)        #picks df by columns

#starts_with("abc")
#ends_with("abc")
#contains("abc")
#everything("abc")

SELECT(df,age,starts_with("Res"))       #picks age,residence,result

SELECT(df,Active,everything())          #This places Active column first and then shows all other columns

names(df)       #gives names of columns of df
names(df)[3]="Home"     #Modifying name of 3rd column   #This is in deafult r

rename(df,"new_name","old_name")
rename_with(df,toupper)             #Renames all column name sto upper case
rename_with(df,toupper,starts_with("A")) 


#Filter and select are used in conjunction
filter(df,Active==TRUE)
SELECT(filter(df,Active==TRUE),Age)         #This gives a df with only age


#ARRANGE
#ORDER ROWS BY VALUES OF COUMN OR COLUMNS USE desc() TO SPECIFY DESCENDING
arrange(df,age)
arrange(df,desc(age))
arrange(df,Home,age)        #First by home then by age



#MUTATE
#Add a new column as a result of operations between coulmns


#keep option(default=ALL)
#.keep="all"            
#.keep="none"           #Same as transmute()
#.keep="used"
#.keep="unused"


#BMI=WEIGHT/HEIGHT^2

df=mutate(df,BMI=WEIGHT/HEIGHT^2)          #Adds a new column
df=mutate(df,BMI=WEIGHT/HEIGHT^2,.keep="all") 
#.keep="all"            #keeps all columns
#.keep="none"           #keeps only new column
#.keep="used"           #keeps only used coumns for new column
#.keep="unused"         #keeps only unused coumns for new column