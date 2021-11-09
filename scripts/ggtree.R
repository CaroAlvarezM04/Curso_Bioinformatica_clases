                  # PRACTICA GGTREE #

install.packages("ggtree")
install.packages("phytools")
install.packages("maps")
install.packages("EBImages")
install.packages("treeio")
library(ape)
library(maps)
library(EBImages)
library(ggtree)
library(phytools)
library(treeio)

#generar un arbol con 10 elementos
arbolito1 <- rtree(10)
#generaciÃ³n de arbol con ggtree
ggtree(arbolito1, color="purple", 
       size=1) #cambia solo color y tamaÃ±o de linea genera un arbol default
ggtree(arbolito1, layout = "circular") #cambia el arbol a una gilogenia circular

#generar un arbol con 20 elementos
arbolito2 <- rtree(20)
ggtree(arbolito2, color="orange", 
       size=2) #cambia color y tamaÃ±o de linea
ggtree(arbolito2, layout = "circular")#arbol circular mas completo porque tiene mas datos
ggtree(arbolito2) + geom_nodepoint(color= "purple") +
  layout_dendrogram()
#ultimo arbol mas complejo con nodos con otro color en dendograma

#Hay dos tipos de metodos y distintos algoritmos para hacer inferencia
#Apartir de una entrada de alineamiento hay distintos metodos
#Escencialmente 2 las de distancias a mayor distancia hay mas cambios
  #se agrupan en clado de acuerdo a sus similitudes o mas cercanas
  #independiente del metodo el fundamento es el mismo
#maxima parsimonia: tratar de encontrar el minimo de cambios y compara los scores de distintos arboles
#para inferir distancias hay metodos: basados en distancia son muy rapidos, desventaja poca divergencia o muy parecidas
#Reloj molecular: para cada gen o proteina, la tasa de evolución molecular es aprox constante
  #como interpretar una tasa: el cambio en una cantidad comparado con otra cantidad

#REPOSITORIO DE CODIGO
#control de versiones permite tener un record de los cambios del codigo
#fuente de codigo que no esta almacenado en el cran de R ni el Bioconductor
#GITHUB
#es un recurso gratuito solo con correo electronico


#________________________________________
#####

##Carolina Ãlvarez

##Ultimo cambio: 29 de octubre de 2021

#####