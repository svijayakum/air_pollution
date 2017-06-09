complete <- function(directory,id = 1:332) {
	directory <- ("./specdata/")
	file_list <- list.files(directory,pattern=".csv",full.names=T)
	nobs <- numeric()
	for (i in id){
	read_file <- read.csv(file_list[i],header=T,sep=",")
	complete_cases <- complete.cases(read_file)
	nobs<-c(nobs,sum(complete_cases))
	}
	nobsdf<-data.frame(id,nobs)
	return(nobsdf)
}
