#' A basic universal company theme
#'
#'Imports a ggplot 2 thgeme object to help you theme plot within company guidelines
#'
#'
#'
#'
#'
#'
theme_OPG_basic <- function(){
  font <- "Georgia"   #assign font family up front

  ggplot2::theme_minimal() +   #replace elements we want to change

    ggplot2::theme(

      #grid elements
      panel.grid.major = ggplot2::element_blank(),    #strip major gridlines
      panel.grid.minor = ggplot2::element_blank(),    #strip minor gridlines
      axis.ticks = ggplot2::element_blank(),          #strip axis ticks

      #since theme_minimal() already strips axis lines,
      #we don't need to do that again

      #text elements
      plot.title = ggplot2::element_text(             #title
        family = font,            #set font family
        size = 20,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        vjust = 2),               #raise slightly

      plot.subtitle = ggplot2::element_text(          #subtitle
        family = font,            #font family
        size = 14),               #font size

      plot.caption = ggplot2::element_text(           #caption
        family = font,            #font family
        size = 9,                 #font size
        hjust = 1),               #right align

      axis.title = ggplot2::element_text(             #axis titles
        family = font,            #font family
        size = 10),               #font size

      axis.text = ggplot2::element_text(              #axis text
        family = font,            #axis famuly
        size = 9)               #font size

      #since the legend often requires manual tweaking
      #based on plot content, don't define it here
    )
}
