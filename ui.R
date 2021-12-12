# DATA 824
# HW 12/Final Project
# Erin Marshall
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI lung cancer survey and results
shinyUI(fluidPage(

    # Application title
    titlePanel("Lung Cancer Survey"),

    # Sidebar with a slider input for number of bins(
    sidebarLayout(
        sidebarPanel(
            numericInput('Gender', 'What is your Gender? Female = 0,Male = 1', 0, min=0, max=1, step=1),
            numericInput('Age', 'What is your Age?', 62, min = 18, max = 100, step = 1),
            numericInput('Smoke', 'Do you smoke? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Fingers', 'Do your fingers have a yellow-stained color? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Anxiety', 'Do you experience anxiety? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Pressure', 'Do you experience peer pressure? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Disease', 'Have you been diagnosed with a chronic disease? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Fatigue', 'Do you experience fatigue? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Allergy', 'Do you suffer from any allergies? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Wheezing', 'Do you experience wheezing when you breathe? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Alcohol', 'Do you consume alcohol? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Coughing', 'Do you suffer from a reglar cough? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Breath', 'Do you experience shortness of breath? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Swallowing', 'Do you experience difficulty with swallowing? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            numericInput('Chest', 'Do you suffer from chest pain? No = 1, Yes = 2', 2, min = 1, max = 2, step = 1),
            submitButton('Get Results')
      ),

        # Show a plot of the generated distribution
        mainPanel(
            h3("Results of Prediction"),
            h4("Based on your responses, your lung cancer risk value is"),
            verbatimTextOutput("prediction")
        )
    )
))
