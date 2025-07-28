# Variables in R ----
# We can create variables using "=" or "<-"
# But R recommends using "<-" because "=" is mostly used inside functions

# variables type in R 
# Numeric
x <- 10


# Integer
y <- 5L


# Character
name <- "String"


# Logical
isPassed <- TRUE

# Complex
z <- 4 + 2i

 # checking data type in R 

class(isPassed)



# Output in R ----
# You can just write a variable or value, and R will show it.
# But if your code is inside curly braces `{ }`, then use print() to make sure it shows the result.

print("Hello")








# Concatenate element ----
#  we can use concatenate or join two or more element by using past() func
# two combine both text and a variable r us comma (,)
text <- "hello"
text1 <- "ali"

paste(text, "ali")

#we can also use comma to add variable to another
paste(text,text1)
 # for the number the + character work as a mathematical operators
number<-2
number1 <-3
number + number1

# if you combine a string(text) and a number R will give you error 
number+text



# Multiple Variables ----
# R allows us to assign the same value to multiple in one lines:
var1 <- var2 <- var3<- "apple"
print(var1)



 # Variable Name ----
 #  a variable name must start with letter n can be combine with letter digit n dot 
 # a variable name can't be start with "_" and numbers
 # variable name are case sensitive (age,Age are different variables)

# Legal variable names:
myvar <- "John"
my_var <- "John"
myVar <- "John"
MYVAR <- "John"
myvar2 <- "John"
.myvar <- "John"



# R Math ----
# In R can use operators to perform common mathematical operation on numbers

# build in math funtion 
 # R also has many build-in function that allows us to perform math task on numbers

# eg 

min(10,2,3,4) # its find the lowest number
max(1,2,3,4,4) # its find the highest number
sqrt(9) # this return the square root of a number
abs(-4.7)# this fun returns the positive value of number
ceiling(1.4) # round a number upwards to its nearest integer
floor(1.4) # round a number downwards to its nearest integer


# Escape characters in R ----
# \\	Backslash
# \n	New Line
# \r	Carriage Return
# \t	Tab
# \b	Backspace
# by the output when use escape char to see result "cat()"

str <- "lorem ispen djk djk \n hello \r \bw\Tabork"
cat(str)



# Operators in R ----
 # operators are use to perfrom operation on variable and value
  # Arithmetic Operators 
    # this operators are used numeric values to perform common math operations
      # + addition 
      x+y
      # - subtraction 
      x-y
      # * multiplication
      x*y
      # / division 
      x/y
      # ^ exponent
      x^y
      # %% modulus (reminder from division)
      x%%y
  # Assignment Operators 
    # this operators are used to assign values to variables
      my_var<-3
      3->my_vary
      
  # Comparison Operators
   #  this is use to compare two values
      x==y #equal
      x>y #greater than
      x<y #less than
      x!=y #not equal 
      x=>y #great than or equal to
      x<=y #less than or equal to
      
  # Logical Operators 
   # used to combine conditional statements
      #&& # and operate return true if both element are true
      a<-10
      b<-10
      if(a>9 && a<=11 ){
        print(TRUE)
      }else{
        print(FALSE)
      }
      #|| # or operators return true if one of the statement true
      if(a>9 || a<=10 ){
      print(TRUE)
      }else{
        print(FALSE)
      }
      
    
      



# if else && nest if statement
  
      x <- 41
      if(x>10){
        print("above ten")
        if(x>20){
          print("above 20")
          if(x>50){
            print("above 50")
          } else {
            print("but not above 50.")
          }
        } else {
          print("but not above 20.")
        }
      }else {
        print("below 10.")
      }