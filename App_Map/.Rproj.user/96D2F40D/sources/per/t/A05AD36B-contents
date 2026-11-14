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

ui <- page_sidebar(
  
  title = "Where I'm From",
  
  sidebar = sidebar(
    
    h2("Fun Facts:"),
    
    p(tags$b("State Nickname:"), " Old Line State"),
    
    p(tags$b("State Motto:"), "Strong Deeds, Gentle Words"),
    
    p(tags$b("Population:"), " About 6.2 million"),
    
    p(tags$b("Capital:"), " Annapolis"),
    
    p(tags$b("Largest City:"), " Baltimore"),
    
    tags$img(
      src = "maryland_flag.png",
      width = "100%"
    )
  ),
  
  card(
    card_header("Maryland"),
    
    tags$img(
      src = "maryland_map.png",
      width = "80%"
    ),
    
    p(
      "Maryland is located in the Mid-Atlantic region of the United States and is known for its blue crabs, seafood culture, and beautiful waterfront communities"
    ),
    
    card_footer(
      HTML(
        '<a href="https://msa.maryland.gov/" target="_blank">Learn more about Maryland</a>'
      )
    )
  ),
  
  card(
    card_header("Famous Attraction"),
    
    card_image("chesapeake_bay.png", height = "200px"),
    card_footer(
      "The Chesapeake Bay is the largest estuary in the United States."
    )
  )
)

server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)
