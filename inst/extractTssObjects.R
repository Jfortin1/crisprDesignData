library(crisprDesign)

load("../data/txdb_human.rda")
load("../data/txdb_mouse.rda")
tss_human <- getTssObjectFromTxObject(txdb_human)
tss_mouse <- getTssObjectFromTxObject(txdb_mouse)
save(tss_human, file="../data/tss_human.rda")
save(tss_mouse, file="../data/tss_mouse.rda")
