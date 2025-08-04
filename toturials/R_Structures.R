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


# __________List -----________-----
# list is a data structure in R that can hold different data type like --number string vectors even other list or fucntion
my_list<-list(
  name="ali",
  age=30,
  score=c(80,30,20),
  passed=TRUE
)
   #access the list
   my_list[1]
   print(my_list)
   # to change this item value
   my_list[1]="alee"
   print(my_list)
   my_list[1]
   # to find list length()
   length(my_list)
   #// check if item exist 
   my_list%in% "alee"
   #add item end of the list
   append(my_list,"heii")
   #add a new field 
   my_list$email="hello@hello.com"
   print(my_list)
   #remove list item through index
   new_list<-my_list[-1]
  print(new_list)
  # find range of indexes
  thislist <- list("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")
  (thislist)[3:6]
  # names() used get the keys from list vector and data frame
  print(names(my_list))
  # loop through a list 
  #for loop print all the item in the list one by one 
  for (x in thislist) {
    print(x)
  }
  #join two list
  list1 <- list("a", "b", "c")
  list2 <- list(1,2,3)
  list3<-c(list1,list2)
  print(list3)
#________Matrix______------
# matrix is a 2 dimensional (row+column) collection of element of the same type --usually numeric
 #its like a table with rows and column but every element must be the same
m<-matrix(1:6,nrow=2,ncol=3)  #use nrow and ncol to control the size of the matrix
  #access matrix item using []. the first no 1 in the [] specifies the row-position
    # and the 2nd 2 no in the [] specifies the column-position
  print(m)
  m[1,2]
  # To access a whole row in a matrix, use a comma (,) after specifying the row number inside square brackets []
  m[2,]
  
  # To access a whole column, use a comma before specifying the column number
  m[,2]
  
  # To access more than one row, use the c() function
  m[c(2),]  # or m[c(2, 3),] for multiple rows
  
  # To access more than one column, use the c() function as well
  m[,c(2)]  # or m[,c(1, 3)] for multiple columns
  
  #add rows and column
  # use cbind() function to add additional column in a matrix
  thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
  newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
  print(newmatrix)
  
  # note the cell in new column must be the same length as existing column
  
  # use rbind() func to add row in a matrix
  thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
  
  newmatrix <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
  
  # removes rows and column 
  #c() to remove rows and column in a matrix
  thismatrix <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)
  
  thismatrix<-thismatrix[-c(1),-c(1)]
  print(thismatrix)
  
  #check if item exist
  thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
  "apple"%in%thismatrix
  
  #dim() use to find the number of rows and column in a matrix
  dim(thismatrix)
  
  #loops thro matrix
  for (i in thismatrix) {
    print(i)
  }
  
  #use rebind() and cbind() func to two are more matrix in rows and column
  Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
  Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)
  # Adding it as a rows
  Matrix_Combined <- rbind(Matrix1, Matrix2)
  Matrix_Combined
  
  # Adding it as a columns
  Matrix_Combined <- cbind(Matrix1, Matrix2)
  Matrix_Combined
  
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
