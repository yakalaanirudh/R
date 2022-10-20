#Creating a vectoe
cities_population = c(100000,300000,500000,7852003,56516)
#OR
#cities_population <- c(100000,300000,500000,7852003,56516)
#As soon as we create an object it will be created in the environment


#Removing an object from environment
#rm(cities_population)


#Indexing starts at 1
cities_population[1]                #100000
cities_population[10]               #NA
cities_population[1:3]              #100000,300000,500000
cities_population[c(1,4)]           #100000,7852003         We get 1 and 44th element


#Calculations
sum(cities_population)              #Sum of all elements            #we cana lso do melons[1]+melons[2]+melons[3]+.... 
cities_population*2                 #each element multiplied by 2   #we can also do melons+melons
sqrt(melons)                        #sqrt of all elements
exp(melons)                         #every element exponential


adjusted_weight_melons=c(1.2,1.2,1.2,1.3,1.3)
melons*adjusted_weight_melons       #multiplying each elemnt by another vectors respective 

#If we multiply a 5 element(A) vector with a 4 element vector(B) the 5 element of A will be multiplied with 1st elemnt of B
#If we multiply a 5 element(A) vector with a 4 element vector(B) the 5 element of A will be multiplied with 1st elemnt of B
#The longer's length should be a  multiple of shorter's length
c(1,2,3,4)+c(1,2) =2,4,4,6
c(1,2,3,4)*c(1,2) =1,4,3,8

mean (melons)
median(melons)
length(melons)
sd(melons)
sort(melons)
sort(melons,decreasing=TRUE)
sum(melons,na.rm=TRUE)          #It removes NA only
#If the vector has  ainfinity 10/0 then na.rm doesnt remove it


#Comparision Operators
#Vectors are one dimensional objects
apples=c(1,2,3,4,5)
apples>2                #FALSE FALSE TRUE TRUE TRUE
apples[apples>2]        #3,4,5
apples==4
apples!=3

which(melons>2)         #3,4

#
#melons=c(1,2,3,4,5,6,7)
#which(melons>3)
#


#Vector Names Property
countries=c(3516516,351651,351616,351651,5161)
names(countries)=c('A','B','C','D','E')
countries['A']      #3516516
countries['A','B']          #error       because it is like giving two dimension sand vector is unidimenisonal
countries[c('A','B')]       #3516516,351651
names(which(countries>200000))    #A B C D E



#Modifying vector elements
melons[1]=20
melons[2:4]=c(10,11,12)
#If we do not have that index R will add it

melons[melons<2]=3      #change value <2 to 3

mangoes=c(1,2,3,4,5)
mangoesa=mangoes(c(2,4))        #2,4
mangoesb=mangoes(-c(2,4))       #1,3,5


cars=c(10,20,30,40,50)                      #10,20,30,40,50
cars1=cars+1                                #11,12,13,14,15
discount=c(0.1,0.2,0.3,0.4,0.5)             #0.9,0.8,0.7,0.6,0.5
discounted_price=cars*(1-discount)          #9,16,21,24,25


# we can also create vector like a=1:4      1,2,3,4