


library(codeutils)
library(hplot)
library(igraph)

rundir <- pathtopath(getDBdir(),"/A_code/sizemod/R/")
dir(rundir)

checkvar <- c("readLBMdata","initiateModel",
              "preliminaryfit","getproduction","readLBMctrl")
checkvar <- c("makeoutputsm")
checkvar <- c("dynamics","negLLP","do_modfit","getvcov")
checkvar <- c("do_ESS","printESS")

outmap <- getfunmap(indir=rundir,checkfun=checkvar,sortby="functions",
                    files="",outfile="")


# arrows imply a function is called by whichever is pointing to it
plotprep(width=11, height=10)
parset(cex=1.25)
plot(graph_from_edgelist(as.matrix(outmap$alledge)))


str1(outmap)

outmap$isolates[,"function"]

outmap$edg

str1(outmap)

funs <- outmap$functions
     

nC <- nrow(funs)
counts <- numeric(nC)
for (i in 1:nC) {# i = 5
  counts[i] <- length(removeEmpty(unlist(strsplit(funs[i,"calls"],", "))))
  
  
}
pickMany <- which(counts > 4)
funs[pickMany,"function"]  
  
  
pickESS <- which(funs[,"function"] == "do_ESS")
  
  
funs[pickESS,3:4]  
  
 outmap$isolates[,"function"] 
  
  
  
  
  
  
  
  
  
  
