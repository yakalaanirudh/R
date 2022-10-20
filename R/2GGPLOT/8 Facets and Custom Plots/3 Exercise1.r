ggplot(iris,aes(x=Sepal.Length,y=Petal.Length))+geom_point(aes(color=Species))

ggplot(iris,aes(x=Sepal.Length,y=Petal.Length))+
geom_point(aes(color=Species))+facet_wrap(vars(Species))

#One of the major drawbacks of faceting is it wont allows us to see other multiples dat in our current plot
#To overcome this we can create a second dataset without the species group and plot it in every multiple

iris2=iris[-5]      #new dataset iris2 withput 5th column

ggplot(iris,aes(x=Sepal.Length,y=Petal.Length))+
geom_point(iris2,color="gray")+
geom_point(aes(color=Species))+facet_wrap(vars(Species))

