x <- c(39,40,41,41.5,42,43)
y1 <- c(21,20,37,54,58,44)
y2 <- c(89,89,84,55,59,45)
pdf("graphics/questionorder.pdf",width=5,height=3,version="1.4")
plot(x,y1,type="l",ylim=c(90,20),
     main="Satisfaction with Democracy Questions",
     xlab="EB Survey",ylab="Question Number")
lines(x,y2,lty=2)
legend("left",legend=c("National","European"),lty=c(1,2))
dev.off()

byNatSat <- listToDotplotDF(meanE.na,change=4,
                            names=c("country","Sat","change"),noBy=T)
byNatSat <- cbind(byNatSat,E="European")
bySat <- listToDotplotDF(meanN.na,change=4,
                         names=c("country","Sat","change"),noBy=T)
bySat <- cbind(bySat,E="National")
combind <-  rbind(byNatSat,bySat)
combind$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="graphics/SatbyCountryNA.pdf",
               device="pdf",color=F,width=6.5,height=4)

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
trellis.device(file="graphics/SatbyCountry0.pdf",
               device="pdf",color=F,width=6,height=6)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Sat ~ country |E ,
                      combind[c(13:48,85:120),] ,
                      ylab="Proportion Satisfied",
                            
                      groups=change,
                      auto.key=list(text=c("40,","41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);graphics.off()

##### N by support
byNatSat <- listToDotplotDF(meanN.na.byCountryAndSupport,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Did Not Vote for Incumb","Voted for Gov Party"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="graphics/NbySupport.pdf",
               device="pdf",color=F,width=6.5,height=4)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);graphics.off()

############ DETAILED E by N SUPPORT

##### N by support
byNatSat <- listToDotplotDF(meanE.na.detailed,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Nat. Very Sat.","Nat. Fairly Sat.",
                              "Nat. Not Very Sat.","Nat. Not at all"))
trellis.device(file="graphics/EbyNdetailed.pdf",
               device="pdf",color=F,width=7.5,height=4.5)
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[97:192,] ,horizontal=F,
                      groups=change,
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45,cex=.7),layout=c(4,1))             
print(p.byNatSat);graphics.off()

############### E By Support


byNatSat <- listToDotplotDF(meanE.na.byCountryAndSupport,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Did Not Vote for Incumb","Voted for Gov Party"))
trellis.device(file="graphics/EbySupport.pdf",
               device="pdf",color=F,width=6,height=8)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      ylab="Proportion Satisfied",
                            
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);graphics.off()





## First with "difference eu-nat" then pct sat E.
## This is true supporters, false then true. first N.NA=0 then N.NA=NA
byNatSat <- listToDotplotDF(trueSupporters.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Committed Losers"))
trellis.device(file="graphics/differences/trueSupporters0.pdf",
               device="pdf",color=F,width=6,height=8)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);

## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()


######### the NA version
byNatSat <- listToDotplotDF(trueSupporters.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Committed Losers"))
trellis.device(file="graphics/differences/trueSupportersNA.pdf",
               device="pdf",color=F,width=6,height=8)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()

################################
## True haters, false then true
byNatSat <- listToDotplotDF(trueHaters.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Disillusioned Winners"))
trellis.device(file="graphics/differences/trueHaters0.pdf",
               device="pdf",color=F,width=6,height=8)
## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[c(49:72,121:144),] ,
                      horizontal=F, groups=change,
                      auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()
### The NA Version
trellis.device(file="graphics/differences/trueHatersNA.pdf",
               device="pdf",color=F,width=6,height=8)
byNatSat <- listToDotplotDF(trueHaters.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Disillusioned Winners"))

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             

print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[c(49:72,121:144),] ,
                      horizontal=F, groups=change,
                      auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()



################################

byNatSat <- listToDotplotDF(trueSupporters.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Yes Inst, No Incumb."))
trellis.device(file="graphics/differences/cond1-0.pdf",
               device="pdf",color=F,width=6,height=8)

## plot only 41 to 41.1

p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()
### The NA Version
trellis.device(file="graphics/differences/cond1-NA.pdf",device="pdf",color=F,width=6,height=8)

byNatSat <- listToDotplotDF(cond1.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Yes Inst, No Incumb."))
## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()

################################
##condition 2 : the incumbent, but not national inst generally.
byNatSat <- listToDotplotDF(cond2.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Yes Gov, Still Dissat. Nat."))
trellis.device(file="graphics/differences/cond2-0.pdf",
               device="pdf",color=F,width=6,height=8)

## plot only 41 to 41.1

p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[c(49:72,121:144),], horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()

#### The NA Version
trellis.device(file="graphics/differences/cond2-NA.pdf",device="pdf",color=F,width=6,height=8)

byNatSat <- listToDotplotDF(cond2.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Yes Gov, Still Dissat. Nat."))
## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             

#print(p.byNatSat);
graphics.off()

#################################################################
### The Pct Sat E versions
#################################################################
## This is true supporters, false then true. first N.NA=0 then N.NA=NA
byNatSat <- listToDotplotDF(trueSupporters.pctsat.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Committed Losers"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="graphics/trueSupporters0.pdf",
               device="pdf",color=F,width=6,height=6)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      ylab="Proportion Satisfied",
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);

## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()


######### the NA version
byNatSat <- listToDotplotDF(trueSupporters.pctsat.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Committed Losers"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="graphics/trueSupportersNA.pdf",
               device="pdf",color=F,width=6,height=6)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      ylab="Proportion Satisfied",
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()

################################
## True haters, false then true
byNatSat <- listToDotplotDF(trueHaters.pctsat.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Disillusioned Winners"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="graphics/trueHaters0.pdf",
               device="pdf",color=F,width=6,height=6)
## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[c(49:72,121:144),] ,
                      ylab="Proportion Satisfied",
                      horizontal=F, groups=change,
                      auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()
### The NA Version
trellis.device(file="graphics/trueHatersNA.pdf",
               device="pdf",color=F,width=6,height=6)
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
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[c(49:72,121:144),] ,
                      horizontal=F, groups=change,
                      auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()



################################
## Sore Losers: Nat FALSE (implied because) Support FALSE
byNatSat <- listToDotplotDF(sLoser.pctsat.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Sore Losers"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="graphics/soreLosers0.pdf",
               device="pdf",color=F,width=6,height=6)

## plot only 41 to 41.1

p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()
### The NA Version
trellis.device(file="graphics/soreLosersNA.pdf",device="pdf",color=F,width=6,height=6)

byNatSat <- listToDotplotDF(sLoser.pctsat.na,change=4,
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
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                            
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()

################################
## Gratified Winners: Nat TRUE (implied because) Support TRUE 
byNatSat <- listToDotplotDF(gWinner.pctsat.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Gratified Winners"))
byNatSat$country <-  rep(data.frame(ftable(meanN.na.byCountryAndSupport[[6]]))$Var1) ## REALLY UGLY HACK FOR LOWER CASE COUNTRY NAMES!!!

trellis.device(file="graphics/gratWinners0.pdf",
               device="pdf",color=F,width=6,height=6)

## plot only 41 to 41.1

p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                            
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[c(49:72,121:144),], horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()

#### The NA Version
trellis.device(file="graphics/gratWinnersNA.pdf",device="pdf",color=F,width=6,height=6)

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
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             

#print(p.byNatSat);
graphics.off()



#### Now consider the "EU benefit condition c"
#### for true supporters and true haters.

## subset the true supporters / true haters
Trues.0 <- lapply(data.0, subset, trueSupporter==T)
Trues.na <- lapply(data.NA, subset, trueSupporter==T)
Trueh.0 <- lapply(data.0, subset, trueHater==T)
Trueh.na <- lapply(data.NA, subset, trueHater==T)

lapply(Trues.na, function(x) { by(x, list(x$country,x$benefit), function(x) mean(x$E,na.rm=T)) }) -> trueSupporters.benefit.na
lapply(Trues.0, function(x) { by(x, list(x$country,x$benefit), function(x) mean(x$E,na.rm=T)) }) -> trueSupporters.benefit.0

lapply(Trueh.na, function(x) { by(x, list(x$country,x$benefit), function(x) mean(x$E,na.rm=T)) }) -> trueHaters.benefit.na
lapply(Trueh.0, function(x) { by(x, list(x$country,x$benefit), function(x) mean(x$E,na.rm=T)) }) -> trueHaters.benefit.0


## This is true supporters, false then true. first N.NA=0 then N.NA=NA
byNatSat <- listToDotplotDF(trueSupporters.benefit.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Has Benefited"))
trellis.device(file="graphics/trueSupportersBenefit0.pdf",
               device="pdf",color=F,width=6,height=6)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      ylab="Proportion Satisfied",
                            
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);

## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                            
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()


######### the NA version
byNatSat <- listToDotplotDF(trueSupporters.benefit.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Has Benefited"))
trellis.device(file="graphics/trueSupportersBenefitNA.pdf",
               device="pdf",color=F,width=6,height=6)

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                            
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,
                      auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      byNatSat[c(49:72,121:144),] ,horizontal=F,
                      ylab="Proportion Satisfied",
                            
                      groups=change,auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()

################################
## True haters, false then true
byNatSat <- listToDotplotDF(trueHaters.benefit.0,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Not Benefited"))
trellis.device(file="graphics/trueHatersBenefit0.pdf",
               device="pdf",color=F,width=6,height=6)
## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                            
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             
print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                            
                      byNatSat[c(49:72,121:144),] ,
                      horizontal=F, groups=change,
                      auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()
### The NA Version
trellis.device(file="graphics/trueHatersBenefitNA.pdf",
               device="pdf",color=F,width=6,height=6)
byNatSat <- listToDotplotDF(trueHaters.benefit.na,change=4,
                            names=c("country","byVar","Diff","change"),
                            byLabels=c("Other","Not Benefited"))

## plot only 41 to 41.1
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                            
                      byNatSat[49:96,] ,horizontal=F,
                      groups=change,auto.key=list(text=c("41","41.1")),
                      scales=list(rot=45),layout=c(2,1))             

print(p.byNatSat);
## plot only 41 to 43
p.byNatSat <- dotplot(Diff ~ country | byVar ,
                      ylab="Proportion Satisfied",
                            
                      byNatSat[c(49:72,121:144),] ,
                      horizontal=F, groups=change,
                      auto.key=list(text=c("41","43")),
                      scales=list(rot=45),layout=c(2,1))             
#print(p.byNatSat);
graphics.off()

