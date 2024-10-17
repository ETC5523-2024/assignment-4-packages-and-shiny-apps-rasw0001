#' @title Launch the Shiny App
#' @description This function launches the Shiny application contained in the package.
#' @return No return value, called for side effects.
#' @export
launchApp <- function() {
    shiny::runApp(system.file("app", package = "assignment4shiny"))
}
