library(shiny)
shinyServer(
  function(input,output){
    
   # output$distPlot <- renderPlot({
   #   x    <- faithful[, 2]  # Old Faithful Geyser data
    #  bins <- seq(min(x), max(x), length.out = input$bins + 1)
      
      # draw the histogram with the specified number of bins
   #  hist(x, breaks = bins, col = 'darkgray', border = 'white')
   # })*/
    
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
  }
  
)