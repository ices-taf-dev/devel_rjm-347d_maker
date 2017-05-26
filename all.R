## Run core scripts: db, input, model, output, upload

library(icesTAF)

## Script     Output
## ------     ------
## db         survey.csv
## input      input.RData
## model      dls.txt
## output     dls.txt
## upload     dls.txt
## xtra_plot  dls.png

make("db.R",        "db.R",                   "db/survey.csv")
make("input.R",     "db/survey.csv",          "input/input.RData")
make("model.R",     "input/input.RData",      "model/dls.txt")
make("output.R",    "model/dls.txt",          "output/dls.txt")
make("upload.R",    "output/dls.txt",         "upload/output/dls.txt")
make("xtra_plot.R", "upload/output/dls.txt",  "upload/plot/dls.png")
