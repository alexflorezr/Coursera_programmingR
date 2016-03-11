corr <- function(directory, threshold = 0){
  setwd(directory)
  p_corr <- numeric()
  for (files in seq_along(dir(directory, pattern = ("*.csv")))){
    p_csv <- read.csv(dir(directory, pattern = ("*.csv"))[files], header = T)
    p_csv_na <- na.omit(p_csv)
    if(dim(p_csv_na)[1] > threshold){
      p_corr <- c(p_corr, cor(p_csv_na[,2], p_csv_na[,3]))
    }  
}
  p_corr
}
corr("~/Desktop/PhD/CCW/Courses/Coursera/ProgrammingR/Week2/specdata/", 10)
