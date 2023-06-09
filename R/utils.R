# Note that calling this function will prompt google authentication
download_sumstats <- function() {
  require(tidyverse)
  require(googledrive)
  bmi_sumstat_link <- "https://drive.google.com/file/d/1ZZISjZL89aYnJ2F30JWw4Be4--TtN-1N/view?usp=share_link"
  healthspan_sumstat_link <- "https://drive.google.com/file/d/1q-yu5OP739idWwnORENLBswbQh3kR5_U/view?usp=share_link"
  mdd_sumstat_link <- "https://drive.google.com/file/d/1pr_LsCigFPu1Wx9dIPDDJNK8pZbpa-gJ/view?usp=share_link"
  scz_sumstat_link <- "https://drive.google.com/file/d/1ij7v3s6n0vuJdUbaGIPxvbDqlYpTQ1LK/view?usp=share_link"
  
  dir.create("sumstats")
  googledrive::drive_download(scz_sumstat_link,
                              path = "./sumstats/scz.txt", overwrite = TRUE)
  googledrive::drive_download(healthspan_sumstat_link,
                              path = "./sumstats/healthspan.txt", overwrite = TRUE)
  googledrive::drive_download(mdd_sumstat_link,
                              path = "./sumstats/mdd.txt", overwrite = TRUE)
  googledrive::drive_download(bmi_sumstat_link,
                              path = "./sumstats/bmi.txt", overwrite = TRUE)
  print("Downloaded files in ./sumstats/")
  return(NULL)
}