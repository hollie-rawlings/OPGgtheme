library(devtools)
library(fs)

#create_package("C:/Users/hollie.rawlings/Documents/Development/DEV projects/DEV projects/OPGgtheme")
#use_git()

load_all()

OPGgtheme::theme_OPG_basic()
check()
use_package("ggplot2")
use_mit_license("Hollie Rawlings")
document()
