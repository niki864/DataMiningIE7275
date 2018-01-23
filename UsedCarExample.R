filename <- "UsedCar.csv"
dataset <- read.csv(filename,header = TRUE)
summary(dataset)
range(dataset$price)
diff(range(dataset$price))
IQR(dataset$price)
quantile(dataset$price)
#Simple graphing functions
boxplot(dataset$price, main = "Box Plot of Used Car Prices ($)", ylab="Prices ($)")
hist(dataset$price, main = "Histogram of price ranges",ylab = "Frequency", xlab = "Prices $")
var(dataset$price)
sd(dataset$price)
sqrt(var(dataset$price))
model_table <- table(dataset$color)
model_table
color_pct <- prop.table(model_table)*100
color_pct
roundpct <- round(color_pct)
roundpct
dataset$conservative <- dataset$color %in% c("Black","Grey","White")
dataset$conservative
newdataset <- data.frame(dataset,dataset$conservative)
CrossTable(x=dataset$model,y=dataset$conservative)
###
###
#Boston Housing Example Textbook
###
###
housing <- read.csv("BostonHouse.csv",header=TRUE)
#peak at the top of the dataset
head(housing)
str(housing)
m0 <- mean(housing$MEDV[which(housing$CHAS==0)])
m1 <- mean(housing$MEDV[which(housing$CHAS==1)])
#Plot barplot
barplot(c(m0,m1), col = "Blue", ylab = "average MEDV",xlab="CHAS", names.arg = c("0","1"))
#par function forces plots onto the same graph
par(mfrow=c(2,2))
boxplot(housing$NOX[which(housing$CAT..MEDV==0)],housing$NOX[which(housing$CAT..MEDV==1)],names = c("0","1"),xlab="CAT..MEDV",ylab="NOX",outline = FALSE)
boxplot(housing$PTRATIO[which(housing$CAT..MEDV==0)],housing$PTRATIO[which(housing$CAT..MEDV==1)],names = c("0","1"),xlab="CAT..MEDV",ylab="PTRATIO",outline = FALSE)
par(mfrow=c(1,1))
#Pairwise comparision of the variables
pairs(~CRIM+INDUS+LSTAT+MEDV, data = housing)

plot(x=housing$CRIM, y=housing$MEDV)
#Log scale
plot(x=housing$CRIM, y=housing$MEDV, log = "xy")
plot(housing$LSTAT[which(housing$CAT..MEDV==0)],housing$NOX[which(housing$CAT..MEDV==0)],col="blue")
#Plotting points in the previous graph
points(housing$LSTAT[which(housing$CAT..MEDV==1)],housing$NOX[which(housing$CAT..MEDV==1)],col="red")
#Functional Programming
normalize <- function(x){
  return((x-min(x))/(max(x)-min(x)))
}
standardize <- function(x){
  return((x-mean(x))/sd(x))
}
normalize(housing$INDUS)
summary(normalize(housing$INDUS))
summary(standardize(housing$INDUS))
hist(normalize(housing$INDUS))
