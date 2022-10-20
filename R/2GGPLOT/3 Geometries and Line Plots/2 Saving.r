#To save we use
ggsave(
    filename,
    plot=last_plot(),           
    device=NULL,                #specifying format .pdf,.jpeg
    path=NULL,                  #where to save
    scale=1,                    #scaling
    width=NA,                   #width of graph
    height=NA,                  #heigth of graph
    units=c("in","cm","mm"),    #units for above two
    dpi=300,
    limitsize=TRUE,
)


#   Suppose we used special fonts on our graph to save them we need to use cairop graphics library
ggsave(device=cairo_pdf)            #this enables us to save custom finst we used


p=ggplot(data=mpg,mapping=aes(x=displ,y=hwy))+geom_point()  #A scatter plot

#The labs function is used to name graph and axes
p=ggplot(data=mpg,mapping=aes(x=displ,y=hwy))+geom_point()+labs(title="Plot Title",x="Displacement",y="Highway")


p=ggplot(data=mpg,mapping=aes(x=displ,y=hwy))+geom_point()+labs(title="Plot Title",x="Displacement",y="Highway")+
theme(text=element_text(size=15,family="Poppins"))

ggsave("plot1.pdf",device=cairo_pdf)        #This will enable us to save the plot with custom theme we used earlier
