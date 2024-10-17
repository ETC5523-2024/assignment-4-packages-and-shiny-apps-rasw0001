library(shiny)

# Define UI
fluidPage(
  titlePanel("Simple Shiny App"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("obs", "Number of observations:", 
                  min = 1, max = 1000, value = 500)
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
)
