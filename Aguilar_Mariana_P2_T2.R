#2. Elabora un programa en R que utilice un ciclo for para a partir del vector v siguiente
# v <-sample(100) #genera el vector de 100 elemntos
#imprima los cuadrados de los numeros impares.
v<-sample(100)#genera el vector de 100 elemntos
v #comprobar que el vector se gener�
for(i in 1:length(v)) {
  if(v[i]%%2 ==1) {print(v[i]^2)}
} #ciclo for para que analice cada uno d elos elementos del vector,s� son iguales a 1 es
#decir qque son impares y entonces se cumple la condici�n y calcula el cuadrado de esos numeros.
