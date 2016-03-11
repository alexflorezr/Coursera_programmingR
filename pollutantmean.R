pollutantmean <- function(directory, pollutant, id =1:332){
  setwd(directory[1])
  p_all_id <- numeric()
  for (number in seq_along(id)){
    p_file <- paste(sprintf("%03d", id[number]), ".csv", sep="")
    p_csv <- read.csv(p_file, header = T)
    p_all_id <- c(p_all_id, na.omit(p_csv[,which(colnames(p_csv) == pollutant)]))
  }
  mean(p_all_id)
}
