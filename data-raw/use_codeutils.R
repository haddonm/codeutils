





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

#develop includemissingRC-----------------------------------




dat <- matrix(trunc(rnorm(50, mean=20, sd=4)),nrow=10,ncol=5,
              dimnames=list(c(2,4,6,8,14,16,18,20,24,26),
                            c("1990","1991","1995","1997","1999")))
print(dat)

insertmissingRC(dat,incrow=2)

dat <- matrix(trunc(rnorm(50, mean=20, sd=4)),nrow=10,ncol=5,
              dimnames=list(c(2,4,6,8,14,16,18,20,24,26),
                            c("1990","1991A","1995","1997","1999")))
insertmissingRC(dat,incrow=2)

dat <- matrix(trunc(rnorm(50, mean=20, sd=4)),nrow=10,ncol=5,
              dimnames=list(c(2,4,6,8,10,12,14,16,18,20),
                            c("1990","1991","1992","1993","1994")))
print(dat)
insertmissingRC(dat,incrow=2)
















