# Title: Shiny web application of mtcars regression model
# Author: Alex M.
# Date: Feb 2021

library(shiny)
library(dplyr)
library(plotly)
library(tidyr)

server <- function(input, output) {
    
    model<-reactive({
        lm(mtcars[,input$outcome] ~ mtcars[,input$indepvar])  
    })
    
    # Regression output
    output$summary <- renderPrint({
        fit <- lm(mtcars[,input$outcome] ~ mtcars[,input$indepvar])
        names(fit$coefficients) <- c("Intercept", input$var2)
        summary(fit)
        
    })
    
    # mtcars output
    output$tbl = DT::renderDataTable({
        DT::datatable(mtcars, options = list(lengthChange = FALSE))
    })
    
    # Scatterplot output
    output$plot <- renderPlot({
       plot(mtcars[,input$indepvar], mtcars[,input$outcome], main="Scatter Plot",
                 xlab=input$indepvar, ylab=input$outcome, pch=18)
        abline(lm(mtcars[,input$outcome] ~ mtcars[,input$indepvar]), col="green")
        lines(lowess(mtcars[,input$indepvar],mtcars[,input$outcome]), col="red")
    })
    
    # Slope output
    output$SlopeOut <- renderText({
      if(is.null(model())){
          "no model found"
      } else {model()[[1]][2]}
    })
    
    # Interception output
    output$InterceptOut <- renderText({
        if(is.null(model())){
            "no model found"
        } else {model()[[1]][1]}       
        
    })

}