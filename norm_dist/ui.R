library(shiny);library(shinydashboard)

### Title:

header <- dashboardHeader(title = "Normal Distribution Simulator")

### SideBar----
sidebar <- dashboardSidebar(
  sidebarMenu(
   menuItem("Graphs", tabName = "graphs", icon = icon("fa fa-circle")),
   menuItem("Raw Data", tabName = "data", icon = icon("fa fa-circle")),
   menuItem("About", tabName = "about", icon = icon("fa fa-info-circle"))
  )
 )


### Dashboard Tabs----
body <- dashboardBody(

  ### Tabintes:

  tabItems(

   ### TAB 1 = home----
   tabItem(tabName = "graphs",

     ## Box sliders:
     box(width = 4, title = "Parameters",
        solidHeader = TRUE, status = "primary",
        
        # sample size
        sliderInput(inputId = "n",
                    label = "Sample size",
                    value = 100, min = 10, max = 1000),
        
        # sample mean
        sliderInput(inputId = "mean",
               label = "Population mean",
               value = 0, min = -100, max = 100,step = 10),
        
        # sample sd
        sliderInput(inputId = "sd",
               label = "Population Standard deviation",
               value = 3, min = 1, max = 50),
        
        # refresh button
        actionButton(inputId = "refresh", label = "Simulate New Data" , 
                 icon = icon("fa fa-refresh"))
    ),

    mainPanel(

     box(title = "Plot", width = 8,
         solidHeader = TRUE, status = "primary",
         plotOutput(outputId = "hist", width = "100%"))
   )),

   # TAB 2 = rawdata----

   tabItem(tabName = "data",
           fluidRow(
            box(width = 4, solidHeader = TRUE, status = "primary",
                               title = "Raw Data",
                               dataTableOutput(outputId = "data"),
                
                # Button to download dataset
                downloadButton("download", "Download")
                
            )

            )
            ),

   # TAB 3 = About-----
   tabItem(tabName = "about",
           fluidPage(
               box(width = 12,status = "success",
                   shiny::includeMarkdown("README.md"))
           )
           )
           )
   )

ui <- dashboardPage(header, sidebar, body)


