#1. A partir de las redes de la figura 1. Calcula con igraph, las siguientes propiedades:
#a) Vecinos.
#b) La distribucion de conectividades
#c) El nodo mas conectado.
#d) El diametro
#e) La matriz de distancias y el heatmap asociado.
library(igraph)

#FIGURA1
fig1<- make_empty_graph(n=10, directed=TRUE)
V(fig1)$color = "coral1"
V(fig1)$shape = "sphere"
plot(fig1)
fig1<- add.edges(fig1, c(1,2, 1,3, 1,4, 1,5, 1,6, 1,7, 1,8, 1,9, 1,10))
plot(fig1)

adj_mat<-as.matrix(get.adjacency(fig1))
adj_mat
a1<-degree(fig1,mode = "out")#Te da los vecino de cada noda, es decir con cuantos esta conectado.
degree.distribution(fig1) #distribución de conectividades
degree(fig1)#te da el nodo más conectado
diameter(fig1) #diametro de la red
distancia1<-shortest.paths(fig1) #Matriz de distancias
heatmap(distancia1) #heatmap apartir de la matriz de distancias


#FIGURA 2
fig2<- make_empty_graph(n=10, directed=TRUE)
V(fig2)$color = "olivedrab1"
V(fig2)$shape = "sphere"
plot(fig2)
fig2<-add.edges(fig2,c(1,2, 1,4, 1,8, 1,9, 1,10))
plot(fig2)
fig2<-add.edges(c(2,10, 2,9, 2,7, 2,6))
fig2<-add.edges(fig2,c(3,5, 3,8, 3,7))
fig2<-add.edges(fig2,c( 4,6, 4,8, 4,9, 4,7, 4,1))
fig2<-add.edges(fig2,c( 5,6, 5,3, 5,7, 5,8, 5,4))
fig2<-add.edges(fig2,c( 7,5, 7,3, 7,4, 7,2, 7,9, 7,10))
fig2<-add.edges(fig2,c( 8,9, 8,4, 8,6, 8,3, 8,5))
fig2<-add.edges(fig2,c(9,7, 9,8, 9,4, 9,2, 9,1))
fig2<-add.edges(fig2,c(10,7, 10,9, 10,2, 10,1))

plot(fig2,edge.arrow.size=0.01,layout=layout_nicely(fig2))

adj_mat2<-as.matrix(get.adjacency(fig2))
adj_mat2
a2<-degree(fig2,mode = "out")#Te da los vecino de cada noda, es decir con cuantos esta conectado.
degree.distribution(fig2) #distribución de conectividades
degree(fig2)#te da el nodo más conectado
diameter(fig2) #diametro de la red
distancia2<-shortest.paths(fig2) #Matriz de distancias
heatmap(distancia2) #heatmap apartir de la matriz de distancias



#FIGURA3
fig3<- make_empty_graph(n=10, directed=TRUE)
V(fig3)$color = "red"
V(fig3)$shape = "sphere"
plot(fig3)
fig3<-add.edges(fig3,c(1,2, 2,3, 3,4, 4,5, 5,6, 6,7, 7,8, 8,9, 9,10, 10,1))
plot(fig3,edge.arrow.size=0.01,layout=layout_nicely(fig3))

adj_mat3<-as.matrix(get.adjacency(fig3))
adj_mat3
a3<-degree(fig3,mode = "out")#Te da los vecino de cada noda, es decir con cuantos esta conectado.
degree.distribution(fig3) #distribución de conectividades
degree(fig3)#te da el nodo más conectado
diameter(fig3) #diametro de la red
distancia1<-shortest.paths(fig3) #Matriz de distancias
heatmap(distancia3) #heatmap apartir de la matriz de distancias


#FIGURA 4
fig4<- make_empty_graph(n=10, directed=TRUE)
V(fig4)$color = "pink"
V(fig4)$shape = "sphere"
fig4<-add.edges(fig4,c(1,5, 1,6, 1,2, 1,8, 2,9, 2,1, 3,1, 3,4, 5,7, 5,10))
plot(fig4,edge.arrow.size=0.01,layout=layout_nicely(fig4))

adj_mat4<-as.matrix(get.adjacency(fig4))
adj_mat4
a4<-degree(fig4,mode = "out")#Te da los vecino de cada noda, es decir con cuantos esta conectado.
degree.distribution(fig4) #distribución de conectividades
degree(fig4)#te da el nodo más conectado
diameter(fig4) #diametro de la red
distancia1<-shortest.paths(fig4) #Matriz de distancias
heatmap(distancia4) #heatmap apartir de la matriz de distancias



