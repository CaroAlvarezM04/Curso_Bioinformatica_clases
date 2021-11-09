                           #VECTORES

#Numerico
num <- c (1,2,3,4,5)
num
#Caracter
nombres <- c ("ernesto", "andrea", "maria","naomi","carolina")
nombres
#primeros 100 numeros enteros
sample(1:100)->x
x
#funcion equivalente
x<-seq(1:100) #se puede poner from, to y by desde 12 hasta el 30 de 3 en 3
  #se pueden omitir las funciones si se pone en orden, si no pon los nombres=
x
#longitud de un vector
length(x)
#usar [] para seleccionar los caracteres quieres selccionar
nombres[1:2]
num[1:3]
#solo para elementos consecutivos

#concatenar un vetor cuando no son consecutivos
#x[c(1,3,5,8)]

#excluir elementos de un vector 
#x[-2] selecciona todos menos el segundo elemento
#x[-c()] excluir varios
#x[-length(x)] quitar el ultimo vector

#Agregar o quitar elementos
x<- c(x[1:3],168,x[4]) 

#repetir vector n veces
y<-rep(x,5) #each frecuencia de repeticiÃ³n

#FUNCIONES any all
#any( x > 7.5 ) prueba si los elementos del vector  son mayores que 7.5
#>= > < 
#all igual pero no es si alguno es si todos cumplen la condicion


#_______________________________________________

#EJERCICIO
num <- c (1,59,12,543,2,334,42,11,56,4,5)
num
length(num)
nombres <- c ("ernesto", "andrea", "maria","naomi","carolina","erick","deny","karen","franco","mafer","raul","perla")
nombres
length(nombres)
secuencial <- seq (1,1000)
secuencial
gsec <- seq(from=9, to=49, by=3)
gsec
gsec2 <- seq(9,49,3)
gsec2
nombres[1:5]
nombres[6:12]
nombres[c(1,5,9)]
nombres[-11]
nombres[-c(1,5,9)]
nombres[-length(nombres)]
num[-length(num)]
num2 <- c(num[2:5],25)
num2
x <- c()
num -> x
x
repeticiones <- rep(c(1,2),4)
repeticiones
any(num > 7.5)
all(num < 0)
any(nombres == "ernesto")

#__________________________________________________

                    #OPERACIONES CON VECTORES

#suma resta producto solo termino a termino, producto de un escalar por un vector
# x + y o x - y
# el * multiplica el primer elemento de x con el primero el sgundo con el segundo y asi
# si es x y es igual es termino a termino
# 3*x multiplica cada termino por 3
#raiz cuadrada sqrt(2)*y
#todo se puede combinar y todo esto genera un vector

#hay operaciones para que genere un escalar 
# como min ma range sum mean median sd quantile unique sort
#unique te regresa los elementos que no se repiten
#sort ordena 
#rnomr numeros distribuidos por la funcion normal de manera aleatoria por N numeros por ejemplo 1000
#a ese vector se le puede calcula todo lo anterior 
#unique y sort conviene tener elementos discretos mas que continuos
#sample da los numeros aleatorios o caracteres aleatorios

#GRAFICOS CON VECTORES
#hist plot etc
#funciÃ³n col= para modificar colores
#colors para ver todos los colores disponibles en R
#rainbow para ver el codigo de la paleta del arcoiris

#NOMBRE DE LOS VECTORES
#edades como vector numerico
#nombres como vector de caracteres
#funcion names para vincular ambos vectores, se le asignan nombres a las edades
#names(edades)<-nombres
#se queda con el nombre edades

#___________________________________________
eje <- c("Jerry","Rick", "Summer", "Morty")
edades <- c(35,70,17,14)
names(edades) <- eje

#EJERCICIO 2
#Promedio de edades sin contar el de Beth
mean(edades)
mean(edades[-2])
#Quiten a Morty del vector, ordenenlo y guardenlo como un nuevo objeto
cosa <- edades[-4] 
sort(edades)
#Â¿Hay una edad mayor de 75, menor de 12, entre 12 y 20?
any(edades >=75)
any(edades <=12)
any(edades == 12,20)

#______________________________________

                      #TAMAÑOS DE GENOMAS

genomas <- c(3234.83, 2716.97, 143.73, 0.014281, 12.1)
#por ejemplo para ver el tamaño en mega bases o sea 1 millon
genomas*1e6 #no cambia el vector solo da resultados

#igual asignar los tamaños al organismo correspondiente
organismos <- c("Humano","Raton","Mosca","Nematodo","Levadura")
#ahora unir los dos vectores por asignación
names(genomas) <- organismos
genomas

#se pueden usar corchetes para seleccionar elementos del vector
genomas[1]
#elementos consecutivos
genomas[1:3]
#no consecuetivos
genomas[c(1,3,5)]
#para selesccionar excepto algunos (no los modifica)
genomas[-c(3,5)]
#Todas estas acciones se pueden hacer usando el nombre del organismo
#tambien se puede calcular todo lo que ya vimos

#___________________________________

#EJERCICIO 3

#Generar un vector de las edades de 10 de tus compañeros (mejor familia)
familia <- c(9,20,25,47,49,59,60,21,86,88)
nfamilia <- c("Yeray","Caro","Brenda","Pancho","Fina","Nena","Ale","Chava","Abuela","Abuelo")

#Asignarles nombre
names(familia)<- nfamilia
familia

#Encuentra el min, max, media, mediana, de, longitud y selecciona a los impares
summary(familia) #todas las medidas de dispersión 
length(familia) #longitud
familia[c(1,3,5,7,9)] #impares

#Elimina el max y minimo y con el vector resultante realiza un histograma
nuevovector <- familia [-1]
vector <- nuevovector [-9]
vector
hist(vector)

#Crea un vector de caracteres con 10 nombres de especies y asocialo con numero de acceso del NCBI
especies <- c()
encibi <- c()
names(especies) <- encibi

#____________________________________

                #COMO LIDIAR CON LOS NAs

#Es muy frecuente en las bases de datos, pero R los trata de manera especial
#Existe una función para decir si un elemento es NA (is.na)
#Te arroja en que posición hay o no un NA
#Pero R no puede hacer ciertas funciones numericas con esto
#Por eso podemos decirles que las omita como en el siguiente ejemplo:
equis <- c(88,NA,12,168,13)
mean(equis, na.rm = TRUE)
#Es decir, R calculó la mean omitiendo los NAs

            #FILTRAR ELEMENTOS DE UN VECTOR

#generar vectores que sean subconjuntos de vectores mas grandes que cumlan con ciertas condiciones
#Ejemplo paso a paso:
unvector <- c(1,2,3,4,5,6) #creamos un vector random
otrovector <- unvector[unvector*unvector > 10]
otrovector
#tienes que leer de adentro para afuera
unvector*unvector > 10
#el resultado es que te dice que valores de los que resultan de * por si mismo es menor o mayor que 10
#el corchete indica que esa operación que esta adentro debe ser redirigido a otro vector como un indice numerico 
#la representación interna de los valores son FALSE o TRUE son 0 y 1 respectivamente

                  #FILTRAR CON SUBSET

#usar la función subset pero omite los NA 
unomas <- subset(unvector, unvector*unvector > 10)
unomas
#da el mismo criterio de exclusión, poniendo de donde se obtiene y luego el criterio
#Si hay NAs y usamos el filtro anterior seria asi: 
equis <- c(88,NA,12,168,13)
otromas <- equis[equis*equis > 10]
otromas # al correrlo aparecen los NAs
#Pero con subset no:
otromas <- subset(equis,equis*equis > 10)
otromas 

                #SELECCIONAR CON WHICH

#Esta función nos regresa los indices o quienes cumplen con la codición
unvector <- c(1,2,3,4,5,6)
which(unvector*unvector < 4) #te dice cuantos pero no cuales
unvector[which(unvector*unvector < 4)] #te dice cuales

            #VER SI DOS VECTORES SON IGUALES

#dos vectores son iguales si todos sus elementos son identicos 
#por eso deben ser del mismo tanaño
# para eso se usan dos signos iguales == 
unvector <- c(1,2,3,4,5,6) 
y <- 1:6
unvector==y
#te dice TRUE o FALSE segun sea el caso
#no usar = porque da unas cosas bien random y esta prohibido y por eso sacaste 8 y no 9 en el quincenal
#para vectores grandes usar la función all o seq 

#___________________________________________________

                            #FACTOR

#Los factores son un tipo de vector que puede tomar un numero limitado de valores
#normalmente son variables categoricas (como macho o hembra)
#A los elementos que pueden tomar los elementos del factor se llaman levels
#Se usa la función as.factor para convertir un vector a factor
#Son una manera de almacear caracteres porque cada valor unico se guarda una sola vez y 
#       a los datos se les asigna un valor entero
#Ejemplo con los meses:
meses = c("enero","febrero","marzo","abril","mayo",
           "junio","julio","agosto","septiembre","octubre",
           "noviembre","diciembre","enero","febrero","marzo","abril","mayo",
           "junio","julio","agosto","septiembre","octubre",
           "noviembre","diciembre","enero","febrero","marzo","abril","mayo",
           "junio","julio","agosto","septiembre","octubre",
           "noviembre","diciembre")
meses 
meses <- as.factor(meses)
meses #te imprime todo pero te dice cuantos niveles tienes
#por ejemplo puedes manipular el contenido del factor
table(meses) #te dice los levels y cuantas veces se repite
levels(meses) #solo te imprime los levels
#puedes usar corchetes para seleccionar uno o mas levels
levels(meses)[1]

#______________________________________

#EJERCICIO 4

#Genera un vector con el nombre de 10 virus
virus <- c("Abelson murine","Abisko virus","Abutilon Brazil","Acheta domesticus","Acidianus bottle-shaped",
           "Basella rugose mosaic","Bat circovirus","Beihai picorna-like","Big Sioux River","Black grass varicosavirus")
#Asocia esos nombres con su numero de acceso del NCBI
encibivirus <- c("NC_001499.1","NC_035470.1","NC_014138.1","NC_021074.1","NC_028938.1",
                 "NC_009741.1","NC_021206.1","NC_032637.1","NC_035184.1","NC_026798.1")
names(virus) <- encibivirus

#Genera otro vector que contenga los tamaños en pb y los nombres
pbvirus <- c(5894,10187,2653,2517,22613,9804,1798,10546,9691,4006)
names(virus) <- pbvirus
virus #este tiene los nombres, codigos y pb
nombres_virus <- c("Abelson murine","Abisko virus","Abutilon Brazil","Acheta domesticus","Acidianus bottle-shaped",
                   "Basella rugose mosaic","Bat circovirus","Beihai picorna-like","Big Sioux River","Black grass varicosavirus")
names(nombres_virus) <- pbvirus
nombres_virus #solo incluye los nombres y el tamaño en pb

#Determina cuales son mayores de 300 bp
any(nombres_virus > 300) #primero vi con any si habia alguno pa no gastar tiempo
nombres_virus[which(nombres_virus > 300)] #como dijo que simon pues saqué cuales

#Asocia un subconjunto de vectores que sean mayores (menores a 300 pb) y menores (mayores a 300 pb)
mayores <- nombres_virus[which(nombres_virus < 300)]
menores <- nombres_virus[which(nombres_virus > 300)]
      #No pude hacer un subconjunto porque ninguno de mis organismos tiene menos de 300pb 

#Haz un histograma con los tamaños de todos
hist(pbvirus)

#Dibuja un boxplot con los tamaños de todos. Pon en el eje los nombres de todos
boxplot(nombres_virus)
install.packages("ggplot2")
library("ggplot2")


#______________________________________________

#EJERCICIO QUE NO ENTENDÍ

#Lee como crear un factor ordenado
#Crea un vector con los meses en las que todos los alumnos cumplen años
#Aprovecha los levels para generar un objeto que guarde el numero de estudiantes que cumplena ño cada mes
