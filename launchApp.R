#' @title Launch the Shiny App
#' @description This function launches the Shiny application contained in the package.
#' @return No return value, called for side effects.
#' @export
launchApp <- function() {
    shiny::runApp(system.file("app", package = "assignment4shiny"))
}

#' Launch the Fuel Economy Shiny App
#'
#' This function launches a Shiny app for exploring the mpg dataset.
#' @export
launchApp <- function() {
    shiny::runApp(system.file("app", package = "assignment4shiny"))
}
