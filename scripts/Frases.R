              # NO SE QUE TEMA SEA, VALE BERGA LA VIDA #

lista <- read.csv ("C:\\users\\PC\\Desktop\\excusas.csv", header=TRUE, sep=",")
lista

lista[sample(1:20,1),1] #elige al azar algo de introduccion
lista[sample(1:20,1),2] #elige al azar algo de chivo expiatorio
lista[sample(1:20,1),3] #elige al azar algo de impedimento

#Integrar en una función las selecciones para formar frases random
excusa <- function(x){
  a <- lista[sample(1:20,1),1] 
  b <- lista[sample(1:20,1),2] 
  c <- lista[sample(1:20,1),3]
  return(print(paste(a,b,c)))
}
excusa(lista)

#Usando ciclos for que te genere una lista aleatoria sin repeticiones
excusa_s <- function(x){
  a <- lista[sample(1:20,1),1] 
  b <- lista[sample(1:20,1),2] 
  c <- lista[sample(1:20,1),3]
  for (i in 1:20){
    return(print(paste(a[i],b[i],c[i])))
  }
}
excusa_s(lista)

#Otra manera de hacerlo sin loops
excusa2 <- function(x){
  a <- lista[sample(1:20,1),1] 
  b <- lista[sample(1:20,1),2] 
  c <- lista[sample(1:20,1),3]
    return(print(paste(a,b,c)))
}
excusa2(lista)

#_________________________________________________________________
proteinas_ecoli <- read.csv ("C:\\users\\PC\\Desktop\\e_coli.csv", header=TRUE, sep=",")
proteinas_ecoli

pdf("01_plots/Mi_histograma.pdf")
#Aqui va la grafica
hist(proteinas_ecoli$Length)
dev.off()

library(ggplot2)
histo <- ggplot(proteinas_ecoli, aes(x=Length))+
  geom_histogram(color = "black", fill = "white")
histo

#________________________________________________________

#####

##Carolina Álvarez

##Ultimo cambio: 15 de octubre de 2021

#####