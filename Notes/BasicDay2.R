2 + 2
number <- 5
number
#this is a coment
decimal <- 1.5
letter <- "a"
word <- "hello"
logic <- TRUE
logic2 <- F
## types of variables
#there are 3 main classes: numeric, character, and logical
class(number)
class (decimal)
class(letter)
class(word)
typeof(number)
typeof(decimal)
# we can change the type of an object
as.character(number)
as.integer(number)
as.integer(decimal)
## how to round numbers
round(decimal)
round(22/7, 3) # 3 values after the decimal
ceiling(22/7) #always rounds up
floor(22/7)
word_as.int <- as.integer("hello")
name <- "Bob"
n.a.m.e. <- "Sam"
#illegal naming characters:
#starting with a number
#starting with an underscore
#operators
#conditionals
number
number + decimal
paste(name, "Parker is awesome")
paste(name, "is", number, "years old")
food <- "watermelon"
grepl("me", food)
sub("me",'food')
seq(from = 1, to = 5, by = 0.5)
c(rep(1, 3), rep(2, 3))
rep(c(1, 2), each = 3)
numbers <- 1:20
five_nums <- sample(numbers, 5)
fifteen_nums/2

data <- read.csv("super_hero_powers.csv")
glimpse(data)
summary("data")

