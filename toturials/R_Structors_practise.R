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
#___________🧠 ADVANCED VECTOR PRACTICE QUESTIONS IN R________----
  #______Q1. Dynamic Toppers by Subject____----
students <- c("Ali", "Sara", "John", "Zara", "Amna")
maths <- c(78, 92, 65, 88, 74)
science <- c(85, 89, 60, 91, 70)
# Write a function get_topper(subject_scores) that returns the topper name.
get_tooper<-function(scores){
  index <- which.max(scores)
  return(students[index])
}
get_tooper(maths)
# Return topper in both maths and science.
get_tooper<-function(a,b){
  index <- which.max(a)
  maths<-students[index]
  index<-which.max(b)
  science<-students[index]
  return(paste("math tooper:",maths, "||science tooper: ",science ))
}
get_tooper(maths,science)
# Identify students who scored above 80 in both subjects.

high_maths <- maths > 80
high_science <- science > 80
both_high <- high_maths & high_science
# Get the student names
top_students <- students[both_high]

print(top_students)
# Calculate average of both subjects per student and return the top 2 students based on it.





#list data structure in r that can hold different data type like String Numbers and even other list and function----
list<-list(
  name="ali",
  score=c(1,2,3),
  age=30
)
#Create a Student Profile----
student<-list(
  name="hamza",
  age=22,
  course=c("match","physics","biology"),
  gpa=3.6,
  graduated=FALSE
)
#   Print only the courses.
print(student[3])
# Add a new field email = "hamza@example.com" to the list.
student$email="hamza@example.com"
print(student)
# Update GPA to 3.8.
student[4]=3.8
print(student)
#________Loop Through a List___----
employees <- list(
  emp1 = list(name = "Ali", salary = 45000),
  emp2 = list(name = "Sara", salary = 52000),
  emp3 = list(name = "John", salary = 39000)
)
# Count how many employees earn more than 40,000.
d<c()
count<-0
for (i in employees) {
  if(i[salary]>40000){
    count<-count+1
  }
}
print(count)
# Loop through and print all employee names.
for (i in employees) {
  print(i[1])
}
 #________List of Vectors – Scores____----
scores <- list(
  Ayesha = c(88, 79, 95),
  Bilal = c(45, 60, 72),
  Zain = c(90, 92, 94)
)
# Return the name(s) of students whose average is above 85.
#first find the average
averages<-sapply(scores,mean)
top_students <- names(averages[averages > 85])
print(top_students)
# Calculate the average score for each student.
count<-length(scores$Ayesha) #count the element
ayeshatotal<-sum(scores$Ayesha) #sum the values
average<-ayeshatotal/count  #find the average
print(average)
#other options
averages <- sapply(scores, mean)
print(averages)

#_______ ADVANCED LEVEL LIST PRACTICE______-----
#______Nested Lists - University Data_____----
university <- list(
  CS = list(
    dept_head = "Dr. Khan",
    students = list("Ali", "Sara", "Usman"),
    subjects = c("AI", "DS", "ML")
  ),
  Bio = list(
    dept_head = "Dr. Hira",
    students = list("Zainab", "Ahmed","alia"),
    subjects = c("Genetics", "Botany")
  )
)
# Add a new subject "Cyber Security" to CS department.
university$CS$subjects <- c(university$CS$subjects, "Cyber Security")
print(university)
# Print all department heads.
print(university$CS$dept_head)
print(university$Bio$dept_head)
# Count total number of students in the university.
count1<-length(university$CS$students)
count2<-length(university$Bio$students)
totalStudent<-count1+count2
print(totalStudent)

#_______Filter from List of Lists
orders <- list(
  order1 = list(name = "Ali", total = 300, delivered = TRUE),
  order2 = list(name = "Sara", total = 800, delivered = FALSE),
  order3 = list(name = "John", total = 150, delivered = FALSE)
)
# Print names of customers whose order is not delivered.
for (i in orders) {
  if(i$delivered==FALSE){
    print(i$name)
  }
}
# Find the highest order total and corresponding customer.
totals<-sapply(orders, function(x) x$total)
max_total<-max(totals)
for (i in orders) {
    if(i$total==max_total){
      print(paste("Customer:", i$name))
      print(paste("Total:", i$total))
    }
}

#_____Create a Dynamic List with Loop___-----

#matrix data structure store 2 dimensional(row,col) of collection of the same type ----
# its like a table with rows and col but every element must be the same type
# nrow and ncol are use to control the size of matrix
m<-matrix(1:6,nrow = 2,ncol = 3)

# Transpose & Diagonal Matrix Operations
# 👉 Task:
#   Create a 3x3 matrix with any numbers.
a<-matrix(1:9,nrow = 3,ncol = 3)
# Print the transpose of that matrix (i.e., rows become columns).
print(t(a))
# Extract and print the diagonal values.
print(diag(a))
# Replace all diagonal values with 0 and print the new matrix.
m<-`diag<-`(a,0)
print(m)

# _______Row and Column Sums
# 👉 Task:
#   Create a 4x4 matrix filled with random numbers between 10 to 100.
no<-matrix(c(1:16),nrow = 4,ncol = 4)
# Calculate the sum of each row and each column.
 #calculate column each 
  print(paste("column 1 calculation",sum(no[,c(1)])))
  print(paste("column 2 calculation",sum(no[,c(2)])))
  print(paste("column 3 calculation",sum(no[,c(3)])))
  print(paste("column 4 calculation",sum(no[,c(4)])))
 #calculate each row
  print(paste("row 1 calculation",sum(no[c(1),])))
  print(paste("row 2 calculation",sum(no[c(2),])))
  print(paste("row 3 calculation",sum(no[c(3),])))
  print(paste("row 4 calculation",sum(no[c(4),])))
  #even shorter it r built in function
  print(colSums(no))
  
# Calculate the average (mean) of each row and each column.
  print(mean(no))
# Identify which row has the highest sum.
  x<-rowSums(no)
  print(x)
  b<-which.max(x)
  print(b)
  # _________Filter Values in Matrix
  # 👉 Task:
  #   Create a 3x5 matrix with values from 1 to 100.
  xx<-matrix(1:100, nrow = 10, ncol = 10)
  #   Print all the values greater than 50.
  print(xx[xx>50])
  # Replace all even numbers with the word "Even".
  cc<-as.character(xx)
  cc[as.numeric(cc)%%2==0]<-"even"
  print(cc)
  # Replace all odd numbers with the word "Odd".
  cc<- as.character(xx) #convert numeric to String
  cc[as.numeric(cc) %% 2 ==1]<-"odd"
  print(cc)
  
  #______ADVANCED LEVEL QUESTION – Dynamic Matrix with a Function____----
  # Write a function called generate_matrix(n) that:
  # Takes a number n as input.
  # Returns an n x n matrix.
  # Each element should be the product of its row and column index.
  generate_matrix<-function(n){
    mat<-matrix(nrow = n,ncol = n)
    for (i in 1:n) {
      for (j in 1:n) {
        mat[i,j]<-i*j
      }
    }
    return(mat)
  }
  generate_matrix(5)
 
  
  
