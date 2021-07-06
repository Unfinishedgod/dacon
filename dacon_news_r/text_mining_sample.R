library(keras)
library(dplyr)
library(ggplot2)
library(purrr)

devtools::install_github("rstudio/keras")
library(keras)
install_keras()

library(gpuR)
ORDER = 1024


library(data.table)
library(magrittr)
library(ggplot2)

library(textstem)
library(tidytext)
data(stop_words)

library(ruimtehol)

fn <- "http://www.cs.cmu.edu/~ark/personas/data/MovieSummaries.tar.gz"
download.file(fn,destfile="MovieSummaries.tar.gz")
untar("MovieSummaries.tar.gz",list=TRUE)  ## check contents
untar("MovieSummaries.tar.gz")


library(gpuR)
ORDER = 1024
