#A bar plot shows the relationship between a numeric and categoric variable

#Bar plots vs histograms
#Histogram          #It requires continuous data
#stat_bin()         #statistical transformation     It counts daat points in bin    For this data has to be continuous
#geom_histogram()


#Bar Plot           #Discrete or continuous data
#stat_count()       #statistical transformation     It just counts no binning
#geom_bar()

diam=diamonds[1:100,]       #It creates a sub dataframe of diamonds dataframe with first 100 rows

ggplot(diam,aes(x=depth))+geom_histogram()

ggplot(diam,aes(x=depth))+geom_bar()        #It counts data for that value so many values on x-axis no binning

ggplot(diam,aes(x=cut))+geom_bar()
ggplot(diam,aes(x=cut))+geom_histogram()    #We cant draw a histogram as data on x is discrete

#geom_col is  ageom_bar with no statistical transformation
#geom_bar()     stat="count"        Needs x
#geom_col()     stat="identity"     Needs x and y   

#Options for bar plots
#   position_stack
#   position_fill
#   position_dodge/dodge2
#   use facet

#In the below plots the teh different types of clarity are stacked upon one another for same cut
ggplot(diam,aes(x=cut,fill=clarity))+geom_bar()                 #default stack
ggplot(diam,aes(x=cut,fill=clarity))+geom_bar(position="stack")
#This makes difficult to comapre between different cuts

#All bars have same height and the fill is proportional
ggplot(diam,aes(x=cut,fill=clarity))+geom_bar(position="fill")

#This creates a seperate bar for each clarity at that cut so at cut there will be n bars
ggplot(diam,aes(x=cut,fill=clarity))+geom_bar(position="dodge")
ggplot(diam,aes(x=cut,fill=clarity))+geom_bar(position=position_dodge(preserve="single"))   #All bars will have same width



ggplot(diam,aes(x=cut,fill=clarity))+geom_bar()+facet_wrap(vars(clarity))