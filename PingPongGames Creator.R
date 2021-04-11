library(tidyverse)

# Adding stats of the games
PointsCedric <- c()
PointsJean <- c()
PointsAdrianne <- c()
DayOfGames <- 10
MonthOfGames <- 4
YearOfGames <- 21

# Adding games in the data frame of Jean and Cédric
JC_PingPongGames <- JC_PingPongGames %>% 
  add_row(Jean = PointsJean, Cedric = PointsCedric, Day = DayOfGames, Month = MonthOfGames, Year = YearOfGames)

JC_PingPongGames

# Adding games in the data frame of Adrianne and Cédric
AC_PingPongGames <- AC_PingPongGames %>%
  add_row(Adrianne = PointsAdrianne, Cedric = PointsCedric, Day = DayOfGames, Month = MonthOfGames, Year = YearOfGames)

AC_PingPongGames
