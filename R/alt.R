# see zzz.R for "creation" of the alt object

#' Create Altair chart from  vegaspec
#'
#' @param spec vegaspec
#'
#' @return altair object
#' @examples
#'   as_chart(vegawidget::spec_mtcars)
#' @export
#'
as_chart <- function(spec) {

  spec <- as_vegaspec(spec)
  spec <- vw_as_json(spec)

  chart <- alt$Chart()$from_json(spec)

  chart
}
