library(ggplot2)
data <- read.csv("Notes/Data/Airports2.csv")
summary(data)
str(data)

#Plotting

#1 Variable
ggplot(data, aes(x = Distance)) + geom_histogram(bins = 100) +
  labs(title = "Distace Distribution")

#Numeric and Categorical
ggplot(data, aes(x= Destination_city , y= Passengers)) +
  geom_violin() + labs(title = "Destination vs. Passengers")


#Numeric and Numeric
ggplot(data, aes(x=Distance, y=Passengers)) + 
  geom_point(aes(color = Origin_city)) 

songs <- read_csv("Labs/songs_normalize.csv")
summary(songs)  
str(songs)

#Numeric and Numeric
ggplot(songs, aes(x= duration_ms, y= popularity)) + 
  geom_point(aes(color = explicit)) 
