#' Dataset: mpg
#'
#' This dataset contains fuel economy data for different models of cars.
#'
#' @format A data frame with 234 rows and 11 variables:
#' \describe{
#'   \item{manufacturer}{Manufacturer of the car}
#'   \item{model}{Model of the car}
#'   \item{displ}{Engine displacement, in litres}
#'   \item{year}{Year of manufacture}
#'   \item{cyl}{Number of cylinders}
#'   \item{trans}{Type of transmission}
#'   \item{drv}{Drive train (f = front-wheel, r = rear-wheel, 4 = 4wd)}
#'   \item{cty}{City miles per gallon}
#'   \item{hwy}{Highway miles per gallon}
#'   \item{fl}{Fuel type}
#'   \item{class}{Type of car}
#' }
#' @source ggplot2 package
"mpg"

devtools::document()
