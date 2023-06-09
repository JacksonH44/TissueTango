#' An R script that pulls example TCGA data from GDC using the bioconductor package in R
#' 
#' Date Created: June 5, 2023
#' Last Updated: June 12, 2023
#' Author: Alex Turco

setwd("/scratch/jhowe4/inputs/gdc_test")
BiocManager::install("TCGAbiolinks")

library(TCGAbiolinks)

query <- GDCquery(
  project = "TCGA-BRCA", 
  data.category = "Biospecimen",
  data.type = "Slide Image",
  experimental.strategy = "Tissue Slide"
)

print("Downloading...")

# Download whole slide images from TCGA for Pancreatic adenocarcinoma
GDCdownload(query, method="api")
