library(tidyverse)


PointsJean <- c()
PointsCedric <- c()
DayOfGames <- 4
MonthOfGames <- 4
YearOfGames <- 21

PingPongGames <- PingPongGames %>% 
  
  add_row(Jean = PointsJean, Cedric = PointsCedric, Day = DayOfGames, Month = MonthOfGames, Year = YearOfGames)

PingPongGames



#Jean <- c(21, 21, 13, 21)
#Cedric <- c(19, 17, 21, 16)
#Day <- c(4, 4, 4, 4)
#Month <- c(4, 4, 4, 4)
#Year <- c(21, 21, 21, 21)

#PingPongGames <- data.frame(Jean, Cedric, Day, Month, Year)

PingPongGames
