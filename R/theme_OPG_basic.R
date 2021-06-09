#' theme_OPG_basic
#'
#' @return a ggplot 2 theme object within OPG branding complicance
#' @export
#'
#' @examples
#'  library(ggplot2)
#'  data=head(mtcars, 30)
#'  g <-ggplot2::ggplot(data, aes(x=wt, y=mpg)) +
#'  ggplot2::geom_point() + # Show dots
#'  ggplot2::geom_text(
#'    label=rownames(data),
#'    nudge_x = 0.25, nudge_y = 0.25,
#'    check_overlap = TRUE
#'   )
#'   g <- g + OPGgtheme::theme_OPG_basic()
theme_OPG_basic <- function(){
  font <- "serif"   #assign font family up front

  ggplot2::theme_minimal() +   #replace elements we want to change

    ggplot2::theme(

      #grid elements
      panel.grid.major = ggplot2::element_blank(),    #strip major gridlines
      panel.grid.minor = ggplot2::element_blank(),    #strip minor gridlines
      axis.ticks = ggplot2::element_blank(),          #strip axis ticks

      #text elements
      plot.title = ggplot2::element_text(             #title
        family = font,            #set font family
        size = 20,                #set font size
        color = 'red',
        face = 'bold',            #bold typeface
        hjust = 0.5,              #center align
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
