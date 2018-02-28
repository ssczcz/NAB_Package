#' A NBA Data Function
#'
#' This function allows you to create correlation matrix for all numeric variables in NBA data for a specific year.
#' @x selected year
#' @keywords correlation matrix, numeric variables
#' @export
#' @examples
#' Numeric_Correlation(1991)


Numeric_Correlation <- function(x) {
  load("~/Rpackage/NBAPackage/data/Seasons_Stats_NBA.RData")
  head(cor(purrr::keep(filter(d, Year == x), is.numeric)), n = 10)
}

