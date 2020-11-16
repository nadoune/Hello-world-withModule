library(shiny)

ui <- fluidPage(
  
  titlePanel("Using of Shiny modules"),
  
  fluidRow(
    # Call interface function of module "hello_world"
    hello_worldUI(id = "id_1")
  )
  
)