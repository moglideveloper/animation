library(eulerr)

scene = function(colors, labels) {

  diag = euler(c("A" = 2, "B" = 4, "A&B" = 1))

  plottedDiag = plot(diag,
                     edges = FALSE,
                     fills = colors,
                     labels = c("", "", ""),
                     #below is mandatory to generate intersection
                     #tag.number.x
                     quantities = list(type = c('counts', "percent")),

  )

  plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.1$children$tag.quantity.1$label = labels[1]
  plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.2$children$tag.quantity.2$label = labels[2]
  plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.3$children$tag.quantity.3$label = labels[3]

  plottedDiag
}