range_value <- function(x, na.rm=F) {
  max(x, na.rm = na.rm) - min(x, na.rm = na.rm)
}
