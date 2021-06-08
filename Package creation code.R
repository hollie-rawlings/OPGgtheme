library(devtools)
library(fs)

create_package("C:/Users/hollie.rawlings/Documents/Development/DEV projects/DEV projects/OPGgtheme")
use_git() 

load_all("C:/Users/hollie.rawlings/Documents/Development/DEV projects/DEV projects/OPGgtheme")

OPGgtheme::theme_OPG_basic()

use_package("ggplot2")