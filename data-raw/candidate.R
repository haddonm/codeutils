



vB <- function(par,ages) {
  return(par[1] * (1 - exp(-par[2]*(ages-par[3]))))
}

ages <- 0:30
gpar <- c(Linf=55.9,K=0.198,t0=-0.51)
Wtpar <- c(Wta=0.00000588,Wtb=3.31)

LaA <- vB(gpar,ages)
WaA <- Wtpar[1] * LaA ^ Wtpar[2]

getWaL <- function(pars,sizes) {
  WaL <- pars[1] * sizes ^ pars[2]
  return(WaL)
} # end of getWaL

inpar <- c(5.0e-06,3.3,0.5)


negNLL(inpar,getWaL,WaA,sizes=LaA)

bestWL <- nlm(f=negNLL,p=inpar,funk=getWaL,observed=WaA,sizes=LaA,
              typsize=magnitude(inpar))
bestWL

predW <- bestWL$estimate[1] * LaA ^ bestWL$estimate[2]

plot1(LaA,WaA,type="p",pch=16,cex=1)
lines(LaA,predW,lwd=2,col=2)



 ages <- 0:30
 gpar <- c(Linf=55.9,K=0.198,t0=-0.51)
 Wtpar <- c(Wta=0.00000588,Wtb=3.31)  # true values
 LaA <- gpar[1] * (1 - exp(-gpar[2]*(ages-gpar[3])))
 WaA <- Wtpar[1] * LaA ^ Wtpar[2]
 getWaL <- function(pars,sizes) {
    WaL <- pars[1] * sizes ^ pars[2]
    return(WaL)
 } # end of getWaL
 Wpar <- c(wta=5.0e-06,wtb=3.1,sd=0.5)
 bestWL <- nlm(f=negNLL,p=inpar,funk=getWaL,observed=WaA,
               sizes=LaA,typsize=magnitude(inpar))
 predW <- bestWL$estimate[1] * LaA ^ bestWL$estimate[2]
 cbind(LaA,WaA,predW,WaA-predW)

negNLL(pars=c(Wtpar,0.05),funk=getWaL,observed=WaA,sizes=LaA)







