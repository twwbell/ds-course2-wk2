pollutantmean <- function(directory, pollutant, id = 1:332) {
        files <- list.files(path = directory , full.names =TRUE)
        data <- list()
        for (i in seq_along(id)) {
                current_file <- read.csv(files[id[i]])
                data <- rbind(data, current_file)
        }
        sub <- na.omit(data[[pollutant]])
        mean(sub)
}