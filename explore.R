library(dplyr)
#ambil data
data <- read.csv("dataanime.csv")
# atau 
# datar <- readr::read_csv("dataanime.csv")

airing <- dplyr::filter(data, Status == "Finished Airing" & Starting.season == "Spring")
quiz <- dplyr::select(airing, Title, Score, Favorites)
sort <- dplyr::arrange(quiz, desc(Score))

answer <- data %>%
  dplyr::filter(Status == "Finished Airing" & Starting.season == "Spring") %>%
  dplyr::select(Title, Score, Favorites, ) %>%
  dplyr::arrange(desc(Score))

print(class(answer))

# string containt
drama <- dplyr::filter(data, stringr::str_detect(Genres,"Drama"))

# drama yang tayang 
januari <- dplyr::arrange(data, desc(data$Starting.season))
