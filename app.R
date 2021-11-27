#install.packages()
library(shiny)
library(shinydashboard)


ui<-dashboardPage(title= "Dashboard", skin= "red",
                  dashboardHeader(title="OBSERVATORIO",
                                  dropdownMenu(type="messages",
                                               messageItem(from="Andy",
                                                           "Esta página se está desarrollando...")
                                  ),
                                  dropdownMenu(type="notifications",
                                               notificationItem(text = "Aportes y Sugerencias en GitHub",href="https://github.com/Evidencia-pe/Shiny-dashboard")
                                               
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
                              '))),
                      sidebarMenu(
                        menuItem(
                          tabName = "tab_pp",
                          text = "Políticas Públicas",
                          icon = icon("eye"),
                          menuSubItem('Economía', tabName = 'pp_economia', icon = icon("piggy-bank")),
                          menuSubItem('Comercio Internacional', tabName = 'pp_comint', icon = icon("truck-moving")),
                          menuSubItem('Salud', tabName = 'pp_salud', , icon = icon("heart")),
                          menuSubItem('Educación', tabName = 'pp_educacion', icon = icon("graduation-cap"))
                        ),
                        menuItem(
                          tabName = "tab_ddhh",
                          text = "Derechos Humanos",
                          icon = icon("search")
                        ),
                        menuItem(
                          tabName = "tab_eg",
                          text = "Enfoque de Género",
                          icon = icon("users"),
                          collapsible = 
                          menuSubItem('Sub-Item One', tabName = 'subItemOne'),
                          menuSubItem('Violencia de Género', tabName = 'subItemTwo')
                        )
                      )

                  ),
                  dashboardBody()

)
server <- function(input, output) { 
}

shinyApp(ui, server)


