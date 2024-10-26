# inst/app/app.R
library(shiny)
library(ggplot2)
data("mpg", package = "assignment4shiny")  # Load the mpg dataset from your package

# Define the UI
ui <- fluidPage(
    titlePanel("Fuel Economy Data Explorer"),
    
    # Add some custom styling
    tags$head(
        tags$style(HTML("
            body { background-color: #f5f5f5; }
            .well { background-color: #e3f2fd; }
        "))
    ),
    
    sidebarLayout(
        sidebarPanel(
            selectInput("manufacturer", "Choose a Manufacturer:",
                        choices = unique(mpg$manufacturer)),
            sliderInput("bins", "Number of bins:", min = 5, max = 50, value = 10)
        ),
        mainPanel(
            plotOutput("histPlot"),
            hr(),
            h4("Field Descriptions:"),
            p("City MPG: Miles per gallon in city driving conditions."),
            p("Manufacturer: Car manufacturer name."),
            hr(),
            h4("How to Interpret the Output:"),
            p("This histogram shows the distribution of city MPG values for cars from the selected manufacturer. Adjust the bins to see more or fewer details.")
        )
    )
)

# Define the server logic
server <- function(input, output) {
    output$histPlot <- renderPlot({
        data <- subset(mpg, manufacturer == input$manufacturer)
        ggplot(data, aes(x = cty)) +
            geom_histogram(bins = input$bins, fill = "blue", color = "white") +
            labs(title = paste("City Mileage for", input$manufacturer),
                 x = "City MPG", y = "Count")
    })
}

# Run the app
shinyApp(ui = ui, server = server)
