library(tidyverse)


PointsJean <- c()
PointsCedric <- c()
DayOfGames <- 5
MonthOfGames <- 4
YearOfGames <- 21

PingPongGames <- PingPongGames %>% 
  
  add_row(Jean = PointsJean, Cedric = PointsCedric, Day = DayOfGames, Month = MonthOfGames, Year = YearOfGames)

PingPongGames

