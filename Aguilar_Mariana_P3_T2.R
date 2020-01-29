#3. Elabora un programa en R que a partir del archivo de amistades del grupo.
#a) Cargue el archivo
#b) Genere el vector de nombres de todos tus amigos (los tuyos)
#c) Genere el vector de nombres de todos los que se consideren tus amigos.
#d) Imprima el texto: "Hola amigo1", en donde amigo1 es el nombre de cada uno de tus amigos.

red_amikas<-read.csv("Red_de_Amigas_GF_2020 - Sheet1.csv") #Lee el documento de red de amigas separado por comas
View(red_amikas) #vizualizar el data frame
row.names(red_amikas)<-red_amikas[,1] #establecer que los nombres sean ahora los renglones
red_amikas<-red_amikas[,-1]#Quitar la primer columna
class(red_amikas) #data frame
red_amikas<-as.matrix(red_amikas) #convertirlo a matriz para poder trabajr con ella.
class(red_amikas) #matrix
red<-graph_from_adjacency_matrix(red_amikas,mode = "directed")#genra la matriz de adyacencia

red_amikas[15,]#aisla de la matriz de adyacencia al renglon 15 (que soy yo) para saber quienes me consideran su amiga(1) y quienes no(0)
red_amikas[15,]->soy_su_amiga

red_amikas[,15]->son_mis_amigos #aisla de la matriz de adyacencia ala columna 15 (que soy yo) para saber a quienes considero mis amigos(1) y quienes no(0)


for(k in 1:length(son_mis_amigos)) { if(son_mis_amigos[k]==1) {print(paste("Hola amigo",son_mis_amigos[k]))}} #un ciclo for para que si el elemnto que analiza tiene un "1" significa que es mi amigo 
#y por lo tanto escriba "hola amigo" y su nombre (no pude hacer lo del nombre Roberto no se como extraer los row.names :(

View(mis_compas)
