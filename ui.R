library(shiny)
shinyUI(fluidPage(
    titlePanel("Financial Analyzer App"),
    
    sidebarLayout(
      sidebarPanel(
        radioButtons("tax", "Taxes:",
                     c("15%" = ".15",
                       "20%" = ".20",
                       "30%" = ".30",
                       "35%" = ".35"
                       )),
        # sliderInput("bins",
                    #            "Number of bins:",
                    #            min = 1,
                    #             max = 50,
                    #             value = 30),
          numericInput("nsales","Net Sales",2000000,step=1000),
          numericInput("cofsales","Cost of Sales",375000,step=1000),
          numericInput("opex","Operating Expense",260000,step=1000),
          numericInput("othinc","Other Income",60000,step=1000),
          numericInput("xgain","Extraordinary Gain/Loss",-15000,step=1000),
          numericInput("intexp","Interest Expense",50000,step=1000)
          #numericInput("taxes","Taxes",475000)

      ),
    
      mainPanel(
        #plotOutput("distPlot"),
        #h4("Net Sales"),
        #verbatimTextOutput("netSales"),
        
        #h4("Cost Of Sales"),
        #verbatimTextOutput("costOfSales"),
        
        h5("Gross Income"),
        verbatimTextOutput("grossIncome"),
        
        h5("Operating Income"),
        verbatimTextOutput("operatingIncome"),
        
        h5("Net Profit Before Tax"),
        verbatimTextOutput("NPbTax"),
        
        h5("Tax Amount"),
        verbatimTextOutput("tax"),
        
        h5("Net Profit"),
        verbatimTextOutput("netProfit")
        
        
        
        
      )
    )
  )
)