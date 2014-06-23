shinyUI(pageWithSidebar(
  headerPanel("Finding mu!"),
  sidebarPanel(
    sliderInput('mu', 'Guess at the mu',value = 70, min = 60, max = 80, step = 0.05,)
  ),
  mainPanel(
    plotOutput('myHist')
  )
))

#This application allows the user to guess at the mu of child's height from galton's data graphically. 
#Slider is created to find the lowest MSE for a given mu incremental of 0.05 between 60 and 80. 
#Graphical interpretation of the data into the histogram is done in the serevr.R 