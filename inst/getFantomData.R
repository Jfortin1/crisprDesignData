# The file hg38_liftover+new_CAGE_peaks_phase1and2.bed.gz must be 
# in a directory called /fantom5
library(devtools)
data <- read.table("fantom5/hg38_liftover+new_CAGE_peaks_phase1and2.bed.gz")
cols <- c(1,2,3,5,6,7)
data <- data[,cols]
colnames(data) <- c("chr", "start", "end", "score","strand", "tss_pos")
rownames(data) <- paste0("peak_", seq_len(nrow(data)))
humanCagePeaks <- data
use_data(humanCagePeaks, compress="xz")