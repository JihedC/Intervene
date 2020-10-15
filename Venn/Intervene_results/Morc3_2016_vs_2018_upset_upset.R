#!/usr/bin/env Rscript
if (suppressMessages(!require("UpSetR"))) suppressMessages(install.packages("UpSetR", repos="http://cran.us.r-project.org"))
library("UpSetR")
pdf("/exports/humgen/jihed/Intervene/Venn/Intervene_results/Morc3_2016_vs_2018_upset_upset.pdf", width=14, height=8, onefile=FALSE)
expressionInput <- c('WTMORC3_Jacobsen_peaks.sorted'=787,'Morc3_2016_peaks_merged.sorted'=8960,'Morc3_2016_peaks_merged.sorted&WTMORC3_Jacobsen_peaks.sorted'=703)
upset(fromExpression(expressionInput), nsets=2, nintersects=30, show.numbers="yes", main.bar.color="#ea5d4e", sets.bar.color="#317eab", empty.intersections=NULL, order.by = "freq", number.angles = 0, mainbar.y.label ="No. of Intersections", sets.x.label ="Set size")
invisible(dev.off())
