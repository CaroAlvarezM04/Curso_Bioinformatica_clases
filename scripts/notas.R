#Bioconductor
BiocManager::install()
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.13")

#Instalar paquetes desde Bioconductor
BiocManager::install("Biostrings")

#Mi ruta desde esl escritorio
x <- read.csv ("C:\\users\\PC\\Desktop\\TUDOCUMENTO.csv", header=TRUE, sep=",")