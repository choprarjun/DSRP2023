install.packages("janitor")
install.packages("tidyr")
library(tidyr)
library(janitor)
library(dplyr)


starwars
clean_names(starwars, case = "small_camel")
clean_names(starwars, case = "screaming_snake")
new_starwars <- clean_names(starwars, case = "upper_lower")

clean_names(new_starwars)

new_starwars <- rename(new_starwars, 'hair*color' = HAIR_COLOR)
clean_names(new_starwars)

#make a table of all female star wars characters by age

StarWarsWomen <- filter(starwars, sex = "female")
StarWarsWomen <- arrange(StarWarsWomen, birth_year)
StarWarsWomen <- select(StarWarsWomen, name, species)

StarWarsWomen <- starwars|>
  filter(sex == "female") |>
  arrange(birth_year)|>
  select(name, species)

slice_max(starwars, height, n=10)
slice_max(starwars, height, n=1, by = species)

table4a

tidy_table4a < - pivot_longer(table4a,
             cols = c('1999', '2000'),
             names_to = "year",
             values_to = "cases")

tidy_table4b <- pivot_longer(table4b,
                             cols = c('1999', '2000'),
                             names_to = "year",
                             values_to = "population")

#pivot wider
table2

pivot_wider(table2,
            names_from = type,
            values_from = count)

# separate
table3

separate(table3,
         rate,
         into = c("cases", "population"),
         sep = "/") 
#unite
table5
unite(table5,
      "year",
      c("century", "year"),
      sep = "") |>
  separate(rate,
           into = c("cases", "population"),
           sep = "/")

# bind rows

new_data <- data.frame(country = "USA", year = "1999")
