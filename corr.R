source("complete.R")
# options(digits=4) ## use from console for quiz evaluation

corr <- function(directory, treshold = 0) {
        files <- list.files(path = directory , full.names = TRUE)                
        id_above_treshold <- subset(complete(directory), nobs > treshold)$id
        correlations <- numeric()
        
        for (i in seq_along(id_above_treshold)) {
                current_file <- read.csv(files[id_above_treshold[i]])
                current_file <- na.omit(current_file)
                
                current_cor <- cor(current_file$nitrate, current_file$sulfate)
                correlations <- c(correlations, current_cor)
        }
        correlations
}