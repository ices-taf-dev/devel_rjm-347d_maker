## Download and preprocess data, write TAF input tables

## Before: catch.csv, surveys_all.csv (ftp)
## After:  catch.csv, survey.csv, summary.csv (data)

library(icesTAF)

ftp <- "https://raw.githubusercontent.com/ices-taf/ftp/master/wgef/2015/rjm-347d/raw/"

mkdir("data")

## Download data, select years and surveys of interest
catch <- read.taf(paste0(ftp, "catch.csv"))
survey <- read.taf(paste0(ftp, "surveys_all.csv"))
survey <- survey[survey$Year %in% 1993:2014, names(survey) != "Unknown"]

## Scale each survey to average 1, combine index as average of three surveys
survey[-1] <- sapply(survey[-1], function(x) x/mean(x, na.rm=TRUE))
survey$Index <- rowMeans(survey[-1])

## Finalize tables
row.names(survey) <- NULL
summary <- data.frame(Year=survey$Year, Catch=NA, Index=survey$Index)
summary$Catch[summary$Year %in% catch$Year] <- catch$Catch

## Write tables to data directory
write.taf(catch, "data/catch.csv")
write.taf(survey, "data/survey.csv")
write.taf(summary, "data/summary.csv")
