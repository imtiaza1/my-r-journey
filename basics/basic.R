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
text <- "ali"

paste(text, "ali")

#we can also use comma to add variable to another
paste(text,text1)
