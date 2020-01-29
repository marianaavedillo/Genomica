##20/01/20
library(igraph)
x<-make_empty_graph(n=6,directed = TRUE) ## n= nodo directed= dirijida

V(x)$color="pink"
V(x)$shape = "sphere"
plot(x)
x <- add.edges(x, c(1,2, 1,3, 2,4, 3,4, 4,5, 5,6))
plot(x)

x <- add.vertices(x, 1, color="yellow", shape="sphere")
plot(x)

x <- add.edges(x, c(3,7, 5,7))
plot(x)

V(x)$name <- LETTERS[1:7]
V(x)
E(x)
plot(x)

plot(x, layout=layout_nicely, vertex.size=degree(x, V(x), "in")*15+15,
     vertex.label.dist=0.5, edge.arrow.size=0.5)
degree.distribution(x)
plot(degree_distribution(x), main="Degree distribution", xlab="Degree", ylab="Frequency")
hist(degree(x),col="green")
adj_mat<-as.matrix(get.adjacency(x))
adj_mat
View(adj_mat)
## 22/01/20
#prediccion de genes

wuhan_virus<-readDNAStringSet("Wuhan_seafood_virus.fasta")
wuhan_virus
translate_wuhan<-translate(wuhan_virus)
translate_wuhan

tabla_anotacion_wuhan<-read.table("genemarks.20200122.110343.14069.gms.txt",sep = "\t")
tabla_anotacion_wuhan
##continuamos con la practica de iGraph
x
degree(x)
red_amikas<-read.csv("Red_de_Amigas_GF_2020 - Sheet1 (2).csv")
red_amikas
View(red_amikas)
row.names(red_amikas)<-red_amikas[,1]
red_amikas<-red_amikas[,-1]
class(red_amikas) #data frame
red_amikas<-as.matrix(red_amikas)
class(red_amikas) #matrix
red<-graph_from_adjacency_matrix(red_amikas,mode = "directed")
plot(red)
sort(a1,decreasing = TRUE) #quienes te conideran como su amigo
mean(a1)
mean(a2)
a1<-degree(red,mode = "in")
a2<-degree(red,mode = "out")

sp<-cluster_spinglass(red) #se forman dos grupos 
plot(sp,red)
plot(sp,red,edge.arrow.size=.1)

cluster_edge_betweenness(red,directed = TRUE)->ceb
plot(ceb,red,edge.arrow.size=0.1)

sp #lista las personas en cada cluster
ceb #same as above
membership(ceb)

###Exercises 2 Distances and Clustering Coefficient 27/01/20
red_amikas
red<-graph_from_adjacency_matrix(red_amikas,mode = "directed")
plot(red,edge.arrow.size=0.01,layout=layout_nicely(red),vertex.size=degree(red,V(red), "in"))
transitivity(red)
transitivity(red,"local")

mean_distance(red)
distancia<-shortest.paths(red, mode = "in")
distancia
diameter(red)
shortest_paths(red, 10,3)
shortest_paths(red, "Haydar","Carla")
heatmap(distancia)
all_shortest_paths(red,"Mariana","Karen")
