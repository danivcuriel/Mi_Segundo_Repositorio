##ggtree

library(ggtree)
library (ape) ##para manipulación de árboles

##Ejemplo 1: Visualizacipon de un árbol filogenético 
##Comenzaremos generando un árbol aleatorio y visualizandolo con ggtree
tree <- rtree(10) ##árbol aleatorio generado

ggtree(tree)+
  geom_tiplab()


##Usar ggtree en mi árbol 
ggtree( arbol_clustal, layout = "circular")+
  geom_tiplab(size= 3, color= "purple")  ##Como las hago más chiquitas??? porque no se ve el nombre de mis grupos 
  
