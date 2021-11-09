                         # ALINEAMIENTO #
#__________________________________________________________________
library(BiocGenerics)
library(parallel)
library(S4Vectors)
library(stats4)
library(IRanges)
library(XVector)
library(msa)

#A partir de un archivo concatenado del genoma completo 10 virus elabora un programa en R que realice los siguiente:
virust <- readDNAStringSet("todos_los_genomas.fna") #la parte de concatenar las secuencias las hice en bash, dejo el script también

#CALCULA EL TAMAÑO DE CADA SECUENCIA, ES DECIR, EL NUMERO DE NUCLEOTIDOS
width(virust) #esta función me arroja el número de nucleotidos de cada secuencia en el archivo concatenado
virus<- width(virust) #hice un vector que contiene estos numeros, para trabajar con el despues

#CAMBIAR EL NOMBRE DE LAS SECUENCIAS POR UNO MAS CORTO, POR EJEMPLO EL NOMBRE COMUN
nombres<- c("Bat","Acheta","Abutilon","Black grass","Abelson","Big Sioux","Basella","Abisko","Beihai","Acidianus")
#cree un vector con los nombres comunes de los virus en el orden que estan en el archivo

names(virus)<- nombres #renombre el vector de virus que contenia los tamaños con los nombres comunes
#ahora se ve bonito y se cual es cual 

#GENERAR UN NUEVO OBJETO PARA CADA UNA DE LAS SIGUIENTES OPERACIONES
#A) El complemento
cosaA <- complement(virust)
#B) El reverso complemento
cosaB <- reverseComplement(cosaA) #use la cosaA porque es la secuencia complemento
#C) El reverso
cosaC <- reverseComplement(virust) #aqui use la secuencia original para ver su reverso
#D) La secuencia traducida
cosaD <- translate(virust) #esta cosa no corre, por qué? no lo se

#REALIZA UN ALINEAMIENTO POR PARES DE LAS SECUENCIAS DE AMINOACIDOS ENTRE LAS DOS  SECUENCIAS MAS PEQUEÑAS Y LAS DOS MAS GRANDES
virus #este objeto me dice que virus son los mas pequeños y mas grandes
#los mas pequeños son Bat que es el virus 7 y el Acheta que es el 4
msa(virust[c(2,7)], method = "Muscle")
#los mas grandes son Acidianus que es el 5 y Beihai que es el 8
msa(virust[c(5,8)], method = "Muscle")

#ENCUENTRA LOS CODONES DE INICIO Y DE PARO
trinucleotideFrequency(virust,"TAA")
trinucleotideFrequency(virust,"TAG")
trinucleotideFrequency(virust,"TGA")
#SELECCIONA TODAS AQUELLAS SECUENCIAS DE NUCLEOTIDOS QUE SUPERAN LA MEDIDA DE SUS LONGITUDES Y QUE MANDE A PANTALLA EL NOMBRE DE C/U DE ELLAS

#__________________________________________________________________
#####

##Carolina Álvarez

##último cambio: 1 octubre de 2021

#####