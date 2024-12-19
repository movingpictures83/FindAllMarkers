library(dplyr)
library(Seurat)
library(patchwork)


input <- function(inputfile) {
   pbmc <<- readRDS(inputfile)  
}

run <- function() {}

output <- function(outputfile) {
pbmc.markers <- FindAllMarkers(pbmc, only.pos = TRUE)
#print(pbmc.markers)
#pbmc.markers %>%
#    group_by(cluster) %>%
#    dplyr::filter(avg_logFC > 1)

saveRDS(pbmc, outputfile)
saveRDS(pbmc.markers, paste(outputfile, "markers", "rds", sep="."))
}



