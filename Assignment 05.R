rm(list=ls(all=TRUE))
cat("\014")

header <- read.table("UNRATE.csv", header=TRUE,
                     sep=",",nrow=1)
DF <- fread("UNRATE.csv",
                        skip=1, sep=",",header=FALSE,
                        data.table=FALSE)
setnames(DF, colnames(header))
rm(header)

view(DF)
str(DF)

summary(DF)