Financial Analyzer
========================================================
author: Stephen Olateru
date: November 20 2015

<small>
A Project in Data Products Class
</small>

Introduction
========================================================

This project is about analyzing Company Financials in a whatif scenario. 

Net Profit (Bottom line) is a measure of the profitability of a venture after accounting for all costs. In simplistic terms, net profit is the money left over after paying all the expenses of an endeavor.

This application computes the NET PROFIT from various inputs real time.



Data Inputs
========================================================
The inputs are:
- Tax Rates
- Net Sales
- Cost of Sales
- Operating Expense
- Extraordinary Gain/Loss
- Interest Expense


Computations
========================================================
Reviewing a company with the following financials (default in our application):


```r
taxRate = 0.15
netSales = 2000000
costOfSales = 375000
OperatingExpense = 260000
otherIncome = 60000
xraOrdinaryGL = -15000
interestExpense = 50000
```


Outputs
========================================================
From our data in previous slides, below are the output on the application:




Gross Income = Net Sales - Cost of Sales: 
1.625 &times; 10<sup>6</sup>

Operating Income = Gross Income - Operating Expense: 1.365 &times; 10<sup>6</sup>

Profit before Tax (PBT) = operating Income + Other Income +/- Extraordinary Gain/Loss - Interest Expense: 1.36 &times; 10<sup>6</sup>

Tax Amount = PBT * Tax Rate: 2.04 &times; 10<sup>5</sup>

Net Proift = PBT - Tax Amount: 1.156 &times; 10<sup>6</sup>

