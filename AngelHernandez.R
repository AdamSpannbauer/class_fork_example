library(shiny)

ui <- fluidPage(
  plotOutput('mtcars')
)

server <- function(input, output, session) {
  output$mtcars <- renderPlot(hist(mtcars$hp))
}

shinyApp(ui, server)