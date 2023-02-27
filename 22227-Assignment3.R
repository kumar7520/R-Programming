# Pie Charts
# Create a vector of pies
x <- c(10,20,30,40)
mylabel <- c("Rohit", "Kohli", "Hardik", "Shami")
colors <- c("blue", "yellow", "green", "red")
pie(x, label = mylabel, main = "Runs Scored by Batsmen",col = colors)
legend("bottomleft", mylabel, fill = colors)


#Barchart
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x, width = c(1,2,3,4), col ="pink")

#Histogram
v <- c(19, 23, 11, 5, 16, 21, 32, 14, 19, 27, 39)

hist(v, xlab = "No.of Articles", col = "green",
     border = "black", xlim = c(0, 50),
     ylim = c(0, 5), breaks = 5)

#Line Chart
v <- c(17, 25, 38, 13, 41)
plot(v, type = "o")

#sCatter Plot
x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x, y, main="Observation of Cars", xlab="Car age", ylab="Car speed")


#R sTATISTICS
#mean
# Create a vector. 
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
result.mean <- mean(x)
print(result.mean)

#Median
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
median.result <- median(x)
print(median.result)

#Mode
# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
result <- getmode(v)
print(result)




