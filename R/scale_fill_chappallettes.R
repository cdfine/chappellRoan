#' Chappell Roan color scales for ggplot2
#'
#' Applies a Chappell Roan color palette to the fill aesthetic of a ggplot2 plot. Can be used for both discrete and continuous fill scales.
#'
#' @param palette The name of the Chappell Roan palette to use.
#' @param discrete Logical. If `TRUE`, uses a discrete fill scale.
#' If `FALSE`, uses a continuous gradient.
#' @param reverse Logical. If `TRUE`, reverses the order of the colors.
#' @param ... Additional arguments passed to the ggplot2 scale function.
#'
#' @return A ggplot2 fill scale.
#'
#' @export
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

scale_fill_chappallettes <- function(palette = "Pink Pony Club", discrete = TRUE, reverse = FALSE, ...) {
  pal <- chappellRoan_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("chappallettes_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
