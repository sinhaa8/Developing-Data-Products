#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

dat<-matrix(c(33, 17, 10 ,20 , 20), ncol = 1, nrow = 5)

shinyServer(function(input, output) {
  output$user_data <- renderText({
    
    paste0("<strong>","Your 1st Trimester Marks is ", input$mass, " and your 2nd Trimester Marks is ", input$height," and your Final Exam Marks is ", input$final," and your practical Exam Marks is ", input$pract," and your sports Marks is ", input$sport," and your community development Marks is ", input$commd, "</strong>")
  })
  
  output$results <- renderText({
    number = round((input$trim1*.2)+(input$trim2*.2)+(input$final*.4)+(input$pract*.1)+(input$sport*.05)+(input$commd*.05))
    if      (number <  33.0) cond = "<span style='color: red'>FAIL</span>"
    else if (number <= 50.0 & number>33) cond = "<span style='color: purple'>GRADE C</span>"
    else if (number <= 60 & number>50) cond = "<span style='color: orange'>GRADE B</span>"
    else if (number <= 80 & number >60) cond = "<span style='color: brown'>GRADE A</span>"
    else                  cond = "<span style='color: green'>GRADE A+ (Excellent)</span>"
    paste0("Your Overall Percentage is ", "<strong>", number, "</strong>","<br>", " It is ", cond, " according to ", "ABCD College Standard ", "</a>"
    )
  })
  
  output$plot <- renderPlot({
    number = round((input$trim1*.2)+(input$trim2*.2)+(input$final*.4)+(input$pract*.1)+(input$sport*.05)+(input$commd*.05))
    if (number>100) {number=100}
    barplot(dat, horiz = TRUE, yaxt="n", xlab = "number", main="Your Performance", col=c("red", "purple", "orange", "brown", "green"))
    lines(x=c(number, number), y=c(0,1.2), col="blue", lwd=4)
  })
  
  
})