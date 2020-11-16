library(shiny)
library(dplyr)

# Writing all the business logic for the table manipulation 
# inside another function, outside the 
top_this <- function(tbl, n) {
  tbl %>%
    # [...] %>% 
    # [...] %>% 
    # [...] %>% 
    # [...] %>% 
    head(n)
}

# A simple app that returns a table
ui <- function() {
  tagList(
    tableOutput("tbl"), 
    sliderInput("n", "Number of rows", 1, 10, 5)
  )
}


server <- function(input, output, session) {
  output$tbl <- renderTable({
    # We call the previously declared function inside the server
    # The business logic is thus defined outside the application
    top_this(mtcars, input$n)
  })
}

shinyApp(ui, server)