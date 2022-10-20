#Position Adjustment:Stack,fill,dodge

#   position_stack()
#   stacks geosm on top of each other
#   Parameters
#   reverse-(default=F)If TRUE,will reverse the default stacking order


#   position_fill()
#   stacks geosm on top of each other and standardizes the 
#   Parameters
#   reverse-(default=F)If TRUE,will reverse the default stacking order

#The parts of bar of different vs types stack over each other
ggplot(mtcars,aes(x=factor(cyl),fill=factor(vs)))+geom_bar(alpha=0.5)

#This makes the parts of different vs types the bar overlap on each other
ggplot(mtcars,aes(x=factor(cyl),fill=factor(vs)))+geom_bar(alpha=0.5,position="identity")

#The parts of bar of different vs types stack over each other
ggplot(mtcars,aes(x=factor(cyl),fill=factor(vs)))+geom_bar(alpha=0.5,position="stack")

#All bars have same height
#Proportion of color changes based on type in the bar
ggplot(mtcars,aes(x=factor(cyl),fill=factor(vs)))+geom_bar(alpha=0.5,position="fill")

#reverse order
ggplot(mtcars,aes(x=factor(cyl),fill=factor(vs)))+geom_bar(alpha=0.5,position=position_fill(reverse=T))



#   position_dodge()
#   dodging preserves the vertical position of a geom while adjusting horizontal position


#   position_dodge2()
#   New version,adds padding,doesnt require a group variable




#The parts of bar of different vs types stack over each other
p=ggplot(mtcars,aes(factor(cyl),fill=factor(vs)))+geom_bar()

#The parts of bar of different vs types =are next to each other
p=ggplot(mtcars,aes(factor(cyl),fill=factor(vs)))+geom_bar(position="dodge")

#The parts of bar of different vs types =are next to each other with some space in between different types
p=ggplot(mtcars,aes(factor(cyl),fill=factor(vs)))+geom_bar(position="dodge2")

#   Parameters
#   width(Default=0.9)
#   preserve-"single"/"total"    (Default=total)

p=ggplot(mtcars,aes(factor(cyl),fill=factor(vs)))+geom_bar(position=position_dodge())

#The parts of bar of different vs types =are next to each other with some space in between different types
p=ggplot(mtcars,aes(factor(cyl),fill=factor(vs)))+geom_bar(position=position_dodge(width=0.9))

#When a point has no other type the width of total bar increases in size to sum of all types
#preserve="single" makes the only bar preserve its single width and not widen
p=ggplot(mtcars,aes(factor(cyl),fill=factor(vs)))+geom_bar(position=position_dodge(preserve="single"))


#   Parameters  only for dodge2
#   reverse(Default=F)              #bars in reverse order
#   padding(Default=0.1)            #space between bars of different types
p=ggplot(mtcars,aes(factor(cyl),fill=factor(vs)))+geom_bar(position=position_dodge2(preserve="single",padding=0.4))