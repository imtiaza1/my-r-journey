# very basic -----
  # create a variable and store the name and print it -----

    name<-"ali"
    print(name)

    
  # write and if else statement to check weather number is positive or negative and 0----
  
  a<- -10
  if(a>0){
    print("number is positive")
  }else if(a< 0){
    print("number is negative")
  }else{
    print("number is positive")
  }
  
 
  # create a function that take two number and return their product ----
  
  product<- function(a,b){
    return(a*b)
  }
  product(1,5)
  

  
  # use a for loop to print number from 1 to 5----
  
  for (i in 1:5) {
    print(i)
  }
  
  #Use arithmetic operators to calculate (10 + 5) * 2 / 3----
  a<- 10
  b<- 5
  c<- 2
  d<- 3
  result <- (a + b) * c / d
  print(result)
  
  # Check if 10 > 5 and 5 == "5" and print the result.----
  
  if(10>5 && 5=="5" ){
    print(TRUE)
  }else{
    print(FALSE)
  }
  
  #Concatenate "Hello" and "World" with a space in between.----
  
  paste("Hello","world")
  
  
  #Use sqrt(), abs(), and round() functions on the number -8.9----
  
  print(sqrt(-8.9))
  print(abs(-8.9))
  print(round(-8.9))

# medium basic----
  # Write a program that checks if a variable fruit <- "apple" is equal to "banana" or not. Print "Yes, it's banana" or "No, it's not banana".
  fruit <- "apple"
  if(fruit=="banana"){
    print("yes it's banana")
  }else{
    print("NO, it's not banana")
  }
  
  #Create a function called check_even() that takes one number. If it’s even, return "Even" else return "Odd".
  check_even<- function(a){
    if(a%%2==0){
      return("Odd")
    }else{
      return("Even")
    }
  }
  check_even(5989)
  
  #Write a for loop that prints the square of numbers from 1 to 5
  for (i in 1:5) {
    print(i^2)
  }
    
  #Use a while loop to print "R is cool!" 3 times.
  i<-0
  while (i<3) {
    print("R is cool!")
    i<-i+1
  }
  
  #Write a condition to check if a number is between 10 and 20 (inclusive). Use and operator.
  number<-1
  if(number>=10 && number <=20){
    print("yes the number is between 10 and 20")
  }else{
    print("No, not the number is between 10 and 20")
  }
  
  #Given a <- 7, b <- 2, use arithmetic and relational operators to check if (a * b) > (a + b).
  a<-7
  b<-2
  if((a*b)>(a+b)){
    print(TRUE)
  }else{
    print(FALSE)
  }
  
  #Create a string msg <- "Hello R" and find out how many characters it has using nchar()
  msg<- "hello R"
  print(nchar(msg))
  
  #Generate a random number between 1 and 100 using sample() function.
  print(sample(1:100,1))
  
  #Write a function sum_n(n) that calculates the sum of numbers from 1 to n using a loop.
  sum_n<-function(a){
    total<-0
    for (i in 1:a) {
      total<-total+i
    }
      return(total)
  }
  sum_n(2)
  
  
  
  
  
  
  
  
  
  

#---------------intermediate  questions----------------
  #Write a function calc_discount(price)
  # If price > 1000 → 20% discount
  # If price between 500 and 1000 → 10% discount
  # Else → 5% discount
  # Return final price after discount
  calc_discount<-function(price){
    if(price>1000){
     discountPrice<- (price/100)10
     return(paste("your discount price is",discountPrice))
    }else if(price>=500 && price<=1000){
      discountPrice<-(price/100)10
      princ
    }
  }
  