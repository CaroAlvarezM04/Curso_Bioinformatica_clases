                        #ESTRUCTURAS DE SELECCI�N
#_______________________________________________________________________________
#1. Elabora un programa que compare tu estatura con tu idolo y determine si eres mas alta
BrunoMars<-165 #cree un objeto que contiene la estatura de Bruno Mars en centimetros
YoMera<-167 #este objeto contiene mi estatura en centimetros 
if (YoMera>BrunoMars){
  print("Que tanto son dos centimetros de mas")
  }else{
    print("Dios hizo un milagro y ya puedes casarte con tacones en tu boda imaginaria")
  }
#Para este ejercicio use la condicion de que si yo era mas alta que Bruno Mars me imprimiera el mensaje "Que tanto son dos centimetros de mas"
#si cumplia la condicion imprime "Dios hizo un milagro y ya puedes cazarte con tacones en tu boda imaginaria", esta realidad es tan falsa como un mmilagro.

#2. Toma dos archivos fasta de virus distintos. Leelos con Biostrings y compara sus tama�os en bp
  #y determina si el primero es mas grande que el segundo 
virus1<- readDNAStringSet("NC_010314.fna") #primero cargue mi secuencia en archivo fasta
virus2<- readDNAStringSet("NC_018874.fna") #de los dos genomas

#despues cree objetos que contienen el numero de pares de bases
tama�ovirus1<- width(virus1) #este tiene 211518 pb
tama�ovirus2<- width(virus2) #este tiene 1090 pb

#ahora usando if else cree la condicion para comparar los tama�os
if(virus1>virus2){
  print("El genoma completo del virus Abaca bunchy es mas grande que el de Abalone herpesvirus")
}

#3. A partir del archivo de anotaci�n del genoma de un organismo determina:
  #toma dos proteinas al azar y compara sus tama�os
  #toma todos los genes de la cadena positiva y todos los de la negativa compara sus tama�os promedio
  #determina cual de estos es mas grande
proteinas<- readAAStringSet("NC_018874.faa") #cargue un archivo fasta que tiene la secuencia de aminoacidos de un virus
AAStringSet(proteinas) #use esta funci�n para ver dos proteinas al azar usar� la 

#cree dos objetos que contienen solo las secuencias de dos proteinas
proteina1<-proteinas[[1]][168:221]
proteina2<-proteinas[[1]][1:168]

proteina1==proteina2 #solo arroja FALSE porque no son del mismo tama�o 

#secuencia de aa de la cadena inversa
proteinas_decabeza<-rev(proteinas)

#calcul� el tama�o de las secuencias de la proteina y su resverso
tama�o1<-length(proteinas)
tama�o2<-length(proteinas_decabeza)

#compar� sus tama�os
tama�o1>tama�o2#el resultado es FALSE
tama�o1<tama�o2#El resultado es FALSE
tama�o1==tama�o2#El resultado es TRUE
#eso significa que ambas secuencias miden lo mismo

if(tama�o1>tama�o2 & tama�o1<tama�o2){
  print("Las prote�nas tienen tama�os diferentes")
}else(tama�o1==tama�o2){
  print("Las proteinas son del mismo tama�o")
}
#_______________________________________________________________________________
#1.�C�mo harias una condicion que considere que te gusta el mole y el pozole?
mole<-"Cosa rica"
pozole<- "Cosa rica"
if(mole == "Cosa rica" & pozole == "Cosa rica"){
  print("Jalo a comer mole o pozole, yo no discrimino")
}
#lo que hice fue que mis objetos mole y pozole tuvieran el mismo contenido para que la condici�n de comparaci�n fuera verdadera en ambos casos

#2.�C�mo harias una condicion que considere que te gusta el mole o el pozole?
mole_rosa <- "Que asco"
if(mole_rosa == "Que asco"){
  print("Mejor pido una pizza mexicana")
}else{
  print("Yo pongo las tortillas para el mole")
}
#puse un condicional donde no me gustaba el mole rosa, si me gustara imprimira Yo pongo las tortillas pero eso no va a pasar

#_______________________________________________________________________________
#1. Elabora un programa que con tu fecha de cumplea�os te diga en que estaci�n del a�o naciste

#primavera=79:142
#verano=143:235
#oto�o=236:355
#invierno=356:78

#un objeto con tu dia de cumplea�os y debes poner que sea mayor o igual que tu condicional de la estacion en que naciste
bday<-142
if(bday >= 79 & bday<=142){
  print("El d�a en que tu naciste nacieron todas las flores")
}
brenda_nacio<-200
if(brenda_nacio >= 143 & brenda_nacio<=235){
  print("El verano ya lleg�")
}
pau_nacio <-300
if(pau_nacio >= 236 & pau_nacio<=355){
  print("Feliz d�a de brujas")
}
misa_nacio <- 2
if(misa_nacio >= 356 & misa_nacio <=78){
  print("Bel�n, campanas de Bel�n")
}

if(misa_nacio >=1 & misa_nacio <=78){
  print("Bel�n, campanas de Bel�n")
}else if (misa_nacio >=356 & misa_nacio <=365){
  print("Bel�n, campanas de Bel�n")
}
#############################################################
#YA EL GRANDOTE SERIA
bday<-267

if(bday >= 79 & bday<=142){
  print("El d�a en que tu naciste nacieron todas las flores")
}else if(bday >= 143 & bday<=235){
  print("El verano ya lleg� y tu sin dinero ni vacaciones")
}else if(bday >= 236 & bday<=355){
  print("Feliz d�a de brujas")
}else if(bday >=1 & bday <=78){
  print("Bel�n, campanas de Bel�n")
}else if (bday >=356 & bday <=365){
  print("Bel�n, campanas de Bel�n")
}
#############################################

#EL QUE HIZO ROBERTO Y ESTA BIEN :(

##Primavera   21 de marzo-20 de junio (abril-mayo-junio)
##Verano      21 de junio-20 de septiembre (julio-agosto.septiembre)
##Oto�o       21 de septiembre-20 de diciembre (octubre-noviembre-diciembre)
##Invierno    21 de diciembre-20 de marzo (enero-febrero-marzo)

dia<-4 #el dia es irrelevante cuando haces la simplificaci�n de los meses
mes<-5

#si naciste en abril, mayo o junio entonces imprime "Naciste en verano"
if(mes == 4 | mes== 5 | mes== 6){
  print("Naciste en primavera")
}else if(mes == 7 | mes== 8 | mes== 9){
  print("Naciste en verano")
}else if(mes == 10 | mes== 11 | mes== 12){
  print("Naciste en oto�o")
}else if (mes == 1 | mes== 2 | mes== 3){
  print("Naciste en invierno")
}
#esta simplificaci�n no contempla dias especificos, por lo que una persona que nacio el mismo mes pero en dias diferentes pueden tener resultados erroneos


#2. Elabora un programa para que a partir de las calificaciones de tus examenes parciales
  #y 8 quincenales arroje si exentaras o no este curso asumiendo que e tareas y actividades tienes 10
#tareas=30
#expo=5
#proyecto=10
#participacion=5
#extra=5
#tareas=30
#examenes=40

#es decir consider� tener 10 en todo y puse un aprox de lo que creo tener en mis examenes 
calificacion<- mean(c(10,10,10,10,10,10,6.5))
calificacion
#si exento con 7.5...

if(calificacion >= "7"){print("Dios es grande")
  }else if(calificaciones < "7"){print("Dios no te ama")
}

#_______________________________________________________________________________

#####

##Carolina �lvarez

##�ltimo cambio: 24 de septiembre de 2021

#####