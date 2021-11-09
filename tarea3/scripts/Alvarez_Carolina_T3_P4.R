                          # MODELO DE MARKOV #
#_______________________________________________________________________________
#un modelo de Markov para los modelos siguientes. 
#A partir del genoma completo de la cepa de E Coli K-12, elabora
#Descargué el genoma del NCBI 
ecoliK12 <- readDNAStringSet("k12.fna")

#UN MODELO DE PRIMER ORDEN, CALCULA LA MATRIZ DE TRANSICION DE UN NUCLEOTIDO AL OTRO
#Por ejemplo: P(A|G). La matriz en este caso es de 4 x 4 
#Calcule el porcentaje de cada nucleotido en el genoma
A <- letterFrequency(ecoliK12, "A", as.prob = TRUE) #0.246193
G <-letterFrequency(ecoliK12, "G", as.prob = TRUE) #0.2536677
Te <- letterFrequency(ecoliK12, "T", as.prob = TRUE) #0.2459
C <- letterFrequency(ecoliK12, "C", as.prob = TRUE) #0.2542394
#Sumé las probabilidades y si da 1 entonces todo cool 
#crear un vector con las probabilidades de la frecuencia de dinucleotido
conjunto <-dinucleotideFrequency(ecoliK12,as.prob=TRUE)
#calcular la frecuencia para todos los dinucleotidos de A
AA<-conjunto[1:4]
AA
#un objeto para calcular la frecuencia de transicion dividiendo la frecuencia del dinucleotido entre la frecuencia del nucleotido
a <- AA/A
GG <- conjunto[5:8]
g <-GG/G
CC<- conjunto[9:12]
c <- CC/C
TT<- conjunto[13:16]
t <- TT/Te
#repeti lo anterior con cada frecuencia de transición
#construir una matriz que contiene todas las frecuencias de transición
prob <- matrix(c(a,c,g,t), nrow = 4, ncol = 4)
prob

#Despues, a partir de cada uno de ellos, calcula de forma explicita las siguientes probabilidades 
#P(AAAA), P(ACGT), P(AAT T) y comparalos con su calculo directo
AAAA <- prob[1,1]*prob[1,1]*prob[1,1]
AAAA
ACGT <- prob[2,1]*prob[3,2]*prob[4,3]
ACGT
AATT <- prob[1,1]*prob[4,1]*prob[4,4]
AATT

#UN MODELO DE SEGUNDO ORDEN, por ejemplo P(AG|T). En este caso la matriz es de 16 x 4
segundo_orden <- prob*prob
segundo_orden
#UN MODELO DE TERCER ORDEN, por ejemplo P(AGT|C). En este caso la matriz es de 64 x 4
tercer_orden <- prob*prob*prob
tercer_orden
#__________________________________________________________________
#####

##Carolina Álvarez

##último cambio: 8 de septiembre de 2021

#####