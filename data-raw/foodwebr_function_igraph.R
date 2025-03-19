library(foodwebr)
library(igraph)


f <- function() 1
g <- function() f()
h <- function() { f(); g() }
i <- function() { f(); g(); h() }
j <- function() j()
#A call to foodweb() will calculate a graph of the dependencies.

fw <- foodweb()
#Printing the object will show the graphviz representation:
  
  fw
#> # A `foodweb`: 5 vertices and 7 edges 
#> digraph 'foodweb' {
#>   f()
#>   g() -> { f() }
#>   h() -> { f(), g() }
#>   i() -> { f(), g(), h() }
#>   j() -> { j() }
#> }
Plotting will draw the graph.

plot(fw)




##--------------------------------------------------------------------------##
## Function map via igraph


## igraph documentation
## https://r.igraph.org/

## https://r-graph-gallery.com/248-igraph-plotting-parameters.html
## there are a number of pages on graph gallery .. not just this one


## Create a digraph of the function map
if (requireNamespace("TasHS", quietly = TRUE)) {
  Tas <- foodwebr::foodweb(TasHS::mcdahcr, filter = FALSE)
}

## Default plot of the graphviz object
plot(Tas)


## Tidygraph conversion of foodwebr digraph to igraph
if (requireNamespace("tidygraph", quietly = TRUE)) {
  tg_Tas <- tidygraph::as_tbl_graph(Tas)
}


## Default igraph plot of the tidygraph object
plot(tg_Tas)


plot(tg_Tas, layout=layout_nicely)
plot(tg_Tas, layout=layout_with_kk)
plot(tg_Tas, layout=layout.fruchterman.reingold)

plot(tg_Tas, edge.arrow.width = .75,
     layout = layout_with_kk,
     #layout=layout_nicely,
     #layout=layout.fruchterman.reingold,
     edge.arrow.size = .75,
     #vertex.label = NA,
     vertex.size = 15,
     vertex.frame.color = "white",
     edge.curved= -0.25,
     #edge.color="red",
     edge.width=2,
     rescale=TRUE)



## ggraph plot as a map (note ggplot options etc works here)
tg_Tas %>%
  ggraph(layout = 'kk',maxiter = 50) +
  #geom_edge_diagonal(color = "blue", alpha = 0.9) +
  geom_edge_link(arrow = arrow(length = unit(2, 'mm')),
                 start_cap = circle(0.75),
                 end_cap = circle(0.75)) +
  geom_node_point(size = 7, colour = 'lightblue') +
  geom_node_text(aes(label = name), size = 2.5, colour = 'black', vjust = 0.4) +
  theme_graph()

## optional code to flip and rotate ggplot objects
# coord_flip() +
# scale_x_reverse() +
# scale_y_reverse()



##---------------------------------------------------------------------##
## Pointing at aMSE and functions within
library(codeutils)
library(hplot)
library(aMSE)
library(foodwebr)
library(igraph)

if (requireNamespace("aMSE", quietly = TRUE))
if (requireNamespace("tidygraph", quietly = TRUE))

fwr <- foodwebr::foodweb(aMSE::modzoneC, filter = TRUE)
## Tidygraph and gggraph

tg_fwr <- tidygraph::as_tbl_graph(fwr)
# 
# figures <- "c:/Users/malco/DropBox/A_CodeR/aMSEGuide/figures/"
# filen <- pathtopath(figures,"makezoneC-map.png") 
# 

plotprep(width=7,height=8,newdev=FALSE,filename=filen,cex=0.9,
         verbose=FALSE)
parset()
plot(tg_fwr,cex=0.5) ## Default plot of the tidygraph object


dev.off()


library(ggraph)
## ggraph plot as a dendrogram (note ggplot options etc works here)
tg_fwr %>%
  #ggraph(layout = 'kk') +
  ggraph('dendrogram') +
  geom_edge_diagonal(color = "blue", alpha = 0.9) +
  # geom_edge_link(arrow = arrow(length = unit(2, 'mm')),
  #                start_cap = circle(0.5),
  #                end_cap = circle(0.5)) +
  geom_node_point(size = 8, colour = 'lightblue') +
  geom_node_text(aes(label = name), size = 4.5, colour = 'black', vjust = 0.4, angle = 90) +
  theme_graph()




## igraph plot of aMSE


plot(tg_fwr, layout=layout_nicely)
plot(tg_fwr, layout=layout_with_kk)
plot(tg_fwr, layout=layout.fruchterman.reingold)
plot(tg_fwr, layout=layout_with_lgl)
plot(tg_fwr, layout=layout_as_tree)

plot(tg_fwr, edge.arrow.width = .75,
     #layout = layout_with_kk,
     #layout=layout_with_lgl,
     layout=layout_as_tree,
     #layout=layout_nicely,
     #layout=layout.fruchterman.reingold,
     edge.arrow.size = .75,
     #vertex.label = NA,
     vertex.size = 15,
     vertex.frame.color = "white",
     edge.curved= -0.25,
     #edge.color="red",
     edge.width=2,
     rescale=TRUE)

# I think this tells igraph to normalize the coordinates of the
# layout relative to the space you're working with
lo <- layout_with_kk(tg_fwr) # create a layout
lo <- norm_coords(lo, ymin=-1, ymax=1, xmin=-1, xmax=1)


plot(tg_fwr, edge.arrow.width = .5,
     layout = layout_with_kk,
     #layout=layout_with_lgl,
     #layout=layout_as_tree,
     #layout=layout_nicely,
     #layout=layout.fruchterman.reingold,
     edge.arrow.size = .75,
     #vertex.label = NA,
     vertex.size = 7,
     vertex.frame.color = "white",
     vertex.label.cex=0.75,
     edge.curved= -0.25,
     #edge.color="red",
     edge.width=2,
     #rescale=TRUE,
     layout=lo*0.75
)
