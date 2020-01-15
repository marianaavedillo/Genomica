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
h<-as.vector(secuencia)
h
h[-A]
Y<-as.numeric(secuencia)
Y[-"A"]
secuencia[[1]]
x<-which(Y==A)
x

con_libreria<-alphabetFrequency(secuencia)
Libreria

#B) complementing a strand of DNA.
secuencia_2<-DNAString("AAAACCCGGT") #SAMPLE OUTPUT: ACCGGGTTTT
v_seq<-c("A","A","A","A","C","C","C","G","G","T") 
v_seq
length(v_seq)
reversa_complementaria<-c()


for(i in 1:length(v_seq)) {
  if (v_seq[i]=="A") {
    print("T")
  } else if (v_seq[i]=="T") {
    print("A")
  } else if (v_seq[i]=="C") {
    print("G")
  } else if (v_seq[i]=="G") {
    print("C")
  }
}
  


