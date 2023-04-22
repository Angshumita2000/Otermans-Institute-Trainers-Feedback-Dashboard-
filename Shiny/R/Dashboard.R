library(shiny)

ui<-fluidPage(
  titlePanel("Trainers' Feedback"),
  sidebarLayout(
    sidebarPanel( selectInput("var",
                              label = "Choose a variable to display",
                              choices = list("Darjeeling School",
                                             "Malwai School Group 1",
                                             "Malwai School Group 2",
                                             "Palestine Novembor 2022-Thursday Batch",
                                             "Palestine November 2022- Wednesday Batch",
                                             "Philipines School",
                                             "School Name 1",
                                             "Srilanka School 1",
                                             "Unicef Pakistan"),selected = "Unicef Pakistan"),
                  checkboxGroupInput("Variables", "Choose Variable:",
                                     choiceNames =
                                       list("Difficulty Of understanding",
                                            "Rating",
                                            "Problem encounterd by the Institute",
                                            "If the Trainers' need any Support from OI"),
                                     choiceValues =
                                       list("calendar", "bed", "cog", "bug")
                  )
    ),
                mainPanel(
                img(src="C:/Users/ANGSHUMITA/Documents/app.R/www/DARJEELING sCHOOL dIFFICULTY.png",height = 140, width = 400))
))
server<-function(input,output){}

shinyApp(ui=ui,server = server)

