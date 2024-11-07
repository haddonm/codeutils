





library(codeutils)







packagedetails <- function(pkgname) {
  mans <- paste0(.libPaths(),paste0("/",pkgname,"/meta/"))
  fundet <- readRDS(file=paste0(mans,"Rd.rds"))
  funlist <- fundet[,c("Name","Title")]
  funlist[,"package"] <- pkgname
  return(invisible(funlist))
}

fundetails <- packagedetails("hplot")

library(hplot)

pkgs <- c("aMSE","codeutils","hplot","makehtml","rmdutils","sizemod","TasHS")
npkg <- length(pkgs)
fundetails <- packagedetails(pkgs[1])
for (i in 2:npkg) {
  tmp <- packagedetails(pkgs[i])
  fundetails <- rbind(fundetails,tmp)
}









ens <- sort(getNamespaceExports("codeutils"))





dbdir <- getDBdir()

indir <- pathtopath(dbdir,"A_Code/TasHS/R/")
outfilen <- pathtopath(dbdir,"A_Code/TasHS/data-raw/tashs_funs.csv")
dir(indir)
files <- c("constC.R","constrefperiod.R","plotfuns.R","Tas_specific.R","tashs_funs.R")
out <- describefunctions(indir=indir,outfile=outfilen,files=files,sortby="file")

#develop makeQuarto-----------------------------------

library(codeutils)















