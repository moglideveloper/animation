library(eulerr)

diag = euler(c("A" = 1, "B" = 4, "C" = 3, "D" = 2,
               "A&B" = 0.25, "C&B" = 1, "C&D" = 1.8
))

plottedDiag = plot(diag,
                   edges = FALSE,
                   fills = c("yellow", "green", "orange", "skyblue", "pink", "red", "purple"),
                   labels = c("", "", "", "", "", "", ""),
                   #below is mandatory to generate intersection
                   #tag.number.x
                   quantities = list(type = c('counts', "percent")),

)

#debugging variable starts here
cc=plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children
#debugging variable ends here

plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.1$children$tag.quantity.1$label = "a"
plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.2$children$tag.quantity.2$label = "b"
plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.3$children$tag.quantity.3$label = "c"
plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.4$children$tag.quantity.4$label = "d"
plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.5$children$tag.quantity.5$label = "e"
plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.6$children$tag.quantity.6$label = "f"
plottedDiag$children$canvas.grob$children$diagram.grob.1$children$tags$children$tag.number.7$children$tag.quantity.7$label = "g"


plottedDiag
