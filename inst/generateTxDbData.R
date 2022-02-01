library(crisprDesign)
txdb <- getTxDb(organism="Homo sapiens")
txdb <- TxDb2GRangesList(txdb)
GenomeInfoDb::genome(txdb) <- "hg38"
txdb_human <- txdb
save(txdb_human,
     file="../data/txdb_human.rda")

txdb <- getTxDb(organism="Mus musculus",
                release=102) # latest release for GRCm38
txdb <- TxDb2GRangesList(txdb)
GenomeInfoDb::genome(txdb) <- "mm10"
txdb_mouse <- txdb
save(txdb_mouse,
     file="../data/txdb_mouse.rda")
