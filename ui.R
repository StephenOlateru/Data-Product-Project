library(shiny)
shinyUI(fluidPage(
    titlePanel("Financial Analyzer App"),
    textOutput("summary"),
    
    sidebarLayout(
      sidebarPanel(
        textOutput("tax_explation"),
        radioButtons("tax", "Taxes:",
                     c("15%" = ".15",
                       "20%" = ".20",
                       "30%" = ".30",
                       "35%" = ".35"
                       )),
          
          textOutput("nsales_explation"),
          numericInput("nsales","Net Sales",2000000,step=1000),
          textOutput("cofsales_explation"),
          numericInput("cofsales","Cost of Sales",375000,step=1000),
          textOutput("opex_explation"),
          numericInput("opex","Operating Expense",260000,step=1000),
          textOutput("othinc_explation"),
          numericInput("othinc","Other Income",60000,step=1000),
          textOutput("xgain_explation"),
          numericInput("xgain","Extraordinary Gain/Loss",-15000,step=1000),
          textOutput("intexp_explation"),
          numericInput("intexp","Interest Expense",50000,step=1000)
      ),
    
      mainPanel(
        
        h5("Gross Income - this is the company's revenue (net sales) minus cost of sales"),
        verbatimTextOutput("grossIncome"),
        
        h5("Operating Income - this is the Gross income minus Operating Expenses"),
        verbatimTextOutput("operatingIncome"),
        
        h5("Net Profit Before Tax (NPB) - This is a measure of the profitability of a company after accounting for all costs"),
        verbatimTextOutput("NPbTax"),
        
        h5("Tax Amount - This is tax rate multiplied by NPB"),
        verbatimTextOutput("tax"),
        
        h5("Net Profit - This is PBT less Adjusted tax"),
        verbatimTextOutput("netProfit")
        
        
        
        
      )
    )
  )
)