#' A function that illustrates bar plot of tw o variables
#'
#' The function below will show us the bar plot of two variables and how they depend on each other
#'
#' @author Islam Islamov and Leyla Ellazova
#' @param data the data selected
#' @param x numeric. numeric vector
#' @param y numeric. numeric vector
#' @param color color of the bar plot
#' @return bar plot a bar plot is returned with selected color
#' @import ggplot2 dplyr
#' @example alcohol consumption in different countries or wine quality and its inputs.
#' @export

effect <- function (data, x, y, color) {
  data %>%
    ggplot() +
    geom_bar(aes(x=x,y=y),
             stat = "summary",
             fun ="mean",fill=color)
}

