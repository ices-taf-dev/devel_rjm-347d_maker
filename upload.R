## Gather TAF input and output tables to be uploaded

## Before: catch.csv, survey.csv, summary.csv, dls.txt (data, output)
## After:  catch.csv, survey.csv, summary.csv, dls.txt (upload)

library(icesTAF)

mkdir("upload/input")
mkdir("upload/output")

cp("data/catch.csv", "upload/input")
cp("data/survey.csv", "upload/input")
cp("data/summary.csv", "upload/input")
cp("output/dls.txt", "upload/output")
