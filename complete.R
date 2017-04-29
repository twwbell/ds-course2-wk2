complete <- function(directory, id = 1:332) {
        files <- list.files(path = directory , full.names =TRUE)
        ids <- numeric()
        nobs <- numeric()
        for (i in seq_along(id)) {
                current_file <- read.csv(files[id[i]])
                ok <- complete.cases(current_file)
                ids[i] <- id[i]
                nobs[i] <- sum(ok)
        }
        data.frame("id" = ids, "nobs"= nobs)
}