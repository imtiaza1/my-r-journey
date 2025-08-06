# r data frame
 # a Data frame is like a table rows and column 
 # each column can be different data types like(numeric character logical) 
 #creating a data frame

 df<-data.frame(
   name=c("ali","sare","alio"),
   age=c(25,30,31),
   passed=c(TRUE,TRUE,FALSE)
 )
 print(df)
 
 # views first/last row()
 head(df) # views first 6 rows
 tail(df,3)  #last 3 rows
 
 #Structure and Summary
 str(df) #see structure
 summary(df) #quick summary of each column
 
 # Access column 
 df$name #access column name 
 
 #filter row
 df[df$age>30] #age grater than 30
 subset(df,passed==FALSE) # only fails student
 
 #select column 
 df[,c("name","passed")] # only name and passed student shows 
 df[,c(1)]
 print(df)
 
 #add a new column
 df$grade<-c("b","a","c") #add a column
 print(df) 
 
 #remove column
 df$grade<-NULL  # delete the column
 print(df) 
 
 #sort rows
 df[order(df$age)] #ascending age
 df[order(-df$age)] # descending age
 
 # Read and Write Files (used a lot!)
 read.csv("file.csv") #read csv
 write.csv(df,"out")  # write csv
 
 # Cleaning Data (used in analytics)
 df<-na.omit(df)
 df[is.na(df)]<-0
print(df) 
 #Use with dplyr (used in modern R projects)
library(dplyr)
df %>%
  filter(age > 24) %>%
  select(name, age,passed) %>%
  arrange(desc(age)) # clean + sort pipeline

# Combine Data Frame
# row-wise (same columns)
marks<-c("imtiaz",30,TRUE) 
df<-rbind(df,marks) 

# column wise(same rows)
grade<-c('a','b','b')
df<-cbind(df,grade)
print(df)


