library(shiny)

server <- function(input, output, session) {
  
  # Call logic server function of module "hello_world"
  callModule(module = hello_world, id = "id_1")
  
}