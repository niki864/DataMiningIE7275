subject_name <- c("John Doe", "Jane Doe","Steve Graves")
temperature <- c(98.1,99,101)
subject_name
temperature
flu_status <- c(FALSE,FALSE, TRUE)
flu_status
temperature[2]
temperature[-2]
exmp <- c(false,false,true)
gender <- factor(c("MALE","FEMALE", "MALE"))
blood <- factor(c("O","AB","A"), levels = c("A","B","AB","O"))
symptoms <- factor(c("SEVERE","MILD","MODERATE"),levels = c("MILD","MODERATE","SEVERE"),ordered = TRUE)
symptoms
blood
symptoms > "MODERATE"
symptoms >= "MODERATE"
subject1 <- list(fullname=subject_name[1], temperatureofsub=temperature[1], flu_status_sub=flu_status[1], gender_sub=gender[1], blood_sub=blood[1], symptom=symptoms[1])
subject1
#data frame example
pt_data<-data.frame(subject_name,temperature,flu_status,gender,blood,symptoms)
pt_data
#matrix example
mat1 <- matrix(c(1,2,3,4),nrow = 2)
mat1
mat2 <- matrix(c(1,2,3,4,5,6),nrow = 2, ncol = 3)
mat2
mat2 <- matrix(c(1,2,3,4,5,6),nrow = 3, ncol = 2)
mat2
mat2[3,2]
#repeat example
temp <- c(4,6,3)
rep(temp, 5)
rep(temp, l=31)
rep(temp, times=c(10,20,30))
#sequence example
temp <- seq(3,6, by=0.1)
#math functions example
exp(temp)*cos(temp)
temp <- 10:100
sum(temp^3+4*temp^2)
#Generating vectors
set.seed(50)
xvec <- sample(0:999,250,replace=T)
yvec <- sample(0:999,250,replace=T)
#Vector Manipulation
temp <- yvec[yvec>600]
length(temp)

