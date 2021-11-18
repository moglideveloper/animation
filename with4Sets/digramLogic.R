library(eulerr)

scene = function(colors, labels) {

  diag = euler(c("A" = 1, "B" = 4, "C" = 3, "D" = 2,
                 "A&B" = 0.25, "C&B" = 1, "C&D" = 1.8
  ))

  plottedDiag = plot(diag,
                     edges = FALSE,
                     fills = colors,
                     labels = c("", "", "", "", "", "", ""),
                     #below is mandatory to generate intersection
                     #tag.number.x
                     quantities = list(type = c('counts', "percent")),

  )

  plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.1$children$tag.quantity.1$label = labels[1]
  plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.2$children$tag.quantity.2$label = labels[2]
  plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.3$children$tag.quantity.3$label = labels[3]
  plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.4$children$tag.quantity.4$label = labels[4]
  plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.5$children$tag.quantity.5$label = labels[5]
  plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.6$children$tag.quantity.6$label = labels[6]
  plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.7$children$tag.quantity.7$label = ""

  plottedDiag
}