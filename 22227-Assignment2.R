#Arithmetic Operations
a<-c(1,3,5,7)  
b<-c(2,4,6,8)  
a+b  
a-b  
a/b  
a%%b 
#Computatuions on Matrix


# Create two 2x3 matrices.
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)

matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

# Add the matrices.
result <- matrix1 + matrix2
cat("Result of addition","\n")
print(result)

# Subtract the matrices
result <- matrix1 - matrix2
cat("Result of subtraction","\n")
print(result)

#Control Structures
#IF Else Statements

a <- 5
b <- 6
if(a<b){
  print("a is smaller than b")
}


a <- 5
b <- 5
if(a<b){
  print("a is smaller than b")
} else if(a==b) {
  print("a is equal to b")
} else {
  print("a is greater than b")
}



#For Loops
vec <- c(1:10)
for(i in vec){
  print(vec[i])
}

#While Loops
i <- 0
while(i<10){
  print(paste("this is iteration no",i))
  i <- i+1
}

#Repeat Loop
vec2 <- 1:40
x <- 15
i <- 1
repeat{
  if(i == x){
    print("found it!!")
    break
  }
  print("not found!")
  i <- i+1
}

#Break Statement
for(i in vec){
  print(paste("this is iteration no ", i))
  if(i==7){
    print("break!!")
    break
  }
}

