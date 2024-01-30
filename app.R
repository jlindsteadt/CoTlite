library(shiny)
library(shinydashboard)
library(Quandl)
library(timetk)
library(dplyr)
library(ggplot2)
library(tidyr)
library(forcats)

#source('mod_data_import.R')
#source('mod_COT.R')


ui <- fluidPage(
  #mod_data_import_ui('data_import')#,
  mod_CoT_ui("CoT_1")
)

server <- function(input, output, session) {
  r <- reactiveValues()

  mod_data_import_server("data_import", r=r)
  mod_CoT_server('CoT_1', r=r)
}

shinyApp(ui, server)

