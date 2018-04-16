

myplot <- function(data,rows = 1:10){
  Data <- data[rows,,drop= F]
  matplot(t(Data),type = "b",pch = 15:18, col=c(1:4,6))
  legend("bottomleft",legend = Players[rows],pch = 15:18, col=c(1:4,6),inset = 0.01,horiz = F)
}

#Salary
myplot(Salary)
myplot(Salary/Games)
myplot


#In-Game Metrics
myplot(MinutesPlayed)
myplot(Points)

#In-Game Metrics Normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)


#interesting observation
myplot(MinutesPlayed/Games)
myplot(Games)


#Time is valuable
myplot(FieldGoals/MinutesPlayed)
       

#Player Style
myplot(Points/FieldGoals)

