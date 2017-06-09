pollutantmean <- function(directory, pollutant = "nitrate", id=1:332) {
      directory <- ("./specdata/")
	file_list <- list.files(directory, pattern=".csv",full.names=T)
	dataset = numeric()
	for (i in id) {
	read_file = read.csv(file_list[i],header=T, sep=",")
	dataset = c(dataset, read_file[[pollutant]])
	}
	return(mean(dataset, na.rm=TRUE))
}
  