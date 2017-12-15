## Run core scripts: data, input, model, output

library(icesTAF)

## Script     Output
## ------     ------
## data       survey.csv
## input      input.RData
## model      dls.txt
## output     dls.txt
## xtra_plot  dls.png

make("data.R",      "data.R",            "data/survey.csv")
make("input.R",     "data/survey.csv",   "input/input.RData")
make("model.R",     "input/input.RData", "model/dls.txt")
make("output.R",    "model/dls.txt",     "output/dls.txt")
make("xtra_plot.R", "output/dls.txt",    "report/plot/dls.png")
