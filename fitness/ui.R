library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Fitness Tracking"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    position = "right",
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      img(src="digital_clock_display.png", height = 200, width = 400),
      h1("Charts", align = "center"),
      br(),
      div("div creates segments of text with a similar style.", style = "color:blue", align="center"),
      plotOutput("distPlot")
    )
  )
))
