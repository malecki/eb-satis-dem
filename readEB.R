library(foreign);
setwd("~/matt/apsa07")

EB41 <- read.dta("eb41/DS0001/06422-0001-Data.dta")
source("eb41.1/DS0001/codebook.widths.txt")
EB41.1 <- read.fwf("eb41.1/DS0001/06535-0001-Data.txt", 
widths=widths,buffersize=15000)
rm(widths)
