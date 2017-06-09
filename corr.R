corr<- function(directory,threshold=0){
	directory <- ("./specdata/")
	file_list <- list.files(directory,pattern=".csv",full.names=T)
	bad_na <- complete(directory)
	meet_threshold <- bad_na[bad_na["nobs"]>threshold,]$id 
	corr <- numeric()
	for (i in meet_threshold){
	read_file <- read.csv(file_list[i],header=T,sep=",") 
	dataset <- read_file[complete.cases(read_file),]
	corr <- c(corr, cor(dataset$sulfate,dataset$nitrate))
	}
	return(corr)
}