# load library and global variables
library(ggplot2)
workout.2011 <- read.csv("/Users/johnrichardson/Development/code/project/fitness-data/wklog2011.csv", header = TRUE)
workout.2011$Date <- as.Date(workout.2011$Date, format = "%d-%b-%y")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$text1 <- renderText({
    paste(input$sport)
  })

  output$chart <- renderPlot({
    args <- switch(input$sport,
      "Swim" = list(data= workout.2011, aes(Date, Swim), color = "blue"),
      "Bike" = list(data= workout.2011, aes(Date, Bike), color = "black"),
      "Run" = list(data= workout.2011, aes(Date, Run), color = "green")
      )

    # ggplot() +
      # geom_point(data= workout.2011, aes(Date, Bike), color = "black") +
      # geom_point(data= workout.2011, aes(Date, Bike), color = "black") +
      # geom_point(data= workout.2011, aes(Date, Run), color = "green") +
      # scale_x_date(date_labels = "%b %d") + xlab("") + ylab("Sport")

    do.call(ggplot, args) + geom_point() + scale_x_date(date_labels = "%b %d") + xlab("") + ylab("Sport")
  })
})
