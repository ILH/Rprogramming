getMonitorData <- function(directory, id) {
  
  id <- as.integer(id)
  filepath <- sprintf('%s/%03d.csv',directory, id)
  data <- read.csv(filepath)
  data
}