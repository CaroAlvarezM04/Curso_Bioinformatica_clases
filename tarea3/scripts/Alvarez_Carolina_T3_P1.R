                # ESTRUCTURAS DE SELECCION #
#__________________________________________________________________
#Elabora un programa que, a partir de un vector de calificaciones de ex??amenes parciales (3),
#y de un vector de calificaciones de tarea y e??xamenes quincenales (10),
#determine si esa alumnx exentaria o no el curso de bioinformatica con los
#criterios que establecimos al inicio del curso que puedes consultar en el programa
#Asume que en el resto de los criterios tienen en 100%

parciales<-mean(c(78,60,82)) #vector de calificaciones de los parciales
quincenales<- mean(c(60,70,60,70,60,70)) #vector de calificación de los quincenales
tareas<-mean(c(100,100,100,100,100,100)) #tareas y otror

#luego en un nuevo objeto saco el promedio de mi calificación final
calificacion<- (parciales + quincenales + tareas)/3

#si exento con 7.5...
if(calificacion >= "75"){print("Dios es grande")
}else if(calificaciones < "75"){print("Dios no te ama")
}
#dice que si mi calificación es igual o mayor que 7.5 (pero lo puse en porcentaje por eso dice 75)exento e imprime "Dios es grande"
#si no alcanzo el promedio es decir menor a 7.5 imprime "Dios no te ama"
#como mi  promedio hipotetico es 79.444 si puedo pasar la materia yei

#__________________________________________________________________
#####

##Carolina Álvarez

##último cambio: 30 de septiembre de 2021

#####