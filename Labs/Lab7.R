library(ggplot2)
library(dplyr)
library(tidyr)
library(janitor)


data <- read.csv("Notes/Data/Airports2.csv")
summary(data)
str(data)


# Null Hypothesis: The distance of flights that leave SFO and LAX are the same
# Alternate Hypothesis: The distance of flights that leave SFO and LAX are different.

SFO_distance <- data |> filter(Origin_airport == "SFO")
LA_distance <- data |> filter(Origin_airport == "LAX")
t.test(SFO_distance$Distance, LA_distance$Distance, alternative = "two.sided")
# The p value is 1.446e-06 . There is a significant difference in the distance between flights that leave LAX and SFO.

Airport_passenger <- filter(data, Origin_airport %in% c("SFO", "LAX", "JFK"))

a <- aov(Passengers ~ Origin_airport, Airport_passenger)
summary(a)
TukeyHSD(a)
