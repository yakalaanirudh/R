walmart_data=read.csv('./data/walmart_data.csv')
walmart_features=read.csv('./data/walmart_features.csv')

n_rows=nrow(walmart_data)           #Gives number of 

head(walmart_data,5)                #First 5 rows of 

#rows per store
rows_per_store=table(walmart_data$store)           #table(dataset_data$the column we want to be counted by)

#It returns a vector of number of rows per each store

#   1       2       3       4       5           store number
#   10244   10238   9036    10272   8999        number of rows

#Coverting to data frame
rows_per_store=as.data.frame(rows_per_store)


#Extracting the store with most rows
rows_per_store[order(rows_per_store$Freq)]      #dataset[order(dataset$column to be ordered)]
rows_per_store[order(-rows_per_store$Freq)]     #reverse order


#Summing store with most rows
#This gives two columns         1   store number        2   sum of sale
sum_by_store=aggregate(
    x=walmart_data$weeklySales,             #dataset
    by=list(walmart_data$Store),            #it must be list    by=list(data_Set$column to aggregate)
    FUN=sum                                 #function
)


#Modifying column names
colnames(sum_by_store)=c("store_num","total_sales")


#Mean of all columns
sapply(X=walmart_features,FUN=mean,na.rm=TRUE)

#Creating a new column
walmart_data$CPI        #accessing that column

#na.rm remove where data =na
(walmart_data$CPI-mean(walmart_data$CPI,na.rm=TRUE))/sd(walmart_data$CPI-na.rm=TRUE)

#walmart_features$standard_CPI  new column name is standard_CPI
walmart_features$standard_CPI=(walmart_data$CPI-mean(walmart_data$CPI,na.rm=TRUE))/sd(walmart_data$CPI-na.rm=TRUE)



#Plotting sales by store for a particular date
store_1=walmart_data[walmart_data$store==1,]        #filtering
#The above creates  adf of store,dept,date,weekly_sales,isholiday

sales_by_date=aggregate(
    x=store_1$weekly_sales,
    by=list(store_1$date),
    FUN=sum
)

#The above creates a df of two columns      date and sales for that date