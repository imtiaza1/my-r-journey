#____BASIC LEVEL (Filtering, Selecting, Access)----
students <- data.frame(
  name = c("Ali", "Sara", "John", "Amna", "Zain"),
  age = c(22, 25, 23, 21, 24),
  marks = c(78, 85, 92, 69, 88),
  passed = c(TRUE, TRUE, TRUE, FALSE, TRUE)
)
# Tasks:
# Show the names and marks of students who passed the exam.
d<-subset(students,students$passed==TRUE)
print(d[,c("name","marks")])
# Filter students who are older than 22 and scored more than 80 marks.
 ageFilter<-students[students$age>22,] #first filter >22
 ageFilter[ageFilter$marks>80,] #second filter score >80
# Select only the columns name and passed.
 students[,c("name","passed")]

 #----🔷 INTERMEDIATE LEVEL ________----
 products <- data.frame(
   item = c("Shirt", "Shoes", "Watch", "Bag", "Perfume"),
   cost = c(500, 1200, 1500, 700, 900),
   price = c(700, 1700, 2000, 1000, 1200),
   stock = c(10, 5, 2, 8, 4)
 )
 # Tasks:
   # Add a new column profit = price - cost.
   products$profit<-products$price - products$cost
   print(products)
   # Sort the data by profit in descending order.
   products[order(-products$profit),]
   # Save only items with stock less than 5 to "low_stock.csv".
   low_stock<-products[products$stock<5,] #filter stoce <5
   write.csv(low_stock,"low_stock.csv")
   
 #🔶 ADVANCED LEVEL______-----
   sales <- data.frame(
     seller = c("Ali", "Sara", "Ali", "Sara", "Zain", "Sara", NA),
     region = c("East", "West", "West", "East", "East", "West", "East"),
     amount = c(300, 500, NA, 450, 600, 520, 200)
   )
   library(dplyr)
   # Tasks:
   #   Remove all rows with any missing values.
   clean_sales<-sales%>%
     na.omit()
   print(clean_sales)
   # Group by seller and region, and calculate total sales amount.
   group_data<-clean_sales%>%
     group_by(seller,region)%>%
     summarise(total_sales=sum(amount))
   print(group_data)
   # Show only groups where total sales are more than 500.  
   groups<-clean_sales%>%
     group_by(seller,region)%>%
     summarise(total_sales=sum(amount))%>%
     filter(total_sales>500)
   print(groups)
 