####################################################
## Loads giant stata files of EB 40-42
##   The Satisfaction with EU Democracy question
##   moves from far apart to sequential in 41-41.1
##
##    39    : V21,V89
##    40   Oct-Nov 1993 Q3, Q37 : V20,V89
##    41   Mar     1994 Q2, Q25 : V37,V84
##    -------------------------
##    41.1 Jun-Jul 1994 Q10,Q11 : V54,V55
##    42   Nov-Dec 1994 21A,21B : V58,V59
##    43
##    44   
##
############################### mjm 2007-07 #######

## Also contains supplemental functions for cleaning a LIST of dataframes
## with common (where possible) names for variables and cleaning different
## types of missing data -- coded "<NA>" or "DK" in datasets.
##
## Actual subset / variable selection is left in main code.

### Also deal with parties in government:
## Country   Party Codes in EB

#The brackets for the Netherlands and for Italy indicate that there was a change in government in 1994.  In the Netherlands, the election was in May and the new government was formed in August.  In Italy, the election was in March and the new government formed in May.  EB 41 was in the field from March-June.  EB 41.1 was in the field from June-July.   So, for EB 41.1, I think we can safely use the post-election parties (in brackets) for Italy.  I'm not sure exactly what to do for the Netherlands.  Obviously, voters could have guessed that the PvDA (party=20) would be in government again.  But I really don't think we can use the new government for EB 41 and probably not for EB 41.1.  So, I guess I would lean toward using only the pre-election government parties for the Netherlands. 

#Belgium 20, 21, 60, 61
#Denmark 20, 40, 41
#Netherlands   20, 63 [20, 22, 70]
#Luxembourg 20, 60
#Italy 19, 20, 61 [62, 71, 75, 80]
#Germany 40, 60
#Ireland 15, 20, 30
#France 60, 70, 71, 72
#Spain 20
#Greece 20
#Portugal 30
#UK 60


doRegimeSupport <- function(data,itLast="new",nlLast="old",itNow="new",nlNow="old"){
	 attach(data)

  data$regimeSupport1 <- 
    (country=="BELGIUM" & (natPartyLast==20 | natPartyLast==21 | natPartyLast==60 | natPartyLast==61)) |
  (country=="DENMARK" & (natPartyLast==20 | natPartyLast==40 | natPartyLast==41)) |
  (country=="NETHERLANDS" & (natPartyLast==20 | natPartyLast==63 )) |
  (country=="LUXEMBOURG" & (natPartyLast==20 | natPartyLast==60)) |
  (country=="ITALY" & (natPartyLast==62 | natPartyLast==71 | natPartyLast==75 | natPartyLast== 80)) |
  (country=="WEST GERMANY" & (natPartyLast==40 | natPartyLast==60)) |
  (country=="IRELAND" & (natPartyLast==15 | natPartyLast==20 | natPartyLast==30)) |
  (country=="FRANCE" & (natPartyLast==60 | natPartyLast==70 | natPartyLast==71 | natPartyLast==72)) | 
  (country=="SPAIN" & (natPartyLast==20)) | 
  (country=="GREECE" & (natPartyLast==20)) | 
  (country=="PORTUGAL" & natPartyLast==30) | 
  (country=="UNITED KINGDOM" & natPartyLast==60) 
  
  data$regimeSupport2 <- 
    (country=="BELGIUM" & (natPartyNow==20 | natPartyNow==21 | natPartyNow==60 | natPartyNow==61)) |
  (country=="DENMARK" & (natPartyNow==20 | natPartyNow==40 | natPartyNow==41)) |
  (country=="NETHERLANDS" & (natPartyNow==20 | natPartyNow==63)) |
  (country=="LUXEMBOURG" & (natPartyNow==20 | natPartyNow==60)) |
  (country=="ITALY" & (natPartyNow==62 | natPartyNow ==71 | natPartyNow==75 | natPartyNow== 80)) |
  (country=="WEST GERMANY" & (natPartyNow==40 | natPartyNow==60)) |
  (country=="IRELAND" & (natPartyNow==15 | natPartyNow==20 | natPartyNow==30)) |
  (country=="FRANCE" & (natPartyNow==60 | natPartyNow==70 | natPartyNow==71 | natPartyNow==72)) | 
  (country=="SPAIN" & (natPartyNow==20)) | 
  (country=="GREECE" & (natPartyNow==20)) | 
  (country=="PORTUGAL" & natPartyNow==30) | 
  (country=="UNITED KINGDOM" & natPartyNow==60)

if(itLast=="new"){
		 data$regimeSupport1 <- ifelse((country=="ITALY" & (natPartyLast==62 | natPartyLast==71 | natPartyLast==75 | natPartyLast== 80)),TRUE,data$regimeSupport1)

} else if (itLast=="old") {
		data$regimeSupport1 <- ifelse((country=="ITALY" & (natPartyLast==19 | natPartyLast==20 | natPartyLast==61 )),TRUE, data$regimeSupport1)
}
if(itNow=="new") {
		 data$regimeSupport2 <- ifelse((country=="ITALY" & (natPartyNow==62 | natPartyNow==71 | natPartyNow==75 | natPartyNow== 80)) ,TRUE, data$regimeSupport2)
} else if (itNow=="old") {
		 data$regimeSupport2 <- ifelse((country=="ITALY" & (natPartyNow==19 | natPartyNow==20 | natPartyNow==61 )) ,TRUE, data$regimeSupport2)
}
if(nlLast=="new") {
		data$regimeSupport1 <- ifelse((country=="NETHERLANDS" & (natPartyLast==20 | natPartyLast==22 | natPartyLast==70 )) , TRUE ,data$regimeSupport1)

	} else if (nlLast=="old") {
			data$regimeSupport1 <- ifelse((country=="NETHERLANDS" & (natPartyLast==20 | natPartyLast==63 )) ,TRUE, data$regimeSupport1)
		}
if(nlNow =="new") {
	data$regimeSupport2 <- ifelse((country=="NETHERLANDS" & (natPartyNow==20 | natPartyNow==22 | natPartyNow==70 )) , TRUE,data$regimeSupport2) 
	} else if(nlNow=="old") {
	data$regimeSupport2 <- ifelse((country=="NETHERLANDS" & (natPartyNow==20 | natPartyNow==63 )) , TRUE, data$regimeSupport2)
	}
	
	detach(data)
        cat(paste("\nItaly regime support done with\n\t",itLast,"parties in the last election and\n\t",itNow,"parties at present.\nNetherlands regime support with\n\t",nlLast,"in the last election and \n\t",nlNow,"parties now."))
    data$gWinner       <- ifelse((data$regimeSupport1==T & data$N==T), T, F)
    data$sLoser        <- ifelse((data$regimeSupport1==F & data$N==F), T, F)
    data$trueHater     <- ifelse((data$regimeSupport1==F & data$N==T), T, F)
    data$trueSupporter <- ifelse((data$regimeSupport1==T & data$N==F), T, F)
return(data) 

}


.simpleCap <- function(x) {
  s <- strsplit(x, " ")[[1]]
  paste(toupper(substring(s, 1,1)), tolower(substring(s, 2)), sep="", collapse=" ")
}

## Clean these subsetted dataframes:
##   turn values "<NA>" and "DK" to missing
##   preserve DK information as natDK and euDK
## set up whether the national satisfied -> eur dissat are a result of 
##   cat 2 to 3 variation or not 1 to 3. 
## make variable: NEdiff: eur-nat : negative values mean bigger change
## ---- OK to use "unclass" because we trust the storage of the factor values/labels.
## Requires gdata package - install.packages("gdata")
## Recode EU and Nat factors as 1/0
## Argument "dk" : how to handle DK (defaults to NA)
## try also treating as 0
cleanNA <- function(data,dk=NA){
  ## later survey use mixed case for country names. They all should.
  data <- unknownToNA(data,"<NA>",warning=T)  
  data$N = dk; data$E = dk ; # initialize the N and E summaries
  ## get the vector of 4 factor labels starting with "Very Sat"
  ## May be internalcode 1 or 2 or 3; DK/NA moves around.
  ## Do this for case insensitivity without casefolding everything.
  indices <- c(which(substr(levels(data$Nat),1,1)=="V"):(which(substr(levels(data$Nat),1,1)=="V")+3))
  codes <- levels(data$N)[indices]
   levels(data$Nat)[indices] <- toupper(levels(data$Nat)[indices])
  ## just in case internal codes are different for E.
  indices <- c(which(substr(levels(data$EU),1,1)=="V"):(which(substr(levels(data$EU),1,1)=="V")+3))
  codes <- levels(data$EU)[indices]
  levels(data$EU)[indices] <- toupper(levels(data$EU)[indices])
  
  data$N[data$Nat=="VERY SATISFIED"|data$Nat=="FAIRLY SATISFIED"] <- T
  data$E[data$EU=="VERY SATISFIED"|data$EU=="FAIRLY SATISFIED"] <- T;
  data$N[data$Nat=="NOT VERY SATISFIED"|data$Nat=="NOT AT ALL SATISFIED"] <- F;
  data$E[data$EU=="NOT VERY SATISFIED"|data$EU=="NOT AT ALL SATISFIED"] <- F
  data$N[data$Nat=="DK"] <- dk;
  data$E[data$EU=="DK"] <- dk;
  data$int = dk; # initialize interest in EC summary
  data$int[data$interestEC=="A GREAT DEAL"|data$interestEC=="TO SOME EXTENT"] <- T;
  data$int[data$interestEC=="NOT MUCH"| data$interestEC=="NOT AT ALL"] <- F;
  data$int[data$interestEC=="DK"] <- dk;
  data$natDK <- ifelse(data$Nat=="DK",1,0)
  data$euDK <- ifelse(data$EU=="DK",1,0)
  data <- unknownToNA(data,"DK")
  data$country <- drop.levels(data$country,reorder=F)
  data$Nat <- drop.levels(data$Nat,new.order=c("VERY SATISFIED","FAIRLY SATISFIED","NOT VERY SATISFIED","NOT AT ALL SATISFIED"))
  data$EU <- drop.levels(data$EU,new.order=c("VERY SATISFIED","FAIRLY SATISFIED","NOT VERY SATISFIED","NOT AT ALL SATISFIED"))

  data$NEdiff <- unclass(data$Nat)-unclass(data$EU)
  if(length(data$mediaUse) >0 ){
  		data$mediaHigh <- NA;
  		data$mediaHigh[data$mediaUse=="++ " | data$mediaUse=="+++"] <- TRUE;
  		data$mediaHigh[data$mediaUse=="-- " | data$mediaUse=="---"] <- FALSE;
  	}
  data$Education <- NA;
  data$Education[data$ageEdu > 18] <- T;
  data$Education[data$ageEdu <=18] <- F
  bcodes <- c(
              which(substr(levels(data$benefit),1,1)=="B"),
              which(toupper(substr(levels(data$benefit),1,2))=="NO")
              )
  levels(data$benefit)[bcodes] <- c("B","N")
  data$ben <- ifelse(data$benefit=="B",T,F);
  data$noben <- ifelse(data$benefit=="N",T,F)
  data$benefit <- drop.levels(data$benefit,new.order=c("B","N"))

  return(data)
}


rm(eb40,eb411,eb41,eb42)
library(foreign)
library(gdata) # provides unknownToNA
read39 <- function() {
  data <- read.dta("eb39.dta")
  return(data)
}

read40 <- function() {
  Dataset <- read.dta("eb40.dta")

  ## variables of interest:
  ## v20 SWDnat
  ## v89 SWD-EU
  ##
  ## v19 life sat
  ## v30 "convince friends"
  ##      1 often 2 time to time 3 rarely 4 never
  ## v31 "frequency discuss pol with friends"
  ##      1 freq 2 occas 3 never
  ##
  ## v32-33 "country's goals"
  ##        1: order 2: give people more say in gov dec
  ##        3: fight rising prices 4: protect freedom of speech 
  ##
  ## V548 vote intention party tomorrow
  ## V549 vote nat last election
  ###### news/awareness items
  ## v35 newspaper use
  ## v34 news on television
  ## v36 news on the radio
  ##     1.  Everyday                                                                 
  ##     2.  Several times a week
  ##     3.  Once or twice a week
  ##     4.  Less often
  ##     5.  Never
  ## v37 heard or read about EC, EEC, pol, or inst
  ##     1 yes 2 no 3 dk
  ## v38 interest in ec politics
  ##     1 lots 4 none 5 dk
  ## v39 EC knowledge-general
  ##     1 lots 4 none 5 dk
  ## V633 media use index (1 or 2)
  #### edu
  ## V555 Age Education 
  ##  98 = still studying
  ## V562 Age 6 groups

  
  # weights are 5-17:
  Dataset <- unknownToNA(Dataset,"<NA>")
  #Dataset <- unknownToNA(Dataset,"DK")
  cat ("\nEB40 loaded.\n");
  return(Dataset)
}


read41 <- function() {
  Dataset <- read.dta("eb41.dta")
  ## variables of interest
  ## V37 SWDnat
  ## V36 life sat
  ## V39 convince friends
  ## V38 "frequency discuss pol with friends"
  ## V84 SWD-EU
  ## V422 vote intention party tomorrow
  ## V423 vote nat last election
  ## V59 interest in european politics
  ###### news/awareness items
  ## v57 newspaper use
  ## v56 news on television
  ## v58 news on the radio
  ##     1.  Everyday                                                               
  ##     2.  Several times a week
  ##     3.  Once or twice a week
  ##     4.  Less often
  ##     5.  Never
  ## V532 media use index
  ## 
  #### edu
  ## V427 Age education
  ## 	00= still studying
  ## V433 age recoded 6 gr : 

  #Weights <- Dataset[,6:34]
  
  ##################### weights are in V5-33: ########
  ## V5      "NATION I (UNITED KINGDOM)"
  ## V6      "W2: WEIGHT SPECIAL UNITED KINGDOM (NAT)"
  ## V7      "NATION II (GB AND NORTHERN IRELAND)"
  ## V8      "W3: WEIGHT RESULT FROM TARGET (NAT)"
  ## V9      "W4: WEIGHT ADJSTD TO STANDARD SIZE (NAT)"
  ## V10     "NATION III (UNITED GERMANY)"
  ## V11     "W1: WEIGHT SPECIAL GERMANY (NAT)"
  ## V12     "W5: WEIGHT EURO 6 (NAT)"
  ## V13     "W6: WEIGHT EURO 10 (NAT)"
  ## V14     "W7: WEIGHT EURO 12 (NAT)"
  ## V15     "W8: WEIGHT EUROPE 12 + (NAT)"
  ## V16     "W3_1: WEIGHT NORWAY"
  ## V17     "W3_2: WEIGHT FINLAND"
  ## V18     "WN_1: WEIGHT SPECIAL GERMANY NAT+NON-NAT"
  ## V19     "WN_2: WEIGHT SPECIAL UK (NAT + NON-NAT)"
  ## V20     "WN_3: WEIGHT RESLT FR TARGET NAT+NON-NAT"
  ## V21     "WN_4: WEIGHT ADJSTD STD SIZE NAT+NON-NAT"
  ## V22     "WN_5: WEIGHT EURO 6 (NAT + NON-NAT)"
  ## V23     "WN_6: WEIGHT EURO 10 (NAT + NON-NAT)"
  ## V24     "WN_7: WEIGHT EURO 12 (NAT + NON-NAT)"
  ## V25     "WN_8: WEIGHT EUROPE 12 + (NAT + NON-NAT)"
  ## V26     "WO_1: WEIGHT SPECIAL GER NAT+NON-NAT+OVR"
  ## V27     "WO_2: WEIGHT SPECIAL UK NAT+NON-NAT+OVER"
  ## V28     "WO_3: WEIGHT RSLT FR TGT NAT+NON-NAT+OVR"
  ## V29     "WO_4: WEIGHT ADJ STD SIZ NAT+NONNAT+OVER"
  ## V30     "WO_5: WEIGHT EURO 6 (NAT+NON-NAT+OVER)"
  ## V31     "WO_6: WEIGHT EURO 10 (NAT+NON-NAT+OVER)"
  ## V32     "WO_7: WEIGHT EURO 12 (NAT+NON-NAT+OVER)"
  ## V33     "WO_8: WEIGHT EUROPE 12+ NAT+NON-NAT+OVER"
  Dataset <- unknownToNA(Dataset,"<NA>")
 # Dataset <- unknownToNA(Dataset,"DK")
  cat ("\nEB41 loaded.\n");

  return(Dataset)
}


read411 <- function() {
  Dataset <- read.dta("eb411.dta")


  ## V54 SWDnat
  ## V55 SWD-EU
  ##
  ## V173-175 "most important political problem"
  ##    01.  a) (NATIONAL ISSUE NUMBER 1)
  ##    02.  b) Fighting unemployment
  ##    03.  c) Securing stable prices
  ##    04.  d) (NATIONAL ISSUE NUMBER 2)
  ##    05.  e) Furthering the political unification of Western
  ##            Europe
  ##    06.  f) Solving the immigration problems
  ##    07.  g)(NATIONAL ISSUE NUMBER 3)
  ##    08.  h) Reducing of agricultural surpluses
  ##    09.  i) Protecting of the environment
  ##    10.  j) (NATIONAL ISSUE NUMBER 4)
  ##    11.  k) Fighting crime
  ##
  ## V177 / 180 / 183 "problem dealt with at level today"
  ## V178 / 181 / 184 "most appropriate level"
  ##    1 regional 2 national 3 european
  ##
  ##
    ###### domestic politics
  ## V299 Party attachment 
  ## V305 Nat vote intention tomorrow
  ## V307 Vote party east election
  ## V47 interest in politics
  ## V48 interest in european politics
  ####### edu
  ## V328 age recoded 6 gr
  ## V323 age education raw
  ## V324 age edu recoded
  
  
  Dataset <- unknownToNA(Dataset,"<NA>")
#  Dataset <- unknownToNA(Dataset,"DK")
    cat ("\nEB41.1 loaded.\n");

  return(Dataset)
}
read42 <- function(){
	 Dataset <- read.dta("eb42.dta")
           cat ("\nEB42 loaded.\n");

  return(Dataset)
  ## V58 national dem
  ## V59 eur dem
  ## 
  ## V461/462 vote intention tomorrow / last election
  ## 
   # V56   Q19 POLITICAL INTEREST 
   # V57   Q20 INTEREST IN EUROPEAN POLITICS      
  ## V465-6 age education and recoded
  ## V472 age recoded 
  
  
  ### news media
  ## V45, 46 47 : TV, newspaper, radio
  ## V538 media use
         
	}

read43 <- function(){
  data <- read.dta("eb431.dta")
             cat ("\nEB43 loaded.\n");

  return(data)
}

###### listToDotplotDF()
## take a list of "by" objects and combine them into a data.frame
## suitable for dot plot.
## Arguments: thelist:list of lapply'd data (proportions)
##            change: which one contains 'post-change' effect
##            names: varnames. second one is always byVar. lazy.
##            byLabels: labels for categories of byVar.
## Returns: a data frame of length list * itemsinlist
##   suitable for dotplot().
listToDotplotDF <- function(thelist,
                            change=3,
                            names=c("country","byVar","pctSat","change"),
                            byLabels=c("N.Dissatisfied","N.Satisfied"),
                            noBy=F) {

  if(noBy==TRUE) { thelist <- lapply(thelist, as.table)
    } else { thelist <- lapply(thelist, ftable) }
  n <- length(thelist)
  df <- data.frame()
  
  for (i in 1:n) {
    curitem <- data.frame(thelist[[i]])
    
    if (i < change) {
      curitem <- cbind(curitem,change=FALSE);
    } else {
      curitem <- cbind(curitem,change=TRUE);
    }
    df <- rbind(df,curitem)
  }
  cat(paste("\n",n,"list items condensed into data.frame with change at group",change,"\n"))
  names(df) <- names;
  if (!is.null(df$byVar)) levels(df$byVar) <- byLabels;
  return(df)
}

ltheme <- canonical.theme(color = FALSE)     ## in-built B&W theme for paper  
#ltheme <- col.whitebg    ## color theme for poster!
ltheme$strip.background$col <- "lightgrey" ## change strip bg
lattice.options(default.theme = ltheme)      ## set as default
rm(ltheme)

## subset and rename the items of interest
##  Discard obs where not in EU12 here
## To change subsetting switch the first part of the selector
##  (Rows)  to $V12 $V13 $V14 or $V15 on all
## pol awareness : those aware or not (is what drives them a subset of resp)
## use 'political discussion' -- this var is noted in readData, but
## used here in the subsetting.
##
#### I have tried to make these as easy to read as possible (raw varnames
#### followed by what they are renamed to, in sensible groups)
prepareDataList <- function(do.all=FALSE){
  # swd.38 <- eb38[eb38$V14!=0,c("V19" ) ]# does not ask EC dem sat!
  if(do.all==TRUE) { eb39 <- read39();
  swd.39  <-  eb39[eb39$V14!=0,c("V21","V89",
                     "V14","V4","V5",
                     "V674","V675","V102","V23","V105",
                     "V750","V26","V27","V28",
                     "V683","V689")]
  names(swd.39) <- c("Nat","EU",
                     "wt","id","country",
                     "natPartyNow","natPartyLast","interestEC","discuss","benefit",
                     "mediaUse","tv","newspaper","radio",
                     "ageEdu","age")
  rm(eb39);
  
  eb40 <- read40();
  swd.40  <-  eb40[eb40$V14!=0,c("V20","V89",
                     "V14","V4","V5",
                     "V548","V549","V38","V31","V65",
                     "V633","V34","V35","V36","V555","V562")]
  names(swd.40) <- c("Nat","EU",
                     "wt","id","country",
                     "natPartyNow","natPartyLast","interestEC","discuss","benefit",
                     "mediaUse","tv","newspaper","radio",
                     "ageEdu","age")
  rm(eb40)
                   }
  eb41 <- read41()
  swd.41  <-  eb41[eb41$V14!=0,c("V37","V84",
                     "V14","V4","V5",
                     "V422","V423","V59","V38","V62",
                     "V532","V56","V57","V58",
                     "V427","V433","V430","V534","V446")]
  names(swd.41) <- c("Nat","EU",
                     "wt","id","country",
                     "natPartyNow","natPartyLast","interestEC","discuss","benefit",
                     "mediaUse","tv","newspaper","radio",
                     "ageEdu","age","sex","occ1","occ2")
  swd.41 <- within(swd.41, {
  age <- levels(age)[age]
  age <- gsub("\\sYEARS","",age)
  age <- gsub("\\sAND OLDER","+",age)
  age <- factor(age, ordered=TRUE)
})
  rm(eb41)
  
  eb411 <- read411();
  swd.411 <- eb411[eb411$V14!=0,c("V54","V55",
                     "V14","V4","V5",
                     "V305","V307","V48","V47","V51",
                     "V323","V328","V325","V366","V341")]
  names(swd.411) <- c("Nat","EU",
                      "wt","id","country",
                      "natPartyNow","natPartyLast","interestEC","interestPol","benefit",
                      "ageEdu","age","sex","occ1","occ2")
swd.411 <- within(swd.411, {
  age <- levels(age)[age]
  age <- gsub("\\sYEARS","",age)
  age <- gsub("\\sAND OLDER","+",age)
  age <- factor(age, ordered=TRUE)
  #occ <- ifelse(occ1
})
  rm(eb411)
  if (do.all==TRUE) {
  eb42 <- read42();
  swd.42  <-  eb42[(eb42$V15!=0& eb42$V5!="EAST GERMANY"),c("V58","V59",
                     "V15","V4","V5",
                     "V461","V462","V57","V56","V65",
                     "V538","V45","V46","V47",
                     "V465","V472","V475")]
  names(swd.42) <- c("Nat","EU",
                     "wt","id","country",
                     "natPartyNow","natPartyLast","interestEC","interestPol","benefit",
                     "mediaUse","tv","newspaper","radio",
                     "ageEdu","age","sex")
  rm(eb42)
  
  eb43 <- read43();
  swd.43  <-  eb43[(eb43$V15!=0 & eb43$V5 != "Germany East"),c("V44","V45",
                     "V15","V4","V5",
                     "V434","V435","V85","V39","V51",
                     "V495","V41","V42","V43",
                     "V438","V444")]
  names(swd.43) <- c("Nat","EU",
                     "wt","id","country",
                     "natPartyNow","natPartyLast","EUKnow","discuss","benefit",
                     "mediaUse","tv","newspaper","radio",
                     "ageEdu","age")
  rm(eb43)
}
  datalist <- list(
                   #swd.39,swd.40,
                   swd.41,swd.411
                   #,swd.42,swd.43
                   )
  return(datalist)
}


## This stays here because it is hard coded
## numbers and the arguments for regime support.
## newer/older suveys will change these!
makeSWD <- function(datalist,dk=NA){
  swd.39 <- cleanNA(datalist[[1]],dk)
  swd.40 <- cleanNA(datalist[[2]],dk)
  swd.41 <- cleanNA(datalist[[3]],dk)
  swd.411<- cleanNA(datalist[[4]],dk)
  swd.42 <- cleanNA(datalist[[5]],dk)
  swd.43 <- cleanNA(datalist[[6]],dk)
  ## doRegimeSupport takes arguments itLast,itNow,nlLast,nlNow
  ## that deal with 'support for parties' : in the last election
  ## and at present. Italy defaults to 'new' and nl defaults to 'old'.
  ## which parties these are is documented in readData.R.
  swd.39 <- doRegimeSupport(swd.39,itLast="old",itNow="old")
  swd.40 <- doRegimeSupport(swd.40,itLast="old",itNow="old")
  swd.41 <- doRegimeSupport(swd.41,itLast="old",itNow="old")
  swd.411<- doRegimeSupport(swd.411)
  swd.42 <- doRegimeSupport(swd.42,nlLast="new",nlNow="new")
  swd.43 <- doRegimeSupport(swd.43,nlLast="new",nlNow="new")
  SWDQuestions <- list(swd.39,swd.40,swd.41,swd.411,swd.42,swd.43)
  ### Now do the interaction of democracy / gov support
  return(SWDQuestions)
}
makeSWD.1 <- function(datalist,dk=NA){
  swd.41 <- cleanNA(datalist[[1]],dk)
  swd.411<- cleanNA(datalist[[2]],dk)
  ## doRegimeSupport takes arguments itLast,itNow,nlLast,nlNow
  ## that deal with 'support for parties' : in the last election
  ## and at present. Italy defaults to 'new' and nl defaults to 'old'.
  ## which parties these are is documented in readData.R.
  swd.41 <- doRegimeSupport(swd.41,itLast="old",itNow="old")
  swd.411<- doRegimeSupport(swd.411)
  SWDQuestions <- list(swd.41,swd.411)
  ### Now do the interaction of democracy / gov support
  return(SWDQuestions)
}


## Prepare the datalist 
datalist <- prepareDataList();

data.NA <- makeSWD.1(datalist,dk=NA)
data.0  <- makeSWD.1(datalist,dk=FALSE)
data.NA[[1]]$change=0
data.0[[1]]$change=0
data.NA[[2]]$change=1
data.0[[2]]$change=1

data.NA <- rbind(data.NA[[1]],data.NA[[2]])
data.0 <- rbind(data.0[[1]],data.0[[2]]) 

data.common <- rbind(data.NA[[1]][,which(names(data.NA[[1]]) %in% names(data.NA[[2]]))],
                     data.NA[[2]][, which(names(data.NA[[2]]) %in% names(data.NA[[1]]) )]
                     )
data.common <- merge(data.NA[[1]],data.NA[[2]],all=TRUE)

rm(datalist);

