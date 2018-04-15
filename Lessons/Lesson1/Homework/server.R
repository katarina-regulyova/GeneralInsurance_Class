library(shiny)
library(ggplot2)

dt_KPI <- read.csv("C:/Users/Katka/Documents/Aktuarstvo/Data/lesson2_KPI.csv")

server <- function(input, output) {
  output$scatter_plot <- renderPlot(
    ggplot(data = dt_KPI,
           mapping = aes_string(x = "Premium", y = "Expenses", colour = input$selected_variable)
    ) +
      geom_point()
  )
}