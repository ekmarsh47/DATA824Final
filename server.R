# DATA 824
# HW 12/Final Project
# Erin Marshall
#
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

lungcancer <- function(Gender,Age,Smoke,Fingers,Anxiety,Pressure,Disease,Fatigue,Allergy,Wheezing,Alcohol,Coughing,Breath,Swallowing,Chest) 
  -8.32-0.53*Gender+0.02*Age+1.77*Smoke+1.38*Fingers+0.89*Anxiety+1.73*Pressure+3.19*Disease+3.07*Fatigue+1.65*Allergy+
  0.97*Wheezing+1.41*Alcohol+3.31*Coughing-0.73*Breath+3.12*Swallowing+0.56*Chest

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$prediction <- renderPrint(lungcancer(input$Gender,input$Age,input$Smoke,input$Fingers,input$Anxiety,
                                              input$Pressure,input$Disease,input$Fatigue,input$Allergy,input$Wheezing,
                                              input$Alcohol,input$Coughing,input$Breath,input$Swallowing,input$Chest))
})
