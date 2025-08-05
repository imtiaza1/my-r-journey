#an array is like matrix have more than 2 dimensional data of element of the same type in Multi dimension-----
# a array with one dimension values
anarray<-c(1:4)
data<-c(1,2,3,4,5,5,6,6,6,6)
data[7,2]
print()

# an array with more two dimensional values----
multiarray<- array(
  anarray,dim = c(1,2,3)
)
# data frame is like a table with spreadsheet its can hold different data type of element fo across multiple column
data<-data.frame(
  name=c("junain","ali"),
  age=c(10,20),
  country=c("karachi","gb"),
  score=c(100,20)
)








