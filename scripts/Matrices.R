              Matrices

              
Una matriz es un arreglo rectangular de datos del mismo tipo. No. No se pueden mezclar.
Creación de matrices
Para crear una matriz podemos usar la función matrix(). Dicha función requiere de, al menos un vector e
indicar al menos una dimensión.
y <- matrix(c(1,5,8,-4),nrow=2,ncol=2)
y
## [,1] [,2]
## [1,] 1 8
## [2,] 5 -4
Se el indica el numero de renglones y el número de columnas como opción usando nrow y ncol respectivamente.
La matriz se llena por renglones hasta completarse
z<-matrix(c(TRUE, FALSE,rep(c(TRUE, FALSE),3)),nrow=4)
z
## [,1] [,2]
## [1,] TRUE TRUE
## [2,] FALSE FALSE
## [3,] TRUE TRUE
## [4,] FALSE FALSE
¿Por qué sólo es necesario indicar una dimensión?
  Podemos decirle a R que cambie el orden con el que llena la matriz, es decir en lugar de que lo haga por
columnas, lo haga por renglones
m <- matrix(c(1,2,3,4,5,6),nrow=2,byrow=TRUE)
m
## [,1] [,2] [,3] 
## [1,] 1 2 3 
## [2,] 4 5 6 


Dimensiones de un matriz 
La dimensión de una matriz es el número de renglones y de columnas respectivamente. Se puede obtener usando la función dim() 
dim(y) 
## [1] 2 2 
dim(z) 
## [1] 4 2 
Una forma mucho menos eficiente de definir una matriz es declarando una matriz sin elementos y después llenándolos de forma explícita 
y <- matrix(nrow=2,ncol=2) 
y[1,1] <- "Esta" 
y[2,1] <- "es" 
y[1,2] <- "una" 
y[2,2] <- "matriz" 
y 
## [,1] [,2] 
## [1,] "Esta" "una" 
## [2,] "es" "matriz" 


Operaciones con matrices 
Multiplicación de un escalar con una matriz 
3*m 
## [,1] [,2] [,3] 
## [1,] 3 6 9 
## [2,] 12 15 18 

#______________________________
Suma de dos matrices 
m + m 
## [,1] [,2] [,3] 
## [1,] 2 4 6 
## [2,] 8 10 12 
n<-matrix(c(2,3,4,5,6,7),ncol=3) 
m+n 
## [,1] [,2] [,3] 
## [1,] 3 6 9 
## [2,] 7 10 13 
Para sumar matrices deben tener las mismas dimensiones 
dim(n) 
## [1] 2 3 
dim(m) 
## [1] 2 3 
(dim(n)-dim(m))==0 
## [1] TRUE TRUE 

#_______________________________
Multiplicación de matrices 
Se utiliza el operador %*%. Sí. Son tres caracteres. E incluyen dos %. No hay espacios y es un sólo operador . 
n<-matrix(c(2,3,4,5,6,7),ncol=2) 
n 
## [,1] [,2] 
## [1,] 2 5 
## [2,] 3 6 
## [3,] 4 7 
m %*% n 
## [,1] [,2] 
## [1,] 20 38 
## [2,] 47 92 
¿Recuerdas cuál es el criterio para calcular el producto de matrices? ¿Recuerdas cómo se multiplican dos matrices? 
  
  
  #__________________________________________________
  Seleccionar elementos de matrices 
Para seleccionar elementos de matrices se hace de forma análoga a vectores, es decir, se utiliza el operador []. Sólo que esta vez hay que indicar tanto los renglones como la columna en ese orden 
m[2,3] # Este es el segundo renglón tercera columna de m 
## [1] 6 
n[3,2] # Este es el elemento que está en el renglón 3 y columna 2 de la matriz n ## [1] 7 
Seleccionar todo(a) un(a) renglón(columna) 
Para seleccionar todos los elementos de un renglón dado se utiliza la siguiente sintáxis m[2,] # Todos los elementos que están en el segundo renglón 
## [1] 4 5 6 
Para una columna 
m[,3] # Toda la tercera columna 
## [1] 3 6 


Selecccionar elementos de una matriz 
¿Qué hace lo siguiente? 
  m[1:2,1] 
## [1] 1 4 
m[1:2,2:3] 
## [,1] [,2] 
## [1,] 2 3 
## [2,] 5 6 
m[-1,] 
## [1] 4 5 6 
m[-1,-c(1,3)] 
## [1] 5 


Nombres a renglones y columnas 
Al igual que con vectores le podemos poner nombres tanto a renglones como a columnas para ello utilizamos rownames() y colnames() 
m # No tengo nombres :( 
## [,1] [,2] [,3] 
## [1,] 1 2 3 
## [2,] 4 5 6 
colnames(m)<-LETTERS[1:3] 
rownames(m)<-letters[5:6] 
m # Ahora sí. Feos, pero nombres :) :) 
## A B C 
## e 1 2 3 
## f 4 5 6 
m["e","C"] 
## [1] 3 
m["e","C"]==m[1,3] 
## [1] TRUE


