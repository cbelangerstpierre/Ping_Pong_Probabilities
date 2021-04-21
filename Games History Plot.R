library(ggplot2)
library(tidyverse)

# Games history plot of Jean and Cédric
JC_GamesPlot <- JC_PingPongGames %>% 
  ggplot(aes(x = as.numeric(row.names(JC_PingPongGames)))) + 
  geom_line(aes(y = Jean, col = "Jean")) + 
  geom_line(aes(y = Cedric, col = "Cedric")) + 
  ggtitle("Les points de Cédric et Jean sur toutes leurs parties") + 
  labs(y = "Les points de Cédric et Jean", x = "Numéro de partie", color = "Légende") +
  expand_limits(y = 0)

JC_GamesPlot

# Games history plot of Adrianne and Cédric
AC_GamesPlot <- AC_PingPongGames %>% 
  ggplot(aes(x = as.numeric(row.names(AC_PingPongGames)))) + 
  geom_line(aes(y = Cedric, col = "Cédric")) + 
  geom_line(aes(y = Adrianne, col = "Adrianne")) +
  ggtitle("Les points de Adrianne et Cédric sur toutes leurs parties") + 
  labs(y = "Les points d'Adrianne et Cédric", x = "Numéro de partie", color = "Légende") +
  expand_limits(y = 0)

AC_GamesPlot
