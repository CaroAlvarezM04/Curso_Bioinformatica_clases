              # ESTRUCTURAS DE SELECCION #
#__________________________________________________________________
library(BiocGenerics)
library(parallel)
library(S4Vectors)
library(stats4)
library(IRanges)
library(XVector)
library(msa)
#Elabora un programa que a partir de la fecha de nacimiento de cualquier persona, 
#dando como datos de entrada dia, mes y año en formato ??númerico calcule lo siguiente:

#SU EDAD EN AÑOS
su_edad <- function(año,a){
  año <- readline(prompt = "Ingresa el número a cuatro digitos de tu año de nacimiento:  ")
  año <- as.numeric(año)
  a <- readline(prompt = "Ingresa el número a cuatro digitos del año en curso:  ")
  a <- as.numeric(a)
  resta <- a-año
  return(print(paste("Tienes",resta,"años")))
}
su_edad()
#esta función calcula tu edad a traves de la resta del año en curso menos el año en que naciste


#SU SIGNO ZODIACAL
tu_signo<- function(){
  mes <- readline(prompt = "Ingresa el número de tu mes de nacimiento:  ")
  mes <- as.numeric(mes)
  if(mes == 4){
    print("Si naciste entre el 21 de marzo - 20 de abril eres Aries, pero si naciste después del 21 de abril eres Tauro")
  }else if(mes == 5){
    print("Si naciste entre el 21 de abril - 20 de mayo eres Tauro, pero si naciste después del 21 de mayo eres Geminis")
  }else if(mes == 6){
    print("Si naciste entre el 21 de mayo - 21 de junio eres Geminis, pero si naciste después del 22 de junio eres Cáncer")
  }else if(mes == 7){
    print("Si naciste entre el 22 de junio - 22 de julio eres Cáncer, pero si naciste después del 23 de julio eres Leo")
  }else if(mes == 8){
    print("Si naciste entre el 23 de julio - 22 de agosto eres Leo, pero si naciste después del 23 de agosto eres Virgo")
  }else if(mes == 9){
    print("Si naciste entre el 23 de agosto - 22 de septiembre eres Virgo, pero si naciste después del 23 de septiembre	eres Libra")
  }else if(mes == 10){
    print("Si naciste entre el 23 de septiembre - 22 de octubre	eres Libra, pero si naciste después del 23 de octubre eres Escorpio")
  }else if(mes == 11){
    print("Si naciste entre el 23 de octubre - 22 de noviembre eres Escorpio, si naciste después del 23 de noviembre eres Sagitario")
  }else if(mes == 12){
    print("Si naciste entre el 23 de noviembre - 21 de diciembre eres Sagitario, pero si naciste después del 22 de diciembre eres Capricornio")
  }else if(mes == 1){
    print("Si naciste entre el 22 de diciembre - 20 de enero eres Capricornio, pero si naciste después del 21 de enero eres Acuario")
  }else if(mes == 2){
    print("Si naciste entre el 21 de enero - 18 de febrero eres Acuario, pero si naciste después del 19 de febrero eres Piscis")
  }else if(mes == 3){
    print("Si naciste entre 19 de febrero - 20 de marzo eres Piscis, pero si naciste después del 21 de marzo eres Aries")
  }
}
tu_signo()
#lo que hice fue construir una función que se basara en el mes en que naciste para decir tu signo
#dado que los signos zodiacales empiezan y terminan a finales de mes, indiqué que imprimiera las fechas a las que corresponde el periodo de cada signo
#si no se cumple el periodo, la función tambien imprime a que otro signo puedes pertenecer si naciste en ese mes


#LA ESTACIÓN DEL AÑO EN QUE NACIÓ 
tu_estacion<- function(){
  mes <- readline(prompt = "Ingresa el número de tu mes de nacimiento:  ")
  mes <- as.numeric(mes)
if(mes == 4 | mes== 5 | mes== 6){
  print("El día en que tu naciste nacieron todas las flores")
}else if(mes == 7 | mes== 8 | mes== 9){
  print("Feliz día de brujas")
}else if(mes == 10 | mes== 11 | mes== 12){
  print("Feliz día de brujas")
}else if (mes == 1 | mes== 2 | mes== 3){
  print("Belén, campanas de Belén")
}
}
tu_estacion()
#al correr esta función te pedirá el número del mes en que naciste, y te dirá la estación
#bueno te dice una frase relacionada a la estación del año en que naciste 

#__________________________________________________________________
#####

##Carolina Álvarez

##último cambio: 07 de octubre de 2021

#####