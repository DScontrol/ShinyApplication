# Title: Shiny web application of mtcars Regression Model 
# Author: Alex M.
# Date: Feb 2021

library(shiny)

ui <- fluidPage(
    titlePanel("Regression Model mtcarsset Mtcars"),
    sidebarLayout(
        sidebarPanel(
            selectInput('outcome',label=h3('Outcome (Predictor):'), names(mtcars)),
            selectInput('indepvar',label=h3('Explanatory variable (Regresor):'), names(mtcars)),
            h3("Slope:"), 
            textOutput("SlopeOut"),
            h3("Intercept:"),
            textOutput("InterceptOut"),
            h3(""),
            submitButton("Submit")
        ),
        mainPanel(
           tabsetPanel(type = "tabs",
                        tabPanel("Plot", plotOutput("plot")), # Plot
                        tabPanel("Model Summary", verbatimTextOutput("summary")), # Regression
                        tabPanel("Data", DT::dataTableOutput('tbl')) # mtcars set 
                        
           )
        )
    ))