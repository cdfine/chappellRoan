#' @export
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

scale_color_chappallettes <- function(palette = "Pink Pony Club", discrete = TRUE, reverse = FALSE, ...) {
  pal <- chappellRoan_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("chappallettes_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
