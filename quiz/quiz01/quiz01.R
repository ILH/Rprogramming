x <- c(4, "a", TRUE)
class(x)

x <- c(1,3, 5)
y <- c(3, 2, 10)
cbind(x, y)

# q08
x <- list(2, "a", "b", TRUE)
class(x[[1]])

# q09
x <- 1:4
y <- 2
x + y

# q10
x <- c(3, 5, 1, 10, 12, 6)
x[x<6] == 0
x[x %in% 1:5] <- 0

# q11-20
hw1_data <- read.csv("F:/SkyDrive/Studying/JohnsH/specificationDataScienceJohnsHopkins/Rprogramming/quiz01/hw1_data.csv")
colnames(hw1_data)
first2rows <- hw1_data[1:2,]
first2rows
nrow(hw1_data)
hw1_data[47,][["Ozone"]]

sum(is.na(hw1_data$Ozone))
goodInddex <- !is.na(hw1_data$Ozone)

mean(hw1_data[goodInddex,]$Ozone)
q18set <- subset(hw1_data,Ozone > 31 & Temp > 90)
mean(q18set$Solar.R)
q19set <- subset(hw1_data,hw1_data$Month == 6)
mean(q19set$Temp)

q20set <- subset(hw1_data,hw1_data$Month == 5)
max(q20set[!is.na(q20set$Ozone),]$Ozone)
