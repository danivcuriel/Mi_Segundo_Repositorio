##árbol filogenetico

library(ggmsa)
library(msa)
library(Biostrings)

secuencia <- readDNAStringSet("raw_data/DivergentGlobins (1).fasta") ##Leer la secuencia fasta 


# Alineamientos con ClustalW y Muscle
alineamiento_clustal <- msa(secuencia, method = "ClustalW")
alineamiento_muscle <- msa(secuencia, method = "Muscle")

# Convertir alineamientos a objetos de clase 'alignment' de seqinr
alineamiento_clustal_seqinr <- msaConvert(alineamiento_clustal, type = "seqinr::alignment")
alineamiento_muscle_seqinr <- msaConvert(alineamiento_muscle, type = "seqinr::alignment")

# Calcular las matrices de distancia
matriz_distancia_clustal <- dist.alignment(alineamiento_clustal_seqinr, "identity")
matriz_distancia_muscle <- dist.alignment(alineamiento_muscle_seqinr, "identity")

pdf("result/arbol_clustal.pdf")
arbol_clustal <- nj(matriz_distancia_clustal)
plot(arbol_clustal, main = "Árbol filogenético de alineamiento con ClustalW")
dev.off()

pdf("result/arbol_muscle.pdf") ###No se me guardaaaa 
arbol_muscle <- nj(matriz_distancia_muscle)
plot(arbol_muscle, main = "Árbol filogenético de alineamiento con Muscle")
dev.off()