complete <- function(directory, id =1:332){
  setwd(directory)
  p_data_frame <- as.data.frame(matrix(nrow=length(id),ncol=2))
  colnames(p_data_frame) <- c("id", "nobs")
  for (number in seq_along(id)){
    p_file <- paste(sprintf("%03d", id[number]), ".csv", sep="")
    p_csv <- read.csv(p_file, header = T)
    p_data_frame[number,] <- c(sprintf("%03d", id[number]), dim(na.omit(p_csv))[1])
    }
  p_data_frame
}
complete("~/Desktop/PhD/CCW/Courses/Coursera/ProgrammingR/Week2/specdata/", c(1,22,100, 101, 102))
