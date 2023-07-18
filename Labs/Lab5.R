library(ggplot2)
library(dplyr)
data <- read.csv("Notes/Data/Airports2.csv")
summary(data)
str(data)


#Filter
filter(data, Origin_city == "San Francisco, CA", 
       Destination_city == "Los Angeles, CA", 
       grepl("1990", Fly_date ))

#Smaller data set
SF_LA <- filter(data, Origin_city == "San Francisco, CA", 
                Destination_city == "Los Angeles, CA",
                grepl("1990", Fly_date ))
select(SF_LA, Passengers, Seats )
small_SF_LA <- select(SF_LA, Passengers, Seats )

#New Columns
mutate(SF_LA,
       distance_km = Distance*1.609,
       flight_time = Distance*0.227)

#Summarize
summarize(data,
          sum_passengers_by_city = sum(Passengers, na.rm = t),
          .by = Origin_city)

#Reorder Data Table
city_population <- select(data, Origin_population, Origin_city)
arrange(city_population, Origin_population, Origin_city)

#Visualization
Just_SF <- filter(data, 
                  Origin_city == "San Francisco, CA",
                  grepl("L", "Destination_city" ))
ggplot(SF_LA, aes( y= Seats, x = Passengers)) +
  geom_point(aes(color = "Seats vs. Passengers in SF"))

