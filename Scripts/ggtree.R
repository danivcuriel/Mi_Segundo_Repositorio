##ggtree

library(ggtree)
library (ape) ##para manipulación de árboles

##Ejemplo 1: Visualizacipon de un árbol filogenético 
##Comenzaremos generando un árbol aleatorio y visualizandolo con ggtree
tree <- rtree(10) ##árbol aleatorio generado

ggtree(tree)+
  geom_tiplab()


##Usar ggtree en mi árbol 
library(ggtree)

arbol_clustal
ggtree (arbol_clustal, branch.length = "none")+
  geom_tiplab(size= 3, color ="purple", offset = 0.1 )

ggtree(arbol_clustal, layout = "circular", branch.length = "none") +
  geom_tiplab(size = 2, offset = 0.1)   


  
