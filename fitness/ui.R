# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Fitness Tracking"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    position = "right",
    sidebarPanel(
      checkboxGroupInput("sport",
        label = h3("Sports"),
        choices = list("Swim" = "Swim", "Bike" = "Bike", "Run" = "Run")
      )
    ),

    # Show a plot of the generated distribution
    mainPanel(
      img(src="digital_clock_display.png", height = 200, width = 400),
      h1("Charts", align = "center"),
      br(),
      div("div creates segments of text with a similar style.", style = "color:blue", align="center"),
      textOutput("text1"),
      plotOutput("chart")
    )
  )
))
