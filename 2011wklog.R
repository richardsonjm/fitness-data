# source("/Users/johnrichardson/Development/code/project/fitness-data/2011wklog.R")
workout.data.2011 <- read.csv("/Users/johnrichardson/Development/code/project/fitness-data/wklog2011.csv", header = TRUE)
sbc <- c("Swim", "Bike", "Run")
sbc.data = workout.data.2011[sbc]
library('ggplot2')
qplot(sbc.data$Bike, geom="histogram")
ggplot(data=sbc.data, aes(sbc.data$Bike)) + geom_histogram()
