#' @export
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

scale_fill_chappallette <- function(palette = "Pink Pony Club", discrete = TRUE, reverse = FALSE, ...) {
  pal <- chappellRoan_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("chappallette_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
