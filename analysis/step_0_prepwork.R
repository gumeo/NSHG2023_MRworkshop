############################################################
# Code block 1: Required packages to install
############################################################
# These packages are on CRAN, install with install.packages
# if you have not already installed them. Note that if you
# cannot install all packages, then that is fine, still try
# to download the sumstats with the code in the second block 
# of this file.
packages_to_install_from_cran <- c("tidyverse",
                         "googledrive",
                         "data.table",
                         "ggrepel", # Repel labels in ggplots
                         "patchwork", # Nice way to combine ggplots
                         "MendelianRandomization", # MR package from S. Burgess
                         "simex", # to run simex correction
                         "knitr", # to make nice embedded tables
                         "furrr", # to run MR PRESSO serially
                         "survey") # Required for gsms

for(i in 1:length(packages_to_install_from_cran)) {
  current_package <- packages_to_install_from_cran[i]
  if(!(current_package %in% installed.packages())){
    install.packages(current_package)
  }
}

# Rest of the packages are not on CRAN, need to be downloaded from
# various other sources

# MR-PRESSO
if (!require("devtools")) { install.packages("devtools") } else {}
devtools::install_github("rondolab/MR-PRESSO")

# gsmr
# More info: https://yanglab.westlake.edu.cn/software/gsmr/#Installation
install.packages("https://yanglab.westlake.edu.cn/software/gsmr/static/gsmr_1.1.1.tar.gz",
                 repos=NULL,type="source")

# ggforestplot is not available for all versions on CRAN
# Get directly from github like this
devtools::install_github("NightingaleHealth/ggforestplot")

# TwoSampleMR
install.packages("remotes")
remotes::install_github("MRCIEU/TwoSampleMR")

############################################################
# Code block 2: Download the sumstats
############################################################

# Download function
source("./R/utils.R")

# Downloads 4 Gb (Should take a few minutes)
# You will be prompted to allow tidyverse to use googledrive,
# this is expected. The files are all saved in the folder
# sumstats under the root of this project.
download_sumstats()
