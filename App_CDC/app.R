#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(bslib)
library(tidyverse)

# Data
cdc <- read_delim("data/cdc.txt", delim = "|")
# UI logic
ui <- page_sidebar(

    # Application title
    title = "CDC BRFSS: Histogram of Weight Grouped by Gender",

    # Sidebar 
    sidebar = sidebar(
      position = "right",

      sliderInput(
        inputId = "bins",
        label = "Number of bins:",
        min = 5,
        max = 50,
        value = 30,
        animate = TRUE
        )
      ),

   
      plotOutput(outputId = "distPlot")
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$distPlot <- renderPlot({
    
    ggplot(data = cdc, aes(x = weight)) +
      geom_histogram(
        bins = input$bins,
        mapping = aes(fill = gender),
        position = "identity",
        alpha = 0.5
      ) +
      scale_fill_discrete(
        name = "Gender",
        labels = c("Female", "Male")
      ) +
      theme_minimal(base_size = 16) +
      labs(
        x = "Weight in Pounds",
        y = "Count"
      ) +
      theme(
        legend.position = "inside",
        legend.position.inside = c(0.48, 0.75)
      )
    
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)
