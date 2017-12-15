## Run core scripts: data, input, model, output, report

library(icesTAF)

## Script  Output
## ------  ------
## data    survey.csv
## input   input.RData
## model   dls.txt
## output  dls.txt
## report  dls.png

make("data.R",   "data.R",            "data/survey.csv")
make("input.R",  "data/survey.csv",   "input/input.RData")
make("model.R",  "input/input.RData", "model/dls.txt")
make("output.R", "model/dls.txt",     "output/dls.txt")
make("report.R", "output/dls.txt",    "report/dls.png")
