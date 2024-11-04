##árbol filogenetico

library(ggmsa)
library(msa)
library(Biostrings)

secuencia <- readDNAStringSet("raw_data/DivergentGlobins (1).fasta") ##Leer la secuencia fasta 


# Alinear secuencias con ClustalW
alineamiento <- msa(secuencia, method = "ClustalW") 

# Convertir alineamiento a una matriz
alineamiento_matriz <- as.matrix(msaConvert(alineamiento, type = "seqinr::alignment"))

install.packages("seqinr")
library(seqinr)

library(ape)

# Calcular la matriz de distancias
distancias <- dist.alignment(alineamiento_matriz, "identity") # "identity" calcula la distancia en base a coincidencias


