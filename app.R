#install.packages()
library(shiny)
library(shinydashboard)


ui<-dashboardPage(title= "Dashboard", skin= "red",
                  dashboardHeader(title="OBSERVATORIO",
                                  dropdownMenu(type="messages",
                                               messageItem(from="Andy",
                                                           ".")
                                  ),
                                  dropdownMenu(type="notifications",
                                               notificationItem(text="https://github.com/Evidencia-pe/Shiny-dashboard")
                                               
                                  ),
                                  dropdownMenu(type="tasks",
                                               taskItem(value=30,
                                                        text="Diseño del Frontend",
                                                        color="blue"),
                                               taskItem(value=10,
                                                        text="Diseño del Backend",
                                                        color="red")
                                  )
                                  
                  ),
                  dashboardSidebar(
                      tags$head(tags$style(HTML('.main-sidebar, .skin-red .wrapper {
                                                background-color: #b5383838;
                      }
                                                .skin-red .left-side, .skin-red .main-sidebar, .skin-red .wrapper {
    background-color: #0c0f16;
}
                              ')))
               
                  ),
                  dashboardBody()
)

server <- function(input, output) { 
}

shinyApp(ui, server)