### Loops

#CICLOS FOR
#Las computadoras pueden hacer muchas cosas de forma repetida
#Existe una estructura en R que se llama ciclo loop for

#La sintaxis general es:
for(i in 1:ultimo){
  haz algo que involucre a la variable i
  hasta que i llegue a ultimo
}

#Por ejemplo sumar los 100 primeros números naturales
suma=0
for (i in 1:100) {
  suma = suma + i
}
suma

#podemos ir viendo como va la suma poniendo un print dentro del ciclo for
suma<-0
  for (i in 1:100) {
  suma <- suma + i
  print(suma)
  }
#no es muy util pero sirve para ver lo que hace el programa y ver si hay algun error

#______________________________________________________
#ELABORA UN PROGRAMA QUE SUME los primeros 20 numeros al cuadrado
suma=0
  for (i in 1:20) {
    suma<-i^2
    print(suma)
  }
#ELABORA UN PROGRAMA QUE SUME todos los numeros pares menores que 100
minimo<-0
maximo<-100
conjunto <- seq(minimo, maximo,2)

suma<-0
  for (i in conjunto){
    suma<-suma + i
    print(suma)
  }
suma

#______________________________________________________
#Si queremos calcular el promedio de un vector podemos iterar sobre ese vector
calificaciones <- c(10,9,9.5,9.75,5,6)
suma=0
  for (mis_cal in calificaciones){
    suma <- suma + mis_cal
  }
promedio <- suma/length(calificaciones)
promedio
mean(calificaciones) #para comparar que tan bien hicimos el programa

#UN PROGRAMA QUE IMPRIMA "Hola Nombre de tu compañer@ de fila 1"

#________________________________________________________

                        # WHILE #

#Cuantos números naturales consecutivos debo sumar para que la suma sea menor que 100
i <- 1
suma <- 0
while(suma < 100){
  suma<-suma + i
  print(suma)
}


#while para crear nuevos usuarios y cerrar el ciclo de creación o respuesta
respuesta <-1 

while(respuesta == 1){
  nombre<- readline(prompt = "Ingresa tu nombre: ")
  edad<- readline(prompt = "Ingresa tu edad: ")
  edad<-as.numeric(edad)
  respuesta<-readline(prompt = "Nuevo usuario (si = 1, no = 0")
  respuesta<-as.numeric(respuesta)
}

#A diferencia de for que se define el intervalo sabemos cuantas veces se va a contar ese ciclo, en while hay una condicion 
#ERRONES COMUNES: No iniciar la variable y las condiciones bulenasas, que el ciclo sea infinito
#el for siempre se puede escribir como un ciclo while

#ROSALIND
#Tiene una sección de problemas inspirados en practicar habilidades de programación
#Se pueden tomar 4 o 5 problemas para resolverlos en el proyecto final
#No se pueden usar librerias especializadas como biostrings, solo para leer tu base de datos
#No es obligatorio 
  #Elegir algun problema que se pueda resolver con cosas que hemos visto en classesToAM(
    #No necesariamente algo de bioinformatica

#EJERCICIOS
#Escribir un programa que calcule  la suma de los primeros 100 numeros elevados al cubo
suma=0
for (i in 1:100) {
  suma<-i^3
  print(suma)
}

i<- 1
suma <- 0
while(i <= 100){
  suma<-suma + i^3
  i <- i + 1
  print(suma)
}

#Escribir un programa que como entrada tenga 3 numeros y determine cual es el mayor
#el programa debe pedir al usuario que cada vez introduzca 3 numeros hasta que cada usuario decida que no quiere seguir

respuesta <- 1
while(respuesta == 1){
  x<- readline(prompt = "Ingresa un número: ")
  primer_numero<- as.numeric(x)
  y<- readline(prompt = "Ingresa un número: ")
  segundo_numero<- as.numeric(y)
  z<-redline(prompt = "Ingresa un número: ")
  tercer_numero <- as.numeric(z)
  
  respuesta<-readline(prompt = "Nuevo usuario (si = 1, no = 0")
  respuesta<-as.numeric(respuesta)
  
}
return(print(paste(primer_numero < segunso_numero < tercer_numero)))

FILOGENIA MOLECULAR Y EVOLUCION

#______________________________________________
#####

##Carolina Álvarez

##último cambio: 26 de octubre de 2021

#####