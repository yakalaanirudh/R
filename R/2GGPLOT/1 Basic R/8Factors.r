#Factors
#Factors are vectors that can only store predefined values      #Enumerations
#They are used when we know all the values a variable can take

#Fcators have two components
#The lables which are the values
#The levels which define the allowed set of values 
#Lables     Good Bad Bad Good Good Good Bad Bad Good Good
#Levels     Good Bad


#Creation
#factor()

x=factor(c("AA","BB","CC"),levels=c("AA","BB","CC","DD","EE"))
is.factor(x)            #TRUE
class(x)                #factor


x=factor(c("AA","BB","CC","ZZ"),levels=c("AA","BB","CC","DD","EE"))
#We will get a NA in 4th index becaus eit is not specified in levels


#Factors look like character vectors,but they are actually integers
class(x)        #factor
typeof(x)       #integer

#Lables  can be duplicated but levels cant be

#The levels in a factor are stored in alphabetical order
#or in the order they were specified to factor if they were specified explicitly


opinions=c("Horrible","Bad","Neutral","Good","Fantastic")
factor(opinions)    #Horrible,Bad,Neutral,Good,Fantastic        levels:Bad,Fantastic,Good,Horrible,Neutral

#Below we are explicitly specifying the levels
opf=factor(c("Horrible","Bad","Neutral","Good","Fantastic"),levels=c("Horrible","Bad","Neutral","Good","Fantastic"))
opf     #"Horrible","Bad","Neutral","Good","Fantastic"