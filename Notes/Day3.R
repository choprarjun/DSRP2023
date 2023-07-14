install.packages("ggplot2")
library(ggplot2)
install.packages(c("usethis", "credentials"))

str(mpg)
ggplot(data = mpg, aes(x= hwy, y=cty)) +
  geom_point() +
  labs(x = "highway mpg",
       y = "city mpg",
       title = "car city vs highway milage")
##histogram
ggplot( data = iris, aes (x = Sepal.Length)) +
  geom_histogram(bins = 50)
ggplot( data = iris, aes (x = Sepal.Length)) +
  geom_histogram(binwidth = 0.25)
ggplot(data = iris, aes (x = Sepal.Length)) +
  geom_density()
ggplot(data = iris, aes (x = Sepal.Length)) +
  geom_boxplot()
ggplot(data = iris, aes (x = Sepal.Length, y = Species)) +
  geom_boxplot()
ggplot(data = iris, aes(y= Sepal.Length, x = Species)) + geom_violin(color= "violet", fill = "pink") +
  geom_boxplot(width = 0.2, fill=NA)
ggplot(data = iris, aes(y= Sepal.Length, x = Species)) +
  geom_bar(stat = "summary", fun = "mean")
ggplot(data = iris, aes(y= Sepal.Length, x = Sepal.Width)) +
  geom_point()
ggplot(data = iris, aes(y= Sepal.Length, x = Sepal.Width)) +
  geom_point() + geom_smooth()
  
