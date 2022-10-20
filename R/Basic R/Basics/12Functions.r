mean(c(10,20,30,40))            #25

customfunc=function(){
    sum_vector=sum(c(10,20,30,40))
    print(sum_vector)
}


#No if w etype customfunc()  we will get 100

custom_mean=function(){
    sum_vector=sum(c(10,20,30,40))
    return (sum_vector/length(c(10,20,30,40)))
}


#With arguments
custom_mean_args=function(my_vector){
    sum_vector=sum(my_vector)
    mean_is=sum_vector/length(my_vector)
    return mean_is
}

custom_mean_args(c(10,20,30,40))            #25


#Control Flow Loops
#For loop
custom_for_loop=function(my_vector){
    for(i in my_vector){
        print(i)
    }
}


#If loop
custom_if=function(my_vector){
    if(class(my_vector)=="character"){
        print("Please pass a numeric vector")
    }
    else{
        for(i in my_vector){
        print(i)
    }
    }
}


#While Loop
custom_while_loop=function(my_vector){
    i=1
    while(i<=length(my_vector)){
        print(my_vector[i])
        i=i+1
    }
    print("We reached the end of vector")
}


#Exercise 1
plot_store_department=function(store_number,dept_number){
    filtered_data=walmart_data[walmart_data$Store==store_number&walmart_data$Dept==dept_number]
    
    p=ggplot(filtered_data,aes(x=Date,y=Weekly_sales,group=1))+geom_line()
    return p
}

plot_store_department(1,1)



#Exercise2
plot_a=function(store_number,dept_number,colorarg){
    filtered_data=walmart_data[walmart_data$Store==store_number&walmart_data$Dept==dept_number]
    
    p=ggplot(filtered_data,aes(x=Date,y=Weekly_sales,group=1),)+geom_line(color=colorarg)
    return p
}

plot_store_department(1,1,"red")

