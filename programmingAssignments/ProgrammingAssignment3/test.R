
## Test Part01
options(digits = 4)
pollutantmean(directory, "nitrate", 70:72)
directory <-c("specdata")
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 23)
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
source("submitscript1.R")
submit()



# Test Part02
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)

## Test Rart03
source("corr.R")
source("complete.R")
cr <- corr("specdata", 150)
head(cr)
summary(cr)

cr <- corr("specdata", 400)
head(cr)
summary(cr)

cr <- corr("specdata", 5000)
summary(cr)
length(cr)

cr <- corr("specdata")
summary(cr)
length(cr)
