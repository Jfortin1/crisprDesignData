# The file hg38_liftover+new_CAGE_peaks_phase1and2.bed.gz must be 
# in a directory called /fantom5
library(devtools)
library(GenomicRanges)
data <- read.table("fantom5/hg38_liftover+new_CAGE_peaks_phase1and2.bed.gz")
cols <- c(1,2,3,5,6,7)
data <- data[,cols]
colnames(data) <- c("chr", "start", "end", "score","strand", "tss_pos")
rownames(data) <- paste0("peak_", seq_len(nrow(data)))

gr <- GRanges(data$chr,
              IRanges(start=data$tss_pos,
                      end=data$tss_pos),
              strand=data$strand)
gr$score <- data$score                                
gr$peak_start <- data$start
gr$peak_end <- data$end
gr$ID <- paste0("cagePeak_", 1:length(gr))
names(gr) <- gr$ID
humanCagePeaks <- gr
use_data(humanCagePeaks, compress="xz", overwrite=TRUE)