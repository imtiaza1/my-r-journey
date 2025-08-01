# R structure 
# data structure are to store organize values
# r provide many build in data structures--vector matrix array list data frames
# vectors is the most basic data structure in r its can hold of element of the same type 
num<-c(1,2,3,4,)

# -------problem cleaning vector_______----
ages <- c(25, 30, NA, 25, 40, 18, NA, 30)
cleaned<-ages[!is.na(ages)] # remove missing values
unique(ages) #remove duplicate values
sort(ages) # sorting the cleaned vector in ascending order
length(ages>25) # count people are above 25 years old
mean(cleaned) # find the average age of cleaned vector

#________Problem 2: Logical Filtering_____----
temps <- c(34, 39, 42, 28, 31, 35, 40,43)
sum(temps>=30 & temps<=40)  #Count how many are between 30 and 40 (inclusive).
temps[temps>35] # find temperature >35
any(temps>45) # Check if any value is above 45.
all(temps>25) # Check if all values are above 25.

#_________ Problem 3: Product Sales Summary______------
sales <- c(200, 300, 150, 200, 300, 100, 250)

# Find unique sales values.
unique(sales)
# Find the total sales.
sum(sales)
# Find the max and min sales values.
max(sales)
min(sales)
# Reverse the vector.
rev(sales)
# Find the position (index) where sales == 100.
which(sales==100)

#______________Problem 4: Name Filtering with %in%_______-----
customers <- c("Ali", "Sara", "John", "Amna", "Ali", "Zara")
vip_list <- c("Zara", "Ali")
# Find which customers are VIPs.
v<-customers%in%vip_list
# Remove duplicate names.
unique(customers)
# Count how many unique VIPs are in the list.
sum(v)

#_________Problem 5: Match & Position_______-----
product_ids <- c(101, 102, 103, 104, 105)
sold_ids <- c(103, 105)
# Find the positions of sold_ids in product_ids.
match(sold_ids,product_ids)
# Use %in% to return TRUE/FALSE for each product_id if it was sold.
product_ids%in%sold_ids
# Filter only the sold product_ids from the main list.
#_______Problem 6: Student Scores______----
scores <- c(55, 60, 78, 82, 90, NA, 45, 67,79)
# Remove the missing (NA) score.
unique(scores)
# Count how many students scored above 70.
cleanedScores<-scores[!is.na(scores)]
sum(cleanedScores >= 70)
# Create a new vector with only passing scores (>= 60)
passing_scores <- scores[!is.na(scores) & scores >= 60]
print(passing_scores)
print(class(passing_scores))
#list data structure in r that can hold different data type like String Numbers and even other list and funtion----
list<-list(
  name="ali",
  score=c(1,2,3),
  age=30
)
print(list)
#matrix data structure store 2 dimensional(row,col) of collection of the same type ----
# its like a table with rows and col but every element must be the same type
# nrow and ncol are use to control the size of matrix
m<-matrix(1:6,nrow = 2,ncol = 3)


#an array is like matrix have more than 2 dimensional data of element of the same type in multi dimension-----
# a array with one dimension values
anarray<-c(1:4)


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