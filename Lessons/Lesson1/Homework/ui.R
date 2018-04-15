dt_KPI <- read.csv("C:/Users/Katka/Documents/Aktuarstvo/Data/lesson2_KPI.csv")

ui <- fluidPage(
  selectInput(
    inputId = "selected_variable",
    label = "Colouring Var: ",
    choices = variable.names(dt_KPI),
    selected = "Segment"
  ),
  plotOutput(outputId = "scatter_plot")
)
