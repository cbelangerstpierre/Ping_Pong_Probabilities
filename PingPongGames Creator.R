library(tidyverse)


JeanPoints <- c()
CédricPoints <- c()
DayOfGames <- 4
MonthOfGames <- 4
YearOfGames <- 21

PingPongGames <- PingPongGames %>% 
  
  add_row(Jean = JeanPoints, Cédric = CédricPoints, Day = DayOfGames, Month = MonthOfGames, Year = YearOfGames)

PingPongGames






#Jean <- c(21, 21, 13, 21)
#Cédric <- c(19, 17, 21, 16)
#Day <- c(4, 4, 4, 4)
#Month <- c(4, 4, 4, 4)
#Year <- c(21, 21, 21, 21)

#PingPongGames <- data.frame(Jean, Cédric, Day, Month, Year)
