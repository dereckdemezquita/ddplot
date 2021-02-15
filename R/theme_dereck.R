#' Add derecksnotes theme to ggplot chart
#'
#' This function allows you to add the derecksnotes theme to your ggplotgraphics.
#' @keywords theme_derecksnotes
#' @export
#' @examples
#' iris %>%
#' ggplot(aes(x = Sepal.Length, y = Sepal.Width)) +
#' geom_point(aes(color = Species, shape = Species)) +
#' labs(title = "Iris data", subtitle = "Classic data", x = "Sepal Length", y = "Sepal Width") +
#' facet_grid(~ Species) +
#' theme_dereck()
#'
#' data.frame(year = time(nhtemp), tmps = as.matrix(nhtemp)) %>%
#' ggplot(aes(x = year, y = tmps)) +
#' geom_line() +
#' # geom_hline(yintercept = 0, size = 1, colour = "#333333") +
#' labs(title = "New Hampshire yearly temperatures", subtitle = "Collected between 1912 and 1971", x = "Year", y = "Average temperature") +
#' theme_dereck()
#'

theme_dereck <- function (base_size = 11, base_family = "") {
  theme_bw() %+replace% theme(
    plot.title = ggplot2::element_text(face = "bold", hjust = 1, margin = margin(0, 0, 5, 0, unit = "pt")), # 0.5 centres when position is set to "plot"
    plot.subtitle = ggplot2::element_text(hjust = 1, vjust = 0.015, margin = margin(0, 0, 5, 0, unit = "pt")),

    panel.background = ggplot2::element_blank(),
    # panel.border = ggplot2::element_rect(color = "#afafaf", fill = NA),
    axis.line = ggplot2::element_blank(),
    panel.border = ggplot2::element_blank(),

    panel.grid.minor = ggplot2::element_line(color = "#454545", size = 0.135, linetype = "dotted"),
    panel.grid.major = ggplot2::element_line(color = "#aaaaaa", size = 0.175, linetype = "longdash"),

    # axis.line = ggplot2::element_line(color = "#afafaf"),
    axis.ticks = ggplot2::element_line(color = "#aaaaaa"),

    strip.background = element_rect(fill = "white", colour = "#676767")
  )
}
