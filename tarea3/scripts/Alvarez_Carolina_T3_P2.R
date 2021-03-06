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
#dando como datos de entrada dia, mes y a�o en formato ??n�merico calcule lo siguiente:

#SU EDAD EN A�OS
su_edad <- function(a�o,a){
  a�o <- readline(prompt = "Ingresa el n�mero a cuatro digitos de tu a�o de nacimiento:  ")
  a�o <- as.numeric(a�o)
  a <- readline(prompt = "Ingresa el n�mero a cuatro digitos del a�o en curso:  ")
  a <- as.numeric(a)
  resta <- a-a�o
  return(print(paste("Tienes",resta,"a�os")))
}
su_edad()
#esta funci�n calcula tu edad a traves de la resta del a�o en curso menos el a�o en que naciste


#SU SIGNO ZODIACAL
tu_signo<- function(){
  mes <- readline(prompt = "Ingresa el n�mero de tu mes de nacimiento:  ")
  mes <- as.numeric(mes)
  if(mes == 4){
    print("Si naciste entre el 21 de marzo - 20 de abril eres Aries, pero si naciste despu�s del 21 de abril eres Tauro")
  }else if(mes == 5){
    print("Si naciste entre el 21 de abril - 20 de mayo eres Tauro, pero si naciste despu�s del 21 de mayo eres Geminis")
  }else if(mes == 6){
    print("Si naciste entre el 21 de mayo - 21 de junio eres Geminis, pero si naciste despu�s del 22 de junio eres C�ncer")
  }else if(mes == 7){
    print("Si naciste entre el 22 de junio - 22 de julio eres C�ncer, pero si naciste despu�s del 23 de julio eres Leo")
  }else if(mes == 8){
    print("Si naciste entre el 23 de julio - 22 de agosto eres Leo, pero si naciste despu�s del 23 de agosto eres Virgo")
  }else if(mes == 9){
    print("Si naciste entre el 23 de agosto - 22 de septiembre eres Virgo, pero si naciste despu�s del 23 de septiembre	eres Libra")
  }else if(mes == 10){
    print("Si naciste entre el 23 de septiembre - 22 de octubre	eres Libra, pero si naciste despu�s del 23 de octubre eres Escorpio")
  }else if(mes == 11){
    print("Si naciste entre el 23 de octubre - 22 de noviembre eres Escorpio, si naciste despu�s del 23 de noviembre eres Sagitario")
  }else if(mes == 12){
    print("Si naciste entre el 23 de noviembre - 21 de diciembre eres Sagitario, pero si naciste despu�s del 22 de diciembre eres Capricornio")
  }else if(mes == 1){
    print("Si naciste entre el 22 de diciembre - 20 de enero eres Capricornio, pero si naciste despu�s del 21 de enero eres Acuario")
  }else if(mes == 2){
    print("Si naciste entre el 21 de enero - 18 de febrero eres Acuario, pero si naciste despu�s del 19 de febrero eres Piscis")
  }else if(mes == 3){
    print("Si naciste entre 19 de febrero - 20 de marzo eres Piscis, pero si naciste despu�s del 21 de marzo eres Aries")
  }
}
tu_signo()
#lo que hice fue construir una funci�n que se basara en el mes en que naciste para decir tu signo
#dado que los signos zodiacales empiezan y terminan a finales de mes, indiqu� que imprimiera las fechas a las que corresponde el periodo de cada signo
#si no se cumple el periodo, la funci�n tambien imprime a que otro signo puedes pertenecer si naciste en ese mes


#LA ESTACI�N DEL A�O EN QUE NACI� 
tu_estacion<- function(){
  mes <- readline(prompt = "Ingresa el n�mero de tu mes de nacimiento:  ")
  mes <- as.numeric(mes)
if(mes == 4 | mes== 5 | mes== 6){
  print("El d�a en que tu naciste nacieron todas las flores")
}else if(mes == 7 | mes== 8 | mes== 9){
  print("Feliz d�a de brujas")
}else if(mes == 10 | mes== 11 | mes== 12){
  print("Feliz d�a de brujas")
}else if (mes == 1 | mes== 2 | mes== 3){
  print("Bel�n, campanas de Bel�n")
}
}
tu_estacion()
#al correr esta funci�n te pedir� el n�mero del mes en que naciste, y te dir� la estaci�n
#bueno te dice una frase relacionada a la estaci�n del a�o en que naciste 

#__________________________________________________________________
#####

##Carolina �lvarez

##�ltimo cambio: 07 de octubre de 2021

#####