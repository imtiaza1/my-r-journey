#Loops in R ----
 # loops can axecute a block of code as long as a specified condition is reach
 # loops are handy because they save time diminish error and they make code more readable
 # R hve two loop while and for

 # while loop----

 i<-0
 while (i<6) {
   print(i) # print i as long as i 6
   i<-i+1
 }
 # with break statement exit the loop even if the condition is true
 i<-0
 while (i<10) {
   print(i)
   if(i==5){ # loops is break when its reached the values 5 
     break
   }
   i<-i+1
 }
 # Using 'next' statement to skip a specific value without interrupting the loop
 
 i <- 0
 while (i < 5) {
   i <- i + 1
   
   if (i == 3) {
     # Skip the value 3 and continue with the next iteration
     next
   }
   
   print(i)
 }
 # using if else in while loops 
 i<-1 
 while (i<6) {
if(i<4){
  print("hello")
}else{
  print("helllooo")
}
   i<-i+1
 } 
 
 # for loop----
  #for loop use to print the number or values over a sequance
  #eg print 1 to 5
   for (i in 1:5) {
     print(i)
   }
  # with for loops we can set of statement one of each item in vector lista array etc
 num<-c(1,2,3,4,3,2,1)
 
 for (i in num) {
   print(i) # print every item in a list
 }
 # nested loops----
 # all long as we place a loop inside an another loop called nested loop
 fruit<-c("apple","mango","orange","banana")
 for (i in fruit) {
   for (a in fruit) {
     print(paste(i,a))
   }
 }
 
#function in R ----
 
   my_fun<-function(){
     print("hello world!")
   }
   my_fun() # call the function
   # argument
   my_fun_2<-function(a){
     print(a)
   }
   my_fun_2(20)
   
 #nested function
   # there are two way to create a nest function
    #call the funtion within another function
   my_call<-function(){
     my_fun()
   }
   my_call()
    #create the function within a function
     outer_fun<-function(a){
       inner_fun<-function(b){
         c<-a+b
         return(c)
       }
       return(inner_fun)
     }
     output <-outer_fun(3)
     output(6)
   