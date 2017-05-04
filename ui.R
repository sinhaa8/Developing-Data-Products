#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
  titlePanel("ABCD college grade Calculator"),
  sidebarLayout(sidebarPanel(
    helpText("ABCD college grade calulcator. Please, input your 1.1st Trimester marks 2.2nd Trimester Marks 3.Final Exam Marks 4.Practical Exam Marks 5.Sports Marks 6.Community Development marks"),
    sliderInput(
      inputId = "trim1",
      label = strong("1st Trimester Marks"),
      min = 0,
      max = 100,
      value = 60
    ), #User 1st Trimester marks input slider
    sliderInput(
      inputId = "trim2",
      label = strong("2nd Trimester Marks"),
      min = 0,
      max = 100,
      value = 70
    ), #User 2nd Trimester marks input slider
    sliderInput(
      inputId = "final",
      label = strong("Final Exam Marks"),
      min = 0,
      max = 100,
      value = 80
    ), #User Final Exam marks input slider
    sliderInput(
      inputId = "pract",
      label = strong("Practical Exam Marks"),
      min = 0,
      max = 100,
      value = 60
    ), #User Practical Exam Marks input slider
    sliderInput(
      inputId = "sport",
      label = strong("Sports Marks"),
      min = 0,
      max = 100,
      value = 60
    ), #User Sports marks input slider
    sliderInput(
      inputId = "commd",
      label = strong("Community Development Marks"),
      min = 0,
      max = 100,
      value = 60
    ), #User Community Development marks input slider
        h5("ABCD college grade calulcator will quantify the overall performance of indiviual assessment and give the grade based on weightage provided on each assessment. The weightage are 1.1st Trimester marks-20% 2.2nd Trimester Marks-20% 3.Final Exam Marks-40% 4.Practical Exam Marks-10% 5.Sports Marks-5% 6.Community Development marks-5% "),
    h6("The app was created by Ashish Sinha as a Course Project for Coursera Developing Data Products module 9 week 4")
  ),
  
  mainPanel(
    uiOutput("user_data"), #Text with the user data
    plotOutput("plot", height = "175px", width = "100%"), #Colorful plot of the user BMI
    uiOutput("results") #Text results
  ))
))