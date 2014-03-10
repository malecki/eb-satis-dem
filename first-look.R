## Change this to point to your local working copy 
## of the repository (eg just "~/apsa07")
setwd("~/matt/apsa07")
library(lattice)   # used for graphics. some params set up in readData.R
library(survey)    # used for surveydesign,pweights
library(xtable)    # some output to latex

## Also, each dataset moves around - variables of interest are 
## noted in comments of readData.R, for example for EB41:
##   V37 SWDnat
##   V38 "frequency discuss pol with friends"
##   V84 SWD-EU

## Load the data as 4 or more data.frames "ebXX" where XX is svy number.
source("readData.R") #defines helper functions and returns them.


## As survey design objects (for weighted means)
## However, I need to borrow from svymean to return what i want
## I can't get svystat.ftable to give me anything usable,
## much less a matrix to feed to lattice:::dotplot
data.na.s    <- lapply(data.NA,function(x) {
  svydesign(id=~id,weights=~wt,data=x)})
data.0.s    <- lapply(data.0,function(x) {
  svydesign(id=~id,weights=~wt,data=x)})

## compute proportion satisfied, by country
## ignore weights
## E values are conditioned on country AND national dem
meanN.na <- lapply(data.NA,  function(x) {
  by(x$N,x$country,mean,na.rm=T) } )
meanE.na <- lapply(data.NA,  function(x) {
  by(x$E,x$country,mean,na.rm=T) } )
meanE.na.byCountry <- lapply(data.NA,  function(x) {
  by(x$E,list(x$country,x$N),mean,na.rm=T) } )
meanN.0 <- lapply(data.0,  function(x) {
  by(x$N,x$country,mean,na.rm=T) } )
meanE.0 <- lapply(data.NA,  function(x) {
  by(x$E,x$country,mean,na.rm=T) } )
meanE.0.byCountry <- lapply(data.0,  function(x) {
  by(x$E,list(x$country,x$N),mean,na.rm=T) } )

## National democracy and regime support (last election)
meanN.na.byCountryAndSupport <- lapply(data.NA,  function(x) {
  by(x$N,list(x$country,x$regimeSupport1),mean,na.rm=T) } )
meanN.0.byCountryAndSupport <- lapply(data.0,  function(x) {
  by(x$N,list(x$country,x$regimeSupport1),mean,na.rm=T) } )

## European democracy and National regime support (last election)
meanE.na.byCountryAndSupport <- lapply(data.NA,  function(x) {
  by(x$E,list(x$country,x$regimeSupport1),mean,na.rm=T) } )
meanE.0.byCountryAndSupport <- lapply(data.0,  function(x) {
  by(x$E,list(x$country,x$regimeSupport1),mean,na.rm=T) } )

## This is how we print (xtable) these types of results. for now.

#lapply(meanN.na.byCountryAndSupport,function(x) xtable(as.table(x)))  
#lapply(meanE.na.byCountryAndSupport,function(x) xtable(as.table(x)))  

meanE.na.byCountryAndSupport2 <- lapply(data.NA,  function(x) {
  by(x$E,list(x$country,x$regimeSupport2),mean,na.rm=T) } )
meanE.0.byCountryAndSupport2 <- lapply(data.0,  function(x) {
  by(x$E,list(x$country,x$regimeSupport2),mean,na.rm=T) } )

meanE.na.media <- lapply(list(data.NA[[1]],data.NA[[2]],data.NA[[4]]),  function(x) {
  by(x$E,list(x$country,x$mediaHigh),mean,na.rm=T) } )
meanE.0.media <- lapply(list(data.0[[1]],data.0[[2]],data.0[[4]]),  function(x) {
  by(x$E,list(x$country,x$mediaHigh),mean,na.rm=T) } )


meanE.na.byEdu <- lapply(data.NA,  function(x) {
  by(x$E,list(x$country,x$Education),mean,na.rm=T) } )
meanE.0.byEdu <- lapply(data.0,  function(x) {
  by(x$E,list(x$country,x$Education),mean,na.rm=T) } )

meanE.na.newsp <- lapply(list(data.NA[[1]],data.NA[[2]],data.NA[[4]]),  function(x) {
  by(x$E,list(x$country,x$newspaper),mean,na.rm=T) } )
meanE.0.newsp <- lapply(list(data.0[[1]],data.0[[2]],data.0[[4]]),  function(x) {
  by(x$E,list(x$country,x$newspaper),mean,na.rm=T) } )

meanE.na.byInt <- lapply(data.NA,  function(x) {
  by(x$E,list(x$country,x$int),mean,na.rm=T) } )
meanE.0.byInt <- lapply(data.0,  function(x) {
  by(x$E,list(x$country,x$int),mean,na.rm=T) } )

meanE.na.detailed <- lapply(data.NA,  function(x) {
  by(x$E,list(x$country,x$Nat),mean,na.rm=T) } )
meanE.0.detailed <- lapply(data.0,  function(x) {
  by(x$E,list(x$country,x$Nat),mean,na.rm=T) } )

  
## Now compute the proportion satisfied, by country
## taking into account survey prop weight
meanN.na.s <- lapply(data.na.s, function(x) {
  svyby(x$variables$N,x$variables$country,design=x,svymean,na.rm=T)
}
                   )
meanE.na.s <- lapply(data.na.s, function(x) {
  svyby(x$variables$E,x$variables$country,design=x,svymean,na.rm=T)
}
                   )
meanN.0.s <- lapply(data.0.s, function(x) {
  svyby(x$variables$N,x$variables$country,design=x,svymean,na.rm=T)
}
                  )
meanE.0.s <- lapply(data.0.s, function(x) {
  svyby(x$variables$E,x$variables$country,design=x,svymean,na.rm=T)
}
                  )
## What is the difference between this and not-weighted?
## function with no arguments compares hard coded named
## lists of EU and National mean proportions satisfied
weightDifferences <- function() {
diffs <- list()
for (i in 1:length(meanE.na)){
 	diffs[["E"]][[i]] <- (meanE.na[[i]][1:12] - meanE.na.s[[i]]$statistics[1:12])
	diffs[["N"]][[i]] <- (meanN.na[[i]][1:12] - meanN.na.s[[i]]$statistics[1:12])
 	}
 	cat("Raw - Weighted: (+ raw higher; - wt higher)\n\n")
 	return(diffs)
}
weightDifferences()

doCountryCorrelations <- function(list1,list2) {
cors <- list()
stopifnot(length(list1)==length(list2))
if ( class(list1[[1]])[1]=="by") {
for (i in 1:length(meanE.na)){
	cors[[i]] <- cor(list1[[i]],list2[[i]],use="complete.obs")
	}	
} else if ( class(list1[[1]])[1] == "svyby") {
		for (i in 1:length(meanE.na)){
	cors[[i]] <- cor(list1[[i]]$statistics,list2[[i]]$statistics,use="complete.obs")
	}
	
	} 
	return(cors)
}

doCountryCorrelations(meanN.na,meanE.na)
doCountryCorrelations(meanN.na.s,meanE.na.s)
doCountryCorrelations(meanN.0,meanE.0)
doCountryCorrelations(meanN.0.s,meanE.0.s)

lapply(meanN.0,  function(x) {xtable(rbind(x[1:12])) })
lapply(meanE.0,  function(x) {xtable(rbind(x[1:12])) })

w <- list()
for (i in 1:length(meanN.0)) {
	w[[i]] <- cov.wt(cbind(
                               meanN.0[[i]][1:12],
                               meanE.0[[i]][1:12]),
                         wt=as.vector(by(data.0[[i]]$wt,
                           data.0[[i]]$country,mean,na.rm=T))[1:12],
                         cor=T)
	}
w.s <- list()
for (i in 1:length(meanN.0)) {
	w.s[[i]] <- cov.wt(cbind(meanN.0.s[[i]]$statistics[1:12],meanE.0.s[[i]]$statistics[1:12]),wt=as.vector(by(data.0[[i]]$wt,data.0[[i]]$country,mean,na.rm=T))[1:12],cor=T)

	}
	
lapply(meanN.na,  function(x) {xtable(rbind(x[1:12])) })
lapply(meanE.na,  function(x) {xtable(rbind(x[1:12])) })
xtable(rbind(as.vector(by(data.0[[i]]$wt,data.0[[i]]$country,mean,na.rm=T))[1:12]))

lapply(w,function(x) {print (x$cor)})


w.na <- list()
for (i in 1:length(meanN.0)) {
	w.na[[i]] <- cov.wt(cbind(meanN.na[[i]][1:12],meanE.na[[i]][1:12]),wt=as.vector(by(data.NA[[i]]$wt,data.NA[[i]]$country,mean,na.rm=T))[1:12],cor=T)

	}
w.na.s <- list()
for (i in 1:length(meanN.0)) {
	w.na.s[[i]] <- cov.wt(cbind(meanN.na.s[[i]]$statistics[1:12],meanE.na.s[[i]]$statistics[1:12]),wt=as.vector(by(data.NA[[i]]$wt,data.NA[[i]]$country,mean,na.rm=T))[1:12],cor=T)

	}
xtable(rbind(as.vector(by(data.NA[[i]]$wt,data.NA[[i]]$country,mean,na.rm=T))[1:12]))

### Print the N
printn <- function(x) { xtable(rbind(by(cbind(x$N,x$E),x$country,function(y) { y <- na.exclude(y); nrow(y)})[1:12]))}

lapply(data.0, printn)
lapply(data.NA,printn)

lapply(data.0,function(x) { cor(x$N,x$E,use="complete")})
lapply(data.0,function(x) { co <- cov.wt(cbind(x$N,x$E),wt=x$wt,cor=T); print (co$cor)})
lapply(data.NA,function(x) { cor(x$N,x$E,use="complete")})
lapply(data.NA,function(x) { x <- na.exclude(x) ;co <- cov.wt(cbind(x$N,x$E),wt=x$wt,cor=T); print (co$cor)})

## compute proportion satisfied, by country
## ignore weights
meanE.na <- lapply(data.NA, function(x) {
  by(x$E,x$N,mean,na.rm=T) } )
meanE.0 <- lapply(data.0, function(x) {
  by(x$E,x$N,mean,na.rm=T) } )


lapply(meanE.0,  function(x) {xtable(rbind(x[1:2])) })
lapply(meanE.na,  function(x) {xtable(rbind(x[1:2])) })

## Now compute the proportion satisfied, by country
## taking into account survey prop weight

meanE.na.s <- lapply(data.na.s, function(x) {
  svyby(x$variables$E,x$variables$N,design=x,svymean,na.rm=T)
}
                   )

meanE.0.s <- lapply(data.0.s, function(x) {
  svyby(x$variables$E,list(x$variables$country,x$variables$N),design=x,svymean,na.rm=T)
}
                  )



## break down tbl 6 by country
## Percentage, by country, expressing dissatisfaction with EU democracy,
##   before and after order change.


## we would expect order effects some resp more than others 



## set up whether the national satisfied -> eur dissat are a result of cat 2 to 3 variation or not 1 to 3. 
## how many have a WORSE evaluation of the EU than national? (NEdiff is negative)
lapply(data.NA,function(x) { sum(x$NEdiff <0 ,na.rm=T) / sum(x$N==0,na.rm=T) } )
lapply(data.0,function(x) { sum(x$NEdiff <0 ,na.rm=T) / sum(x$N==0,na.rm=T) } )

svyby(data.NA.s, )

## how much MORE did these change from 2-3 than from 3-4 or 1-2?
## first separated by whether satisfied with national democracy, by country
xtable(as.table(abs(ftable(meanE.na.byCountry[[3]])-ftable(meanE.na.byCountry[[2]])) - abs(ftable(meanE.na.byCountry[[4]])-ftable(meanE.na.byCountry[[3]]))))
xtable(as.table(abs(ftable(meanE.na.byCountry[[3]])-ftable(meanE.na.byCountry[[2]])) - abs(ftable(meanE.na.byCountry[[2]])-ftable(meanE.na.byCountry[[1]]))))
xtable(as.table(ftable(meanE.na.byCountry[[2]]) - ftable(meanE.na.byCountry[[1]])))
xtable(as.table(ftable(meanE.na.byCountry[[4]]) - ftable(meanE.na.byCountry[[3]])))


## now whether voted for any party in power nationally
lapply(meanE.0.byCountryAndSupport, function(x) xtable(as.table(x)) )
lapply(meanE.na.byCountryAndSupport, function(x) xtable(as.table(x)))

xtable(as.table(abs(ftable(meanE.na.byCountryAndSupport[[3]])-ftable(meanE.na.byCountryAndSupport[[2]])) - abs(ftable(meanE.na.byCountryAndSupport[[4]])-ftable(meanE.na.byCountryAndSupport[[3]]))))
xtable(as.table(abs(ftable(meanE.na.byCountryAndSupport[[3]])-ftable(meanE.na.byCountryAndSupport[[2]])) - abs(ftable(meanE.na.byCountryAndSupport[[2]])-ftable(meanE.na.byCountryAndSupport[[1]]))))

## pol awareness : those aware or not (is what drives them a subset of resp)
## use 'political discussion' -- this var is noted in readData, but
## used here in the subsetting.

xtable(as.table(abs(abs(ftable(meanE.na.byEdu[[3]])-ftable(meanE.na.byEdu[[2]])) - abs(ftable(meanE.na.byEdu[[4]])-ftable(meanE.na.byEdu[[3]])))))
xtable(as.table(abs(ftable(meanE.na.byCountryAndSupport[[3]])-ftable(meanE.na.byCountryAndSupport[[2]])) - abs(ftable(meanE.na.byCountryAndSupport[[2]])-ftable(meanE.na.byCountryAndSupport[[1]]))))

xtable(as.table(abs(ftable(meanE.na.media[[3]]) - ftable(meanE.na.media[[2]]))))
xtable(as.table(abs(ftable(meanE.na.newsp[[3]][1:4]) - ftable(meanE.na.newsp[[2]][,1:4]))))
xtable(as.table(abs(ftable(meanE.na.media[[3]]) - ftable(meanE.na.media[[2]]))))



 h2 <- lapply(data.NA, function (x) { subset(x, (country=="UNITED KINGDOM" | country=="DENMARK") & Nat == "VERY SATISFIED") })



## if anderson is right , regime support ought to matter
## the inbetween ones good opinion of both eu and nat
## both recognize that everything eh eu does comes at expense of nat


## anchoring (those who are very sat with dem at nat level), those people
## are unlikely to say "very satisifed"  

## if you have a poor opinion of both, support will be low but not as low
## as a nationalist. 


############### Use difference between N and E
############### for each of 4 groups

lapply(data.NA, function(x) { by(x, list(x$country,x$trueSupporter), function(x) mean(x$NEdiff,na.rm=T)) }) -> trueSupporters.na
lapply(data.0, function(x) { by(x, list(x$country,x$trueSupporter), function(x) mean(x$NEdiff,na.rm=T)) }) -> trueSupporters.0

lapply(data.NA, function(x) { by(x, list(x$country,x$trueHater), function(x) mean(x$NEdiff,na.rm=T)) }) -> trueHaters.na
lapply(data.0, function(x) { by(x, list(x$country,x$trueHater), function(x) mean(x$NEdiff,na.rm=T)) }) -> trueHaters.0


lapply(data.NA, function(x) { by(x, list(x$country,x$gWinner), function(x) mean(x$NEdiff,na.rm=T)) }) -> gWinner.na
lapply(data.0, function(x) { by(x, list(x$country,x$gWinner), function(x) mean(x$NEdiff,na.rm=T)) }) -> gWinner.0

lapply(data.NA, function(x) { by(x, list(x$country,x$sLoser), function(x) mean(x$NEdiff,na.rm=T)) }) -> sLoser.na
lapply(data.0, function(x) { by(x, list(x$country,x$sLoser), function(x) mean(x$NEdiff,na.rm=T)) }) -> cond2.0


##################### Same thing, now with pct sat E
##################### instead of Difference
lapply(data.NA, function(x) { by(x, list(x$country,x$trueSupporter), function(x) mean(x$E,na.rm=T)) }) -> trueSupporters.pctsat.na
lapply(data.0, function(x) { by(x, list(x$country,x$trueSupporter), function(x) mean(x$E,na.rm=T)) }) -> trueSupporters.pctsat.0

lapply(data.NA, function(x) { by(x, list(x$country,x$trueHater), function(x) mean(x$E,na.rm=T)) }) -> trueHaters.pctsat.na
lapply(data.0, function(x) { by(x, list(x$country,x$trueHater), function(x) mean(x$E,na.rm=T)) }) -> trueHaters.pctsat.0


lapply(data.NA, function(x) { by(x, list(x$country,x$sLoser), function(x) mean(x$E,na.rm=T)) }) -> sLoser.pctsat.na
lapply(data.0, function(x) { by(x, list(x$country,x$sLoser), function(x) mean(x$E,na.rm=T)) }) -> sLoser.pctsat.0

lapply(data.NA, function(x) { by(x, list(x$country,x$gWinner), function(x) mean(x$E,na.rm=T)) }) -> gWinner.pctsat.na
lapply(data.0, function(x) { by(x, list(x$country,x$gWinner), function(x) mean(x$E,na.rm=T)) }) -> gWinner.pctsat.0




lapply(trueSupporters.na, function(x) {xtable(as.table(ftable(x)))})
lapply(trueSupporters.0,  function(x) {xtable(as.table(ftable(x)))})


## top / bottom groups
## summarize something about the DK

## focuses different respondents on what dem means
## different components of the question primed by national question

## one is regime support (which parties in power)
## one is support for integration 
## one of procedural 


## postmaterial questions about dem procedure inclusiveness
## you might imagine that pre treatment surveys that if people
## respond to eu democracy based on values about procedure
#### relative good predictor of eu question
##
##
## introduction of national question or subtraction of this stuff


## postmat who like the regime and those who don't
## then it's not the regime support driving it
## then it's because the EU question isn't in the middle of the we like the eu batt
## indicator of resp regime support
## for each survey, if resp is in country a
## 
#Mike: I wanted to work a little bit on the apparent puzzle of individual-level correlations between EUSat and NATSat decreasing with the treatment but national aggregate-level correlations increasing.
#I suspect there could be some changes in national baselines that are affecting the individual-correlations between the pre- and post-treatment.  An easy way to see if that is what is causing the discrepancy
#is to run a regress EUSat on NATSat for each survey (40, 41, 41.1, and 42), the coefficients on NATSat should follow the correlations how have in table 1. Then do the same regressions with national dummies. 
#We then can look at the coefficients on NATSat and see if the same order of correlation strength across surveys persists.   Does that make sense?


## cps 2005 EU question "there actually is some part" that
## rohrschneider claim Should go down after frame
## don't say benefits became less important over time,
## without accounting for framing effect that made it look that way
source("~/apsrtable.R")
apsrtable(models=lapply(
            data.0, function(x) {
              (lm(E~N,data=x,model=T))})
          ,digits=2, star=.05, z=FALSE, align="left") 
apsrtable(models=lapply(data.0, function(x) {
  (lm(E~N+country,data=x)) })
          ,digits=2, star=.05, z=FALSE, align="left") 

shortlist <- list(data.0[[1]],data.0[[2]],data.0[[3]],data.0[[4]],data.0[[5]])
apsrtable(models=lapply(
            shortlist, function(x) {
              (glm(E~N+country*regimeSupport1,data=x,model=T,family=binomial("probit")))})
          ,digits=2, star=.05, z=FALSE, align="left") 


z <- outer(x,y, function(x,y) {
  2*pi*x*y*
    (1/(sqrt(1-cor(x,y)^2))*
     exp(
## create pooled time series with change variable

######## dataListToPooledDF()
## makes a big pooled data frame with a change variable
## arguments:  a data list and the element at which change goes from 0 to 1
## returns:    a data.frame
dataListToPooledDF <- function(datalist,change=3) {
  df <- data.frame()
  n <- length(datalist)
  commonNames <- function(datalist,n){
    cnames <- names(datalist[[1]]);
    for (i in 2:n) {
      cnames <- intersect(cnames,names(datalist[[i]]))
    }
    return(cnames)
  }
  cnames <- commonNames(datalist,n)
  for (i in 1:n) {
    curitem <- (datalist[[i]][,cnames])
    
    if (i < change) {
      curitem <- cbind(curitem,change=FALSE);
    } else {
      curitem <- cbind(curitem,change=TRUE);
    }
    df <- rbind(df,curitem)
  }
  return(df)
}
shortlist <- list(data.NA[[3]],data.NA[[4]])
Pooled <- dataListToPooledDF(shortlist,2)


m2 <- (glm(E~N+country*change,data=Pooled,model=T,family=binomial("probit")))
m1 <- glm(E~N+country*change*regimeSupport1,data=Pooled,family=binomial("probit"))

apsrtable(list(m1,m2))

m3 <- glm(E~N*regimeSupport1*country*change, data=Pooled, model=TRUE)

mm <- lapply(
            shortlist, function(x) {
              (glm(E~
                   N*country +
                   regimeSupport1 +
                   ben
                   ,data=x,model=T,family=binomial("probit")))})
apsrtable(models=mm
          ,digits=2, star=.05, z=FALSE, align="left") 


justn <- lapply(
            shortlist, function(x) {
              (glm(E~N,
                   data=x,model=T,family=binomial("probit")))})
nplus <- lapply(
            shortlist, function(x) {
              (glm(E~
                   N+
                   regimeSupport1 +
                   ben,
                   data=x,model=T,family=binomial("probit")))})
