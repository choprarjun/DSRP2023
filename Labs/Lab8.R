library(ggplot2)
library(dplyr)
library(tidyr)
library(janitor)
library(reshape2)
library(rsample)
library(parsnip)

data <- read.csv("Notes/Data/Airports2.csv")
summary(data)
str(data)
View(data)

Passenger_Seat <- select(data, Passengers, Seats)

pcas <- prcomp(Passenger_Seat, scale. = T)
summary(pcas)
pcas$rotation


pca_vals <- as.data.frame(pcas$x)
pca_vals

pcas$rotation^2
pca_vals <- as.data.frame(pcas$x)


ggplot(pca_vals, aes(PC1, PC2)) +
  geom_point() +
  theme_minimal()
