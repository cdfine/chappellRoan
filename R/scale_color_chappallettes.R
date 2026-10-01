#' Chappell Roan colour scales for ggplot2
#' Applies a Chappell Roan color palette to a ggplot2 plot.
#' Can be used for both discrete and continuous color scales.
#'
#' @param palette The name of the Chappell Roan palette to use.
#' @param discrete Logical. If `TRUE`, uses a discrete color scale.
#' If `FALSE`, uses a continuous gradient.
#' @param reverse Logical. If `TRUE`, reverses the order of the colors.
#' @param ... Additional arguments passed to the ggplot2 scale function.
#'
#' @return A ggplot2 color scale.
#'
#' @export
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

scale_color_chappallettes <- function(palette = "Pink Pony Club", discrete = TRUE, reverse = FALSE, ...) {
  pal <- chappellRoan_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  if (discrete) {
    scale_color_manual(
      values = pal,
      ...
    )
  } else {
    scale_color_gradientn(
      colors = colorRampPalette(pal)(256),
      ...
    )
  }
}
