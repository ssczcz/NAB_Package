#' A NBA Player Function
#'
#' This function allows you to select the oldest player in a specific year.
#' @x selected year
#' @keywords oldest player
#' @export
#' @examples
#' Oldest_Player(1991)


Oldest_Player <- function(x) {
  load("~/Rpackage/NBAPackage/data/Seasons_Stats_NBA.RData")
  dplyr::select(subset(filter(d, Year == x), Age == max(Age)), Player)
}

