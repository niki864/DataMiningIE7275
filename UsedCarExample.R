filename <- "UsedCar.csv"
dataset <- read.csv(filename,header = TRUE)
summary(dataset)
range(dataset$price)
diff(range(dataset$price))
IQR(dataset$price)
quantile(dataset$price)
boxplot(dataset$price, main = "Box Plot of Used Car Prices ($)", ylab="Prices ($)")
hist(dataset$price, main = "Histogram of price ranges",ylab = "Frequency", xlab = "Prices $")
