library(ggplot2)


colors <- c("Jean" = "Blue", "Cedric" = "Red")

GamesPlot <- PingPongGames %>% 
  ggplot(aes(x = as.numeric(row.names(PingPongGames)))) + 
  geom_line(aes(y = Jean, col = "Jean")) + 
  geom_line(aes(y = Cedric, col = "Cedric")) + 
  ggtitle("Les points de Cédric et Jean sur toutes leurs parties") + 
  labs(y = "Les points de Cédric et Jean", x = "Numéro de partie", color = "Légende") +
  expand_limits(y = 0)

GamesPlot
