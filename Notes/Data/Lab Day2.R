install.packages("tidyverse")
data <- read.csv("Notes/Data/Airports2.csv")
summary(data)
str(data)
data_distance <- na.omit(data$Distance)
mean(data_distance)
median(data_distance)
range(data_distance)
var(data_distance)
sd(data_distance)
distanceSD <- sd(data_distance)
meanDistance <- mean(data_distance, na.rm = T)
medDistance <- median(data_distance)
distanceSD <- sd(data_distance)
quantile(data_distance, 0.25)
quantile(data_distance, 0.75)
lower <- meanDistance - 3 * distanceSD
upper <- meanDistance + 3 * distanceSD
Distance_min = meanDistance - 3 * distanceSD
Distance_max = meanDistance + 3 * distanceSD
Data_without_outliers <- data_distance[data_distance > lower & data_distance < upper]
IQR(data_distance)
mean(Data_without_outliers)
median(Data_without_outliers)
