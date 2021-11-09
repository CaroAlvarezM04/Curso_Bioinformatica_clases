                              #PRACTICA BIOSTRINGS 

#_______________________________________________________________________________
#Biostrings es una libreria de R de Bioconductor, para manipular cadenas de caracteres biologicos 

#Para instralar esta libreria se busca Bionconductor en internet, ahi da instrucciones para descargar librerias
#Bioconductor install
BiocManager::install()
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.13")
# esta biblioteca permite manipular cadenas de carácteres biológicos. 

BiocManager::install("Biostrings")
library("Biostrings")

#Los paquetes que se necesitan cargar son:
library(BiocGenerics)
library(parallel)
library(S4Vectors)
library(stats4)
library(IRanges)
library(XVector)

#_______________________________________________________________________________
## PARA UNA SOLA SECUENCIA...
denea1 <- DNAString("ACGT--TGCC-N") # Prueba con una secuencia de ADN
denea1# imprime la secuencia y muestra por colores cada base. 

## PARA MAS DE UNA SECUENCIA...
denea2 <- DNAStringSet(c("ACTGGAACTCC","GTCAGGCTAGGTT","ATTTGCCGCAA"))
denea2 

#NOTA: Para leer más de una secuencia se utiliza DNAstringset
#TE MUESTRA EL ALFABETO DE NUCLEOTIDOS
#el alfabeto que usa DNAString es el de nucleotidos extendidos
IUPAC_CODE_MAP

## Acceder a elementos de la secuencia. 
denea1[1:6]
denea2[2:3]
denea2[[2]][1:3]

#asignar a partir de un vector de nombres, estos nombres a un vector con secuencias 
names(denea2)<-paste0("sequence_",1:3)
denea2

#LAS CLASES DE CADENAS DISPONIBLES EN BIOSTRINGS SON:
DNAString[Set]: para secuencias de DNA
RNAString[Set]: para secuencias de RNA
AAString[Set]: secuencias de aminoacidos (proteinas)
BStrings[Set]: grandes secuencias con cualquier letra

#_______________________________________________________________________________
#FUNCIONES BASICAS
#En general las secuencias basicas son:
length(): longitud o numero de secuencias
names(): reasignar nombres de un vector a otro
c and rev: reverso de la secuencia
width(), nchar(): numero de caracteres en una secuencia
==, duplicated, unique
as.charcater() o toString(): convierte a un vector de caracteres
sort(), order(): ordena las secuencias de la primera a la ultima
chartr(): convierte letras en otras 
subseq(), extractAt(), replaceAt()
replaceLetterAt()
complement(): secuencia complementaria
translate(): traduce una secuencia de DNA a RNA a aminoacidos
reverseComplement(): secuencia reverso complementaria
dinucleotideFrequency(): Calcular la secuencia de dinucleótidos de un conjunto de secuencias
trinucleotideFrequency(): contar tripletes de secuencias de nucleotidos

                        #EJEMPLOS
## Comparar secuencias
#Te da resultados en true o false
denea1==denea2
denea1==denea1

#longitud o numero de secuencias
length(denea1)
length(denea2)

## Frecuencia de alfabeto (saber cuantas C,T,A,G tenemos en nuestra secuencia)
alphabetFrequency(denea1)
alphabetFrequency(denea2)

## Porcentaje en el que se encuentran las bases nitrógenadas
alphabetFrequency(denea1,as.prob = TRUE)
alphabetFrequency(denea2,as.prob = TRUE)

## Concatenar secuencias
denea3 <- DNAString("ATTGCCCT")
denea3
c(denea1,denea3) -> dnaF
dnaF
## para que sea más eficiente usar este tipo de concatenado, se usa con archivos fasta. 

## leer secuencias
XRMV <- readDNAStringSet("NC_010314.fna") # virus que estaba en mi unidad
XRMV
alphabetFrequency(XRMV) # Calcule el total de cada letra en mi secuencia
dinucleotideFrequency(XRMV) # Calcula los dinucleótidos
XRMV[[1]][1:100] # Accedí a los primeros 100 elementos de mi secuencia del virus de la leucemia.

## NOTA: leer secuencias concatenadas
secuenciasc <- readDNAStringSet("blast_fna")
secuenciasc # Aquí se muestra la lectura de mis dos secuencias concatenadas
pollo <- readDNAStringSet("blast_fna")
pollo
names(secuenciasc) # Me muestra cuales son las secuencias que tengo concatenadas.

## para acceder a diferentes elementos de mi secuencia.
secuenciasc[[1]][50:53]
secuenciasc[[2]][80:100]
#NOTA: estoy accediendo a diferentes elementos de mi archivo con las secuencias concatenadas. 
nchar(secuenciasc) #Número de caracteres de cada secuencia.

matriz <- alphabetFrequency(secuenciasc)
View(matriz)
matriz[2,"A"] #Acceder a los elementos de la matriz.
matriz[,"T"] # Con esta estoy visualizando las T de las dos secuencias concatenadas.
dinucleotideFrequency(secuenciasc)

#_______________________________________________________________________________
                ##SECUENCIAS EN LA LIBRERIA BSgenome

#INSTALAR BSgenome
BiocManager::install("BSgenome") # Instalar la librería BSgenome para poder trabajar con genomas. 
library(BSgenome) # Cargar la librería BSgenome

library(GenomeInfoDb)
library(GenomicRanges)
library(rtracklayer)
library(BSgenome)

## Secuencias en la librería BSgenome
available.genomes(): Muestra las librerías disponibles de diferentes genomas de distintos organismos

##Cargar genomas disponibles
BiocManager::install("BSgenome.Scerevisiae.UCSC.sacCer2")
library(BSgenome.Scerevisiae.UCSC.sacCer2)

Scerevisiae # Muestra los datos del microorganismo "Saccharomyces cerevisiae".

# muestra los cromosomas del organismo y su número de elementos.
seqlengths(Scerevisiae)

# muestra los nombres de lo cromosomas del microorganismo.
seqnames(Scerevisiae)

# Muestra los elementos del cromosoma 1 del organismo. 
Scerevisiae$chrI 

# Porcentaje de CG en el cromosoma 1 del microorganismo
letterFrequency(Scerevisiae$chrI, "CG", as.prob = TRUE) 
letterFrequency(Scerevisiae$chrI, "CG") # Total de CG en el cromosoma 1. 

param <- new("BSParams", X = Scerevisiae, FUN = letterFrequency) #¿?
head(bsapply(param, letters = "GC"))
param <- new("BSParams", X = Scerevisiae, FUN = letterFrequency, simplify = TRUE) #¿?
bsapply(param, letters = "GC")
sum(seqlengths(Scerevisiae))
sum(bsapply(param, letters = "GC")) / sum(seqlengths(Scerevisiae)) #¿?

          # ENCONTRAR MOTIVOS(Patrones)
dnaseq <- DNAString("ACGTACGT") # Con esta secuencia es con la que voy a comparar. 
dnaseq

# encontrar coincidencias de una secuencia contra una sola
matchPattern(dnaseq, Scerevisiae$chrI) 
# Encontró una concidencia de la posición 57932 a la 57939 de 8.

#cuantas veces encuentra el agt o un patron en tu secuencia
countPattern(dnaseq, Scerevisiae$chrI)

# encontrar coincidencias de una secuencia contra más de una
vmatchPattern(dnaseq, Scerevisiae) 
# en este caso comparo con todas las de los cromosomas del microorganismo. 

head(vcountPattern(dnaseq, Scerevisiae)) #¿?

# compara la secuencia normal con la secuencia reverso para ver si son iguales
dnaseq == reverseComplement(dnaseq) 

#_______________________________________________________________________________