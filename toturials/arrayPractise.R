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

# _______1. BASIC LEVEL QUESTION – Create and Access an Array-----
# 🧠 Task:
#   Create a 3x3x2 array using numbers from 1 to 18.
c<-array(1:16,dim = c(3,3,2))
# Then:Print the entire array.
print(c)
# Access and print: 
#All values in the first layer.
print(c[,,1])
# The element at [row 2, column 3, layer 2].
l2<-c[,,2] #first access the layer 2
print(l2[c(2),c(3)]) # now print
print(c[2,3,2])

# ______INTERMEDIATE LEVEL QUESTION – Find Row Sums from All Layers___----
# 🧠 Task:
#   Create a 4x2x3 array filled with random numbers from 1 to 100.
arr<-array(sample(1:100,24),dim = c(4,2,3))
# For each layer: 
#   Print the layer number.
for (i in 1:dim(arr)[3]) {
  print(i)
}
# Calculate and print the row-wise sum using rowSums().
print(rowSums(arr))

# _____ ADVANCED LEVEL QUESTION – Cross-Layer Comparison at Each Position----
# 🧠 Task:
# Step 1: Create a 3x3x3 array with random values from 1 to 50
a <- array(sample(1:50, 27, replace = TRUE), dim = c(3, 3, 3))

# Step 2: Print the array for reference
print("Array content:")
print(a)

# Step 3: Check where layer 1 value is greater than layer 2 and 3 at same [i, j]
for (i in 1:3) {          # loop through rows
  for (j in 1:3) {        # loop through columns
    if (a[i, j, 1] > a[i, j, 2] && a[i, j, 1] > a[i, j, 3]) {
      cat("Layer 1 is greatest at [", i, ",", j, "] →", a[i, j, 1], "\n")
    }
  }
}










