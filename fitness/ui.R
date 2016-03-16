library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Fitness Tracking"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    position = "right",
    sidebarPanel(
      fluidRow(
        column(12,
          sliderInput("bins",
            "Number of bins:",
            min = 1,
            max = 50,
            value = 30
          )
        )
      ),

      fluidRow(
        column(6,
          checkboxGroupInput("checkGroup",
            label = h3("Sports"),
            choices = list("Swim" = 1,
               "Bike" = 2, "Run" = 3),
            selected = 1)
          ),
        column(6,
          checkboxGroupInput("checkGroup",
            label = h3("Years"),
            choices = list("2011" = 1,
               "2012" = 2, "2013" = 3),
            selected = 1)
          )
        )
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
