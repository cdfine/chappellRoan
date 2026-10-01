#' Generate a Chappell Roan colour palette
#' Creates a colour palette function from one of the available Chappell Roan palettes.
#'
#' @param palette The name of the colour palette to use.
#' @param reverse Logical. If `TRUE`, reverses the order of the colours.
#' @param ... Additional arguments passed to `colorRampPalette()`.
#'
#' @return A function that generates colours from the selected palette.
#' @export
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

chappellRoan_pal <- function(palette = "Pink Pony Club", reverse = FALSE, ...) {
  pal <- chappellRoan_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
