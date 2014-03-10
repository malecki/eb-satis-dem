ltheme <- col.whitebg()    ## color theme for poster!
ltheme$strip.background$col <- "lightgrey" ## change strip bg
ltheme$superpose.symbol <- list(pch = c(19, 3, 6, 0, 5, 16, 17),
                                cex = rep(0.8, 7),
                                col = c("turquoise", "royalblue",
                                  "red", "orange", "brown",
                                  "darkgreen", "orchid"))
lattice.options(default.theme = ltheme)      ## set as default
rm(ltheme)

x <- c(39,40,41,41.5,42,43)
y1 <- c(21,20,37,54,58,44)
y2 <- c(89,89,84,55,59,45)
pdf("poster/questionorder.pdf",width=5,height=3,version="1.4")
plot(x,y1,type="l",ylim=c(90,20),lwd=3,
     main="Satisfaction with Democracy Questions",
     xlab="EB Survey",
     ylab="Question Number",col="turquoise")
lines(x,y2,lty=1,lwd=3,col="royalblue")
legend("left",legend=c("National","European"),col=c("turquoise","royalblue"),lwd=4)
dev.off()

byNatSat <- listToDotplotDF(meanE.na,change=4,
                            names=c("country","Sat","change"),noBy=T)
byNatSat <- cbind(byNatSat,E="European")
bySat <- listToDotplotDF(meanN.na,change=4,
                         names=c("country","Sat","change"),noBy=T)
bySat <- cbind(bySat,E="National")
combind <-  rbind(byNatSat,bySat)
trellis.device(file="poster/SatbyCountryNA.pdf",
               device="pdf",color=T,width=6,height=6)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Sat ~ country |E ,
                      combind[c(25:48,97:120),] ,
                      groups=change,
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);graphics.off()


byNatSat <- listToDotplotDF(meanE.0,change=4,
                            names=c("country","Sat","change"),noBy=T)
byNatSat <- cbind(byNatSat,E="European")
byNatSat$change <- c(rep("39",12),rep("40",12),rep("41",12),rep("41.1",12),rep("42",12),rep("43",12))
bySat <- listToDotplotDF(meanN.0,change=4,
                         names=c("country","Sat","change"),noBy=T)
bySat <- cbind(bySat,E="National")
bySat$change <- c(rep("39",12),rep("40",12),rep("41",12),rep("41.1",12),rep("42",12),rep("43",12))
combind <-  rbind(byNatSat,bySat)
trellis.device(file="poster/SatbyCountry0.pdf",
               device="pdf",color=T,width=9,height=5)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Sat ~ country |E ,
                      combind[c(25:48,97:120),] ,
                      ylab="Satisfied European",
                            
                      groups=change,
                      auto.key=list(text=c("41,","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);graphics.off()

##### N by support
byNatSat <- listToDotplotDF(meanN.na.byCountryAndSupport,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Did Not Vote for Incumb","Voted for Gov Party"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!
trellis.device(file="poster/NbySupport.pdf",
               device="pdf",color=T,width=6,height=6)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);graphics.off()

##### E by benefit
lapply(data.0, function(x) { by(x, list(x$country,x$benefit), function(x) mean(x$E,na.rm=T)) }) -> meanE.0.byBenefit

byNatSat <- listToDotplotDF(meanE.0.byBenefit,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("EU Benefit","No Benefit"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!
trellis.device(file="poster/EbyBenefit.pdf",
               device="pdf",color=T,width=8.5,height=3)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      axis.cex=.6,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      #auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);graphics.off()

############ DETAILED E by N SUPPORT

##### N by support
byNatSat <- listToDotplotDF(meanE.na.detailed,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Nat. Very Sat.","Nat. Fairly Sat.","Nat. Not Very Sat.","Nat. Not at all"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="poster/EbyNdetailed.pdf",
               device="pdf",color=T,width=8.5,height=5)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied European",
                      byNatSat[97:192,] ,horizontal=F,
                      groups=change,
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=c(45,0),cex=.7),layout=c(4,1))             
print(p.byNatSat);graphics.off()

############### E By Support


byNatSat <- listToDotplotDF(meanE.na.byCountryAndSupport,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Did Not Vote for Incumb","Voted for Gov Party"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="poster/EbySupport.pdf",
               device="pdf",color=T,width=6,height=6)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      ylab="Proportion Satisfied",
                            
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);graphics.off()


#################################################################
### The Pct Sat E versions
#################################################################
## This is true supporters, false then true. first N.NA=0 then N.NA=NA
byNatSat <- listToDotplotDF(trueSupporters.pctsat.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Committed Losers"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!
trellis.device(file="poster/trueSupporters0.pdf",
               device="pdf",color=T,width=6,height=5)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      ylab="Proportion Satisfied",
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()


######### the NA version
byNatSat <- listToDotplotDF(trueSupporters.pctsat.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Committed Losers"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="poster/trueSupportersNA.pdf",
               device="pdf",color=T,width=6,height=5)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      ylab="Proportion Satisfied",
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()

################################
## True haters, false then true
byNatSat <- listToDotplotDF(trueHaters.pctsat.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Disillusioned Winners"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="poster/trueHaters0.pdf",
               device="pdf",color=T,width=6,height=5)
symb <- trellis.par.get("superpose.symbol")
symb$col=c("turquoise","darkorchid2")
trellis.par.set("superpose.symbol",symb)
## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()

### The NA Version
trellis.device(file="poster/trueHatersNA.pdf",
               device="pdf",color=T,width=6,height=5)
symb <- trellis.par.get("superpose.symbol")
symb$col=c("turquoise","darkorchid2")
trellis.par.set("superpose.symbol",symb)
byNatSat <- listToDotplotDF(trueHaters.pctsat.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Disillusioned Winners"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!


## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      ylab="Proportion Satisfied",
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             

print(p.byNatSat);
graphics.off()



################################
## Sore Losers: Nat FALSE (implied because) Support FALSE
byNatSat <- listToDotplotDF(sLoser.pctsat.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Sore Losers"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="poster/soreLosers0.pdf",
               device="pdf",color=T,width=6,height=5)

## plot only 41 to 41.1

p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()
### The NA Version
trellis.device(file="poster/soreLosersNA.pdf",device="pdf",color=T,width=6,height=5)

byNatSat <- listToDotplotDF(cond1.pctsat.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Sore Losers"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()

################################
## Gratified Winners: Nat TRUE (implied because) Support TRUE 
byNatSat <- listToDotplotDF(gWinner.pctsat.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Gratified Winners"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="poster/gratWinners0.pdf",
               device="pdf",color=T,width=6,height=5)
symb <- trellis.par.get("superpose.symbol")
symb$col=c("darkred","magenta")
trellis.par.set("superpose.symbol",symb)
## plot only 41 to 41.1

p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()

#### The NA Version
trellis.device(file="poster/gratWinnersNA.pdf",device="pdf",color=T,width=6,height=5)

byNatSat <- listToDotplotDF(gWinner.pctsat.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Gratified Winners"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                            
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()



#### Now consider the "EU benefit condition c"
#### for true supporters and true haters.
data.01 <- list(data.0[[1]],data.0[[2]],data.0[[3]],data.0[[4]],data.0[[5]])
data.NA1 <- list(data.NA[[1]],data.NA[[2]],data.NA[[3]],data.NA[[4]],data.NA[[5]])
## subset the true supporters / true haters
Trues.0 <- lapply(data.01, subset, trueSupporter==T)
Trues.na <- lapply(data.NA1, subset, trueSupporter==T)
Trueh.0 <- lapply(data.01, subset, trueHater==T)
Trueh.na <- lapply(data.NA1, subset, trueHater==T)
gratw.0 <- lapply(data.01, subset, gWinner==T)
sorel.0 <- lapply(data.01, subset, sLoser==T)


lapply(Trues.0, function(x) { by(x, list(x$country,x$benefit), function(x) mean(x$E,na.rm=T)) }) -> trueSupporters.benefit.0

lapply(Trueh.0, function(x) { by(x, list(x$country,x$benefit), function(x) mean(x$E,na.rm=T)) }) -> trueHaters.benefit.0

lapply(gratw.0, function(x) { by(x, list(x$country,x$benefit), function(x) mean(x$E,na.rm=T)) }) -> gwin.benefit.0

lapply(sorel.0, function(x) { by(x, list(x$country,x$benefit), function(x) mean(x$E,na.rm=T)) }) -> sloser.benefit.0

## This is true supporters, false then true. first N.NA=0 then N.NA=NA
byNatSat <- listToDotplotDF(trueSupporters.benefit.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Benefited","Not Benefited"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="poster/trueSupportersBenefit0.pdf",
               device="pdf",color=T,width=6,height=4.25)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      ylab="Proportion Satisfied",
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()


######### the NA version
byNatSat <- listToDotplotDF(trueSupporters.benefit.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Benefited","Not Benefited"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="poster/trueSupportersBenefitNA.pdf",
               device="pdf",color=T,width=6,height=4.25)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                            
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()

################################
## True haters, false then true
byNatSat <- listToDotplotDF(trueHaters.benefit.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Benefited","Not Benefited"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="poster/trueHatersBenefit0.pdf",
               device="pdf",color=T,width=6,height=4.25)
## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()
### The NA Version
trellis.device(file="poster/trueHatersBenefitNA.pdf",
               device="pdf",color=T,width=6,height=4.25)
byNatSat <- listToDotplotDF(trueHaters.benefit.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Benefited","Not Benefited"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             

print(p.byNatSat);
graphics.off()




## This is GRATIFIED WINNERS, false then true. first N.NA=0 then N.NA=NA
byNatSat <- listToDotplotDF(gwin.benefit.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Benefited","Not Benefited"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="poster/gWinBenefit0.pdf",
               device="pdf",color=T,width=6,height=4.25)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      ylab="Proportion Satisfied",
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()

byNatSat <- listToDotplotDF(sloser.benefit.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Benefited","Not Benefited"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="poster/sLoseBenefit0.pdf",
               device="pdf",color=T,width=6,height=4.25)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      ylab="Proportion Satisfied",
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
graphics.off()
