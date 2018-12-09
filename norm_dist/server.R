### Packages-----
library(shiny)
library(shinydashboard)
library(ggplot2)

# Start-----
server <- function(input, output) {

 ### reactive data-----
 Rawdata <- reactive({
  input$refresh
   
  # Generate normal data:
  x <- round(rnorm(input$n, input$mean, input$sd), digits = 3)
  obs <- seq(x)
  Rawdata <- data.frame(obs, x)
 })

 # create output rawdata-----
 output$data <- renderDataTable({Rawdata()})

 # Link to DOWNLOAD BUTTON (UI)------
 output$download <- downloadHandler(
   filename = function(){"Rawdata.csv"}, 
   content = function(fname){
     write.csv(Rawdata(), fname, row.names = F)
   }
 )

 ### plot Histogram-----
 output$hist <- renderPlot({
   ggplot(Rawdata(), aes(x = x)) +
     geom_histogram(fill = "lightblue", 
                    alpha = .5, color = "blue") +
     geom_vline(xintercept = mean(Rawdata()$x),
                size = 1,
                color = "orange") +
     theme_minimal(base_size = 20)
   })
}