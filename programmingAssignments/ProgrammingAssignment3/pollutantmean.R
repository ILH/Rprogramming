pollutantmean <- function(directory, pollutant,id = 1:332) {
  multiMonitorsPoll <- c()
  numrecord <- 0
  for(i in id) {
    monitorData <- getMonitorData(directory, i)
    noNAdata <- monitorData[!is.na(monitorData[,pollutant]),]
    multiMonitorsPoll <- c(multiMonitorsPoll,noNAdata[,pollutant])
  }
  retmean <- mean(multiMonitorsPoll)
  retmean
  
}
