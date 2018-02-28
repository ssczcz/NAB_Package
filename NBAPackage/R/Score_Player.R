#' A NBA Player Function
#'
#' This function allows you to select the player who scored the most points in a specific year.
#' @x selected year
#' @keywords most points
#' @export
#' @examples
#' Score_Player(1991)


Score_Player <- function(x) {
  load("~/Rpackage/NBAPackage/data/Seasons_Stats_NBA.RData")
  dplyr::select(subset(filter(d, Year == x), PTS == max(PTS)), Player)
}
