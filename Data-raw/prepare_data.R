# data-raw/prepare_data.R
library(ggplot2)
library(usethis)

# Load the mpg dataset from ggplot2
data("mpg")

# Save the data to the package's data/ directory
usethis::use_data(mpg, overwrite = TRUE)
