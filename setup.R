
# a script for installing (if needed) and loading packages for this project.

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# create a string of package names
packages <- c('tidyverse',
              'rmarkdown',
              'lterdatasampler',
              'rstatix',
              "plotly",
              "lubridate",
              "palmerpenguins",
              "viridis",
              "scales",
              "terra",
              "ggnewscale",
              "tidyterra",
              "tmap",
              "egg",
              "ggrepel",
              "ggpubr",
              "plotrix",
              "cowplot")

# use the packageLoad function we created on those packages
packageLoad(packages)
