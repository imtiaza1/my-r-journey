#R_Structure---
#data structure are to store organize value
# r provide many built in data structures

#Vectors----

  # vector is the most basic data structure in R it contain a list of item of the same type
  fruit<-c("banana","apple","mango","apple")
  # to create vector with  numerical values in a sequence use : operators
  a<-c(1:10)
  
  #---------MOST USED VECTOR STUFF IN R__________----
  # length count the element
  length(fruit)
  
  #type defind data type in vector
  typeof(fruit)
  class(fruit)
  
  # sort() -Sort ascending or descending
  sort(fruit)
  sort(fruit,decreasing = TRUE)
  
  #unique() remove duplicates
  unique(fruit)
  
  #which() find index of matching value
  which(fruit=="apple")
  
  #sum() / mean() / max() / min() 
  a<-c(1,2,3)
  sum(a)
  max(a)
  min(a)
  mean(a)
  
  #rev() – Reverse order
  rev(a)
  
  #indexing access or remove element 
  a[5]
  a[-1] #remove first element
  
  #Logical filter select values matching a condition
  a[a<2]
  a[a>=1]
  
  #any() / all() check if any/all condition are true
  passed<-c(FALSE,FALSE,TRUE)
  d<-c(1,2,3,4,5,)
  
  any(d>2) #true cause some no is >2
  all(d>4) #false cause not all no is >2
  
  any(passed) # true (mean at least one passed)
  all(passed) # flase cause not all passed
  
  #is.na() – Check missing values handle missing values
  x<-c(1,NA,3)
  is.na(x)
  x[!is.na(x)]
  
  # match() – Find index/Position of Values in Another Vector
   a<-c(1,2,3,4)
   b<-c(2,1,6,7,7)
   match(2,a) # 2 because 2 at position 2 in a vector
   match(c(1,2),a) # multiple values
  
  # %in% – Check if value exists in another vector
   a%in%b


# List -----

# list is a data structure in R that can hold different data type like --number string vectors even other list or fucntion
my_list<-list(
  name:"ali",
  age:30,
  score=c(80,30,20),
  passed=TRUE
)

#Matrix
# matrix is a 2 dimensional (row+column) collection of element of the same type --usually numeric
 #its like a table with rows and column but every element must be the same
m<-matrix(1:6,nrow=2,ncol=3)
print(m)
#use nrow and ncol to control the size of the matrixs


#Array----
# an array is like a matrix but can have more than two dimensions its store element of the same type in multiple dimension
# an array with one dimension with values ranging from 1 to 24
thisarray<-c(1:24)
print(thisarray)
# an array with more than one dimension
multiarray<-array(thisarray,dim = c(1,2,3))
print(multiarray)
# array are usefull for working 3d or higher dimensional data
#data frames-----
# data frames is like a table in a spreadsheet it can hold different type of data across multiple column
sf<-data.frame(
  name=c("ali","zara","sahi"),
  age=c(20,21,22),
  passed=c(TRUE,TRUE,FALSE)
)
print(sf)
