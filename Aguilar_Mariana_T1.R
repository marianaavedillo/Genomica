####Practica y tarea 1##

# 1) A partir de las siguientes secuencias concatenadas de RNA que te envío como archivo adjunto en formato fasta
#encuentra (usando librerías especializadas) la secuencia correspondiente de aminoácidos.
library(BiocGenerics)
setwd("C:/Users/CC/Downloads")
list.files()

RNAconcatenados<-readRNAStringSet("first.fasta")
RNAconcatenados
RNAcon_traducidos<-translate(RNAconcatenados)
RNAcon_traducidos ##Happy new year x2

# 2) Escoge dos problemas de la plataforma Rosalind de entre los siguientes: Counting DNA Nucleotides,
#Complementing a Strand of DNA, Computing GC Content, Calculating Protein Mass. Escribe un programa que resuelva los dos problemas que seleccionaste, en ambos,
#casos, debes buscar una solución sin usar librerías especializadas y otra con librerías especializadas.

#A) counting DNA nucleotides.

secuencia<-DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC") #sAMPLE OUTPUT: 20 12 17 21
sec_as_vec<-as.vector(secuencia) #Convierte la secuencia en un vector y así ya podemos trabajar son que la tome como un caracter
sec_as_vec[1:10] #para asegurar que se pueden extraer elementos del vector
length(sec_as_vec) #70 nucleotidos
adeninas<-0 #objeto al que se le sumaran las adeninas que haya en la secuencias
timinas<-0  #objeto al que se le sumaran las timinas que haya en la secuencias
guaninas<-0  #objeto al que se le sumaran las guaninas que haya en la secuencias
citosinas<-0 ##objeto al que se le sumaran las citosinas que haya en la secuencias


for(i in 1:length(sec_as_vec))
{if(sec_as_vec[i]=="A") {adeninas<-adeninas+1} 
  else if (sec_as_vec[i]=="T") {timinas<-timinas+1}
  else if (sec_as_vec[i]=="G") {guaninas<-guaninas+1}
  else {citosinas<-citosinas+1}
  print(paste("Total de A:",adeninas," ","total de C:",citosinas," ","total de G:",guaninas," ","total de T:",timinas))} #Ciclo for para que
#vaya analizando cada elemento del vector (del 1 a 70 en este caso) y si se cumple la condición de que sea igual a alguna de las bases se le sumará
#1 al objeto correspondiente para que el finalizar el ciclo te de el total de cada base nitrogenada.

#Si se quisiera hacer con secuencias más grandes se haría lo mismo, se convierte a vector y listo. 

total_bases<-alphabetFrequency(secuencia) #Utilizando una libreria especializada
total_bases


#B) complementing a strand of DNA.

secuencia_2<-DNAString("AAAACCCGGT") #SAMPLE OUTPUT: ACCGGGTTTT
sec2_as_vec<-as.vector(secuencia_2) ##Convierte la secuencia en un vector y así ya podemos trabajar son que la tome como un caracter
sec2_as_vec[1:7] #para asegurar que se pueden extraer elementos del vector
length(sec2_as_vec) #10 nucleotidos
reversa_complementaria<-c() #creamos un vector vacio donde se iran añadiendo los nucleotidos complementarios a las secuencia problema
reversa_complementaria  #asegurar que el vector está vacio 

for(k in 1:length(sec2_as_vec)) {
  if (sec2_as_vec[k]=="A") {
    
    reversa_complementaria[k]<-"T"
  } else if (sec2_as_vec[k]=="T") {
    reversa_complementaria[k]<-"A"
  } else if (sec2_as_vec[k]=="C") {
    reversa_complementaria[k]<-"G"
  } else if (sec2_as_vec[k]=="G") {
    reversa_complementaria[k]<-"C"
  }
  length(reversa_complementaria)->x
  sec_rev_comp<-reversa_complementaria[x:1]
  show(sec_rev_comp)
  
} #Ciclo for para que analice uno a uno cada nucleotido y conforme a que base sea vaya colocando su complementaria hasta formar la secuencia comlementaria
#y para que sea la reversa complementaria se crea un nuevo objeto el cual comenzara con el ultimo nucleotido del obketo "reversa_complementaria" y terminará con el primer nucleotido de ésta.
sec_rev_comp

reverseComplement(secuencia_2) #con una libreria especializada.
