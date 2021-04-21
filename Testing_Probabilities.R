library(tidyverse)

#Sum of the points of Jean, Cedric and Adrianne
JC_PointsSumJean <- sum(JC_PingPongGames$Jean)
JC_PointsSumCedric<- sum(JC_PingPongGames$Cedric)
AC_PointsSumAdrianne <- sum(AC_PingPongGames$Adrianne)
AC_PointsSumCedric <- sum(AC_PingPongGames$Cedric)

#Probability of getting a point in Ping Pong based on real life
AC_p_Cedric <- AC_PointsSumCedric/(AC_PointsSumAdrianne+AC_PointsSumCedric)
JC_p_Cedric <- JC_PointsSumCedric/(JC_PointsSumJean+JC_PointsSumCedric)

# Creating a game of Ping Pong between Adrianne and Cedric based on real life stats
AC_function <- function() {
  AC_SampleGame <- data.frame()
  AC_SampleGame <- AC_SampleGame %>% mutate("Cedric" = 0, "Adrianne" = 0)
  AC_SampleGame <- AC_SampleGame %>% add_row(Cedric = 0, Adrianne = 0)
  
  while(!((AC_SampleGame$Cedric >= 21 | AC_SampleGame$Adrianne >= 21) & abs(AC_SampleGame$Cedric - AC_SampleGame$Adrianne) >= 2)){
    point <- sample(c("Cedric", "Adrianne"), 1, replace = TRUE, prob = c(AC_p_Cedric, (1-AC_p_Cedric)))
    if(point == "Cedric") {
      AC_SampleGame$Cedric <- AC_SampleGame$Cedric + 1
    } else {
      AC_SampleGame$Adrianne <- AC_SampleGame$Adrianne + 1
    }
  }
  AC_SampleGame
}

# Creating a game of Ping Pong between Jean and Cedric based on real life stats
JC_function <- function() {
  JC_SampleGame <- data.frame()
  JC_SampleGame <- JC_SampleGame %>% mutate("Cedric" = 0, "Jean" = 0)
  JC_SampleGame <- JC_SampleGame %>% add_row(Cedric = 0, Jean = 0)
  
  while(!((JC_SampleGame$Cedric >= 21 | JC_SampleGame$Jean >= 21) & abs(JC_SampleGame$Cedric - JC_SampleGame$Jean) >= 2)){
    point <- sample(c("Cedric", "Jean"), 1, replace = TRUE, prob = c(JC_p_Cedric, (1-JC_p_Cedric)))
    if(point == "Cedric") {
      JC_SampleGame$Cedric <- JC_SampleGame$Cedric + 1
    } else {
      JC_SampleGame$Jean <- JC_SampleGame$Jean + 1
    }
  }
  JC_SampleGame
}

# N will be the length of a replicate function ; example : length(AC_Results)
#For the index
even_num <- function(N){
  x <- c()
  for(i in 1:N){
    if(i %% 2 == 0){
      x <- append(x, i)
    }
  }
  x
}

odd_num <- function(N){
  x <- c()
  for(i in 1:N){
    if(i %% 2 != 0){
      x <- append(x, i)
    }
  }
  x
}

#Creating multiple games between Adrianne and Cedric using the AC_function
B <- 10000
AC_Results <- replicate(B, {
  AC_function()
})

#Creating multiple games between Jean and Cedric using the JC_function
B <- 10000
JC_Results <- replicate(B, {
  JC_function()
})

# Every number of points in the end of random games (AC_Results)
AC_RandomPointsAdrianne <- as.numeric(AC_Results[even_num(length(AC_Results))])
AC_RandomPointsCedric <- as.numeric(AC_Results[odd_num(length(AC_Results))])

# Every number of points in the end of random games (JC_Results)
JC_RandomPointsJean <- as.numeric(JC_Results[even_num(length(JC_Results))])
JC_RandomPointsCedric <- as.numeric(JC_Results[odd_num(length(JC_Results))])

# times Adrianne wins
mean(AC_RandomPointsAdrianne > AC_RandomPointsCedric)
which(AC_RandomPointsAdrianne > AC_RandomPointsCedric)

# times Cedric wins in AC
mean(AC_RandomPointsAdrianne < AC_RandomPointsCedric)

# times Jean wins
mean(JC_RandomPointsJean > JC_RandomPointsCedric)

# times Cedric wins in JC
mean(JC_RandomPointsJean < AC_RandomPointsCedric)
