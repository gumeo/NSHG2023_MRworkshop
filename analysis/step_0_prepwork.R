# These packages are on CRAN, install with install.packages
# if you have not already installed them
library(tidyverse)
library(googledrive)
library(data.table)
library(MendelianRandomization)
library(simex) # to run simex correction
library(knitr) # to make nice embedded tables
library(furrr) # to run MR PRESSO serially
library(eoffice) # to save plots (optional)

# MR-PRESSO
if (!require("devtools")) { install.packages("devtools") } else {}
devtools::install_github("rondolab/MR-PRESSO")

# ggforestplot is not available for all versions on CRAN
# Get directly from github like this
devtools::install_github("NightingaleHealth/ggforestplot")

# TwoSampleMR
install.packages("remotes")
remotes::install_github("MRCIEU/TwoSampleMR")

############################################################
# Download the sumstats
############################################################

# Download function
source("./R/utils.R")

# Downloads 4 Gb (Should take a few minutes)
download_sumstats()
