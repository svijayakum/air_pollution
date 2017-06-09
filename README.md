### Files in this repo 

-README.md – This is the README.md
-pollutant_mean.R - Function that calculates the mean of a pollutant.    
-complete.R -  Function that returns number of completely observed cases.   
-corre.R - Function that returns the correlation between sufate and nitrate for monitor loctions with complete observations above a threshold.  


 
### Purpose of pollutant_mean.R

To calculate the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. 


### Purpose of complete.R

To read in a directory full of files and reports the number of completely observed cases in each data file. The function should return a data frame where the first column is the name of the file and the second column is the number of complete cases. 


### Purpose of corre.R  

To read in a directory of data files and a threshold for complete cases and calculates the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function should return a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0. 
