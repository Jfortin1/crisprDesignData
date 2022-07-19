library(crisprDesign)
library(devtools)

load("../data/txdb_human.rda")
load("../data/txdb_mouse.rda")
tss_human <- getTssObjectFromTxObject(txdb_human)
tss_mouse <- getTssObjectFromTxObject(txdb_mouse)
use_data(tss_human, compress="xz", overwrite=TRUE)
use_data(tss_mouse, compress="xz", overwrite=TRUE)


# Now using FANTOM5 data
tss_human
load("../data/humanCagePeaks.rda")