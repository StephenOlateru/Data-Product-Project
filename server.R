library(shiny)
shinyServer(
  function(input,output){
    
    output$netSales <- renderPrint(input$nsales)
    
    output$costOfSales <- renderPrint(input$cofsales)
    
    gInc <- reactive({as.numeric(input$nsales) - as.numeric(input$cofsales)})
    opIncome <- reactive({as.numeric(gInc()) - as.numeric(input$opex)})
    npBTax <- reactive({opIncome() + as.numeric(input$othinc) + as.numeric(input$xgain) - as.numeric(input$intexp)})
    
    taxAmt <- reactive ({as.numeric(input$tax) * npBTax()})
    netInc <- reactive ({npBTax() - taxAmt()})
    
    output$grossIncome <- renderPrint(gInc())
    output$operatingIncome <- renderPrint(opIncome())
    output$NPbTax <- renderPrint(npBTax())
    output$netProfit <- renderPrint(netInc())
   
    output$tax <- renderPrint(taxAmt())
    output$summary <- renderText("This application is used to analyze whatif scenarios of any Company's financials.")
    output$tax_explation <- renderText("Tax Rate is used to compute the tax amount")
  }
  
)