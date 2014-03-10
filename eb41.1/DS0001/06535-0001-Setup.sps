***************************************************************************
*                                                                          
*              SPSS DATA DEFINITION STATEMENTS FOR ICPSR 6535              
*                                                                          
*         EURO-BAROMETER 41.1: POST-EUROPEAN ELECTION, JUNE-JULY 1994      
*                                3RD ZA EDITION                            
*                                  JUNE, 1998                              
*                                                                          
*  This SPSS setup file contains the following statements:                 
*                                                                          
*  DATA LIST:  Specifies the input data file to be read and assigns the    
*  name, type, decimal specification (if any), and identifies variable     
*  beginning and ending column locations. Users must replace               
*  "file-specification" with a complete statement of the location of the   
*  data file.                                                              
*                                                                          
*  VARIABLE LABELS:  Assigns descriptive labels to variables. Variable     
*  labels and variable names may be identical for certain variables.       
*                                                                          
*  VALUE LABELS:  Assigns descriptive labels to codes in the data file.    
*  Value labels may not be present for all variables in the data file.     
*                                                                          
*  MISSING VALUES:  Declares user-defined missing values. These values     
*  can be treated specially in data transformations, statistical           
*  calculations, and case selection. Missing values may not be present     
*  for all variables in the data file.                                     
*                                                                          
*  NOTE:  Users should modify this SPSS setup to suit their specific       
*  needs. MISSING VALUES and MISSING VALUE RECODE sections have been       
*  marked by SPSS comment statements. To include these sections in a       
*  final SPSS setup, users should remove the SPSS comment statements from  
*  the desired section(s).                                                 
*                                                                          
* COMMENT *****************************************************************
*                                                                          
*   ZA STUDY NUMBER 2491                                                   
*   ICPSR STUDY NUMBER 6535                                                
*   STANDARD EUROBAROMETER SURVEY 41.1                                     
*   POST-EUROPEAN ELECTION, JUNE-JULY 1994                                 
*   FIRST ZA CODEBOOK EDITION, APRIL 1998                                  
*                                                                          
*   CARRIED OUT BY INRA (EUROPE), EUROPEAN COORDINATION OFFICE, ON         
*   REQUEST OF THE EUROPEAN COMMISSION, BETWEEN 11/06 AND 08/07 1994       
*                                                                          
* COMMENT *****************************************************************
*                                                                          
*   THE FOLLOWING SPSS SETUP SECTIONS ARE PROVIDED FOR THE LRECL           
*   VERSION OF THIS DATA COLLECTION:                                       
*                                                                          
*   DATA LIST CONTAINS THE SPSS STATEMENTS WHICH ASSIGN THE VARIABLE       
*   NAMES AND SPECIFY THE BEGINNING AND ENDING COLUMN LOCATIONS FOR        
*   EACH VARIABLE.                                                         
*                                                                          
*   VARIABLE LABELS ASSIGNS VARIABLE LABELS FOR ALL VARIABLES IN THE       
*   DATA FILE.                                                             
*                                                                          
*   VALUE LABELS ASSIGNS VALUE LABELS TO THE VALUES FOUND IN THE DATA      
*   FILE.                                                                  
*                                                                          
*   FOR COUNTRY SPECIFIC CODING AND OTHER REMARKS PLEASE REFER TO THE      
*   RESPECTIVE DOCUMENT STATEMENTS. THESE DOCUMENTS CAN BE RETRIEVED       
*   FROM SYSTEM OR PORTABLE FILES USING THE "DISPLAY DOCUMENTS" IN-        
*   STRUCTION (NOT AVAILABLE UNDER SPSS/PC+).                              
*                                                                          
*   MISSING VALUES CONTAINS SPSS PROGRAM STATEMENTS THAT SPECIFY           
*   DATA VALUES AS MISSING. BEFORE PROCESSING WITH SPSS/PC+ USERS WILL     
*   HAVE TO MODIFY THIS SECTION SINCE NOT MORE THAN ONE MISSING VALUE      
*   (PLUS SYSTEM MISSING) IS ACCEPTED FOR EACH VARIABLE.                   
*                                                                          
*   USERS MAY COMBINE AND MODIFY THESE SECTIONS OR PARTS OF THESE          
*   SECTIONS TO SUIT THEIR SPECIFIC NEEDS.  USERS MAY ALSO NEED TO         
*   CHANGE THE FILE-SPECIFICATION IN THE DATA LIST (FILE HANDLE)           
*   STATEMENT TO AN APPROPRIATE FILENAME SPECIFICATION FOR THEIR SYSTEM.   
*                                                                          
*   THESE SPSS STATEMENTS WERE EITHER PRODUCED OR EDITED BY ZA.            
*   USERS SHOULD CONSULT THE DATA COLLECTION INSTRUMENTS (CODEBOOK         
*   AND/OR QUESTIONNAIRES) FOR FULL QUESTION TEXT.                         
*                                                                          
* COMMENT *****************************************************************
*                                                                          
*   UPDATED 05/04/98                                                       
*                                                                          
* COMMENT******************************************************************
 .                                                                         
DATA LIST FILE='file-specification'                                        
   / V1             1-4                                                    
     V2 TO V3       5-6                                                    
     V4             7-11                                                   
     V5            12-13                                                   
     V6            14-20 (4)                                               
     V7            21-22                                                   
     V8 TO V9      23-36 (4)                                               
     V10           37-38                                                   
     V11 TO V15    39-73 (4)                                               
     V16 TO V58    74-116                                                  
     V59           117-118                                                 
     V60 TO V100   119-159                                                 
     V101          160-161                                                 
     V102          162                                                     
     V103 TO V114  163-186                                                 
     V115 TO V132  187-204                                                 
     V133 TO V176  205-292                                                 
     V177 TO V178  293-294                                                 
     V179          295-296                                                 
     V180 TO V181  297-298                                                 
     V182          299-300                                                 
     V183 TO V211  301-329                                                 
     V212          330-331                                                 
     V213 TO V218  332-337                                                 
     V219          338-339                                                 
     V220 TO V223  340-343                                                 
     V224 V225     344-345                                                 
     V226 TO V280  346-400                                                 
     V281 TO V283  401-403                                                 
     V284          404-405                                                 
     V285          406-407                                                 
     V286 TO V287  408-409                                                 
     V288 TO V298  410-431                                                 
     V299 TO V300  432-433                                                 
     V301          434-435                                                 
     V302 TO V304  436-438                                                 
     V305          439-440                                                 
     V306          441                                                     
     V307 TO V319  442-467                                                 
     V320 TO V322  468-470                                                 
     V323 TO V324  471-474                                                 
     V325          475                                                     
     V326          476-477                                                 
     V327 TO V339  478-490                                                 
     V340          491-492                                                 
     V341          493-494                                                 
     V342          495-496                                                 
     V343          497                                                     
     V344          498                                                     
     V345 TO V346  499-502                                                 
     V347 TO V348  503-504                                                 
     V349          505-506                                                 
     V350          507                                                     
     V351          508-509                                                 
     V352          510                                                     
     V353 TO V356  511-518                                                 
     V357          519-521                                                 
     V358 V359     522-523                                                 
     V360          524-525                                                 
     V361          526-528                                                 
     V362          529-530                                                 
     V363          531                                                     
     V364          532                                                     
     V365          533-534                                                 
     V366          535                                                     
     V367          536-541                                                 
 .                                                                         
DOCUMENT                                                                   
 * COMMENT ****************************************************************
 *                                                                         
 *   ZA STUDY NUMBER 2491                                                  
 *   ICPSR STUDY NUMBER 6535                                               
 *   STANDARD EUROBAROMETER SURVEY 41.1                                    
 *   POST-EUROPEAN ELECTION, JUNE-JULY 1994                                
 *   FIRST ZA CODEBOOK EDITION, APRIL 1998                                 
 *                                                                         
 *   CARRIED OUT BY INRA (EUROPE), EUROPEAN COORDINATION OFFICE, ON        
 *   REQUEST OF THE EUROPEAN COMMISSION, BETWEEN 11/06 AND 08/07 1994      
 *                                                                         
 * COMMENT ****************************************************************
 *                                                                         
 *   THE FOLLOWING SPSS SETUP SECTIONS ARE PROVIDED FOR THE LRECL          
 *   VERSION OF THIS DATA COLLECTION:                                      
 *                                                                         
 *   DATA LIST CONTAINS THE SPSS STATEMENTS WHICH ASSIGN THE VARIABLE      
 *   NAMES AND SPECIFY THE BEGINNING AND ENDING COLUMN LOCATIONS FOR       
 *   EACH VARIABLE                                                         
 *                                                                         
 *   VARIABLE LABELS ASSIGNS VARIABLE LABELS FOR ALL VARIABLES IN THE      
 *   DATA FILE                                                             
 *                                                                         
 *   VALUE LABELS ASSIGNS VALUE LABELS TO THE VALUES FOUND IN THE DATA     
 *   FILE                                                                  
 *                                                                         
 *   FOR COUNTRY SPECIFIC CODING AND OTHER REMARKS PLEASE REFER TO THE     
 *   RESPECTIVE DOCUMENT STATEMENTS. THESE DOCUMENTS CAN BE RETRIEVED      
 *   FROM SYSTEM OR PORTABLE FILES USING THE "DISPLAY DOCUMENTS" IN-       
 *   STRUCTION (NOT AVAILABLE UNDER SPSS/PC+)                              
 *                                                                         
 *   MISSING VALUES CONTAINS SPSS PROGRAM STATEMENTS THAT SPECIFY          
 *   DATA VALUES AS MISSING. BEFORE PROCESSING WITH SPSS/PC+ USERS WILL    
 *   HAVE TO MODIFY THIS SECTION SINCE NOT MORE THAN ONE MISSING VALUE     
 *   (PLUS SYSTEM MISSING) IS ACCEPTED FOR EACH VARIABLE                   
 *                                                                         
 *   USERS MAY COMBINE AND MODIFY THESE SECTIONS OR PARTS OF THESE         
 *   SECTIONS TO SUIT THEIR SPECIFIC NEEDS.  USERS MAY ALSO NEED TO        
 *   CHANGE THE FILE-SPECIFICATION IN THE DATA LIST (FILE HANDLE)          
 *   STATEMENT TO AN APPROPRIATE FILENAME SPECIFICATION FOR THEIR SYSTEM   
 *                                                                         
 *   THESE SPSS STATEMENTS WERE EITHER PRODUCED OR EDITED BY ZA;           
 *   USERS SHOULD CONSULT THE DATA COLLECTION INSTRUMENTS (CODEBOOK        
 *   AND/OR QUESTIONNAIRES) FOR FULL QUESTION TEXT                         
 *                                                                         
 * COMMENT ****************************************************************
 *                                                                         
 *   UPDATED 05/04/98                                                      
 *                                                                         
 * COMMENT*****************************************************************
 .                                                                         
VARIABLE LABELS                                                            
     V1  "STUDY NUMBER"                                                    
  /  V2  "EDITION NUMBER"                                                  
  /  V3  "PART NUMBER"                                                     
  /  V4  "ID SERIAL NUMBER"                                                
  /  V5  "NATION I (UNITED KINGDOM)"                                       
  /  V6  "WEIGHT SPECIAL UNITED KINGDOM"                                   
  /  V7  "NATION II (GB AND NORTHERN IRELAND)"                             
  /  V8  "WEIGHT RESULT FROM TARGET"                                       
  /  V9  "WEIGHT ADJUSTED TO STANDARD SIZE"                                
  / V10  "NATION III (UNITED GERMANY)"                                     
  / V11  "WEIGHT SPECIAL GERMANY"                                          
  / V12  "WEIGHT EURO 6"                                                   
  / V13  "WEIGHT EURO 10"                                                  
  / V14  "WEIGHT EURO 12"                                                  
  / V15  "WEIGHT EURO 12 +"                                                
  / V16  "Q1A ELECTORAL REGISTER"                                          
  / V17  "Q1B NATIONALITY: BELGIUM"                                        
  / V18  "Q1B NATIONALITY: DENMARK"                                        
  / V19  "Q1B NATIONALITY: GERMANY"                                        
  / V20  "Q1B NATIONALITY: GREECE"                                         
  / V21  "Q1B NATIONALITY: SPAIN"                                          
  / V22  "Q1B NATIONALITY: FRANCE"                                         
  / V23  "Q1B NATIONALITY: IRELAND"                                        
  / V24  "Q1B NATIONALITY: ITALY"                                          
  / V25  "Q1B NATIONALITY: LUXEMBURG"                                      
  / V26  "Q1B NATIONALITY: NETHERLANDS"                                    
  / V27  "Q1B NATIONALITY: PORTUGAL"                                       
  / V28  "Q1B NATIONALITY: UNITED KINGDOM"                                 
  / V29  "Q1B NATIONALITY: OTHER COUNTRIES"                                
  / V30  "Q1B NATIONALITY: DK"                                             
  / V31  "Q1C REGISTERED FOR EUROPEAN ELECTIONS"                           
  / V32  "Q2 TRUST IN PEOPLE: ITALIANS"                                    
  / V33  "Q2 TRUST IN PEOPLE: GERMANS"                                     
  / V34  "Q2 TRUST IN PEOPLE: BRITISH"                                     
  / V35  "Q2 TRUST IN PEOPLE: IRISH"                                       
  / V36  "Q2 TRUST IN PEOPLE: BELGIANS"                                    
  / V37  "Q2 TRUST IN PEOPLE: LUXEMBURGERS"                                
  / V38  "Q2 TRUST IN PEOPLE: DUTCH"                                       
  / V39  "Q2 TRUST IN PEOPLE: DANES"                                       
  / V40  "Q2 TRUST IN PEOPLE: FRENCH"                                      
  / V41  "Q2 TRUST IN PEOPLE: SPANIARDS"                                   
  / V42  "Q2 TRUST IN PEOPLE: GREEKS"                                      
  / V43  "Q2 TRUST IN PEOPLE: PORTUGUESE"                                  
  / V44  "Q2 TRUST IN PEOPLE: AMERICANS"                                   
  / V45  "Q2 TRUST IN PEOPLE: JAPANESE"                                    
  / V46  "Q2 TRUST IN PEOPLE: RUSSIANS"                                    
  / V47  "Q3 POLITICAL INTEREST"                                           
  / V48  "Q4 POLITICAL INTEREST - EC MATTERS"                              
  / V49  "Q5 EUROPEAN UNIFICATION - FOR/AGAINST"                           
  / V50  "Q6 EC MEMBERSHIP - GOOD/BAD"                                     
  / V51  "Q7 EC MEMBERSHIP - CNTRY BENEFIT"                                
  / V52  "Q8 EC MEMBERSHIP - CNTRY BENEFIT FUTURE"                         
  / V53  "Q9 EC DISSOLUTION - REGRET"                                      
  / V54  "Q10 DEMOCRACY SATISFACTION"                                      
  / V55  "Q11 DEMOCRACY SATISFACTION EC"                                   
  / V56  "Q12 EC DECISION MAKING - STATEMENTS"                             
  / V57  "Q13 EC DECISION MAKING - SPECIFICATION"                          
  / V58  "Q14 EUROP ELECTION - PARTICIPATION 94"                           
  / V59  "Q15 VOTING BEHAVIOUR EUROP ELECTION"                             
  / V60  "Q16_1 EUROP ELECTION - GENDER PREFERENCE"                        
  / V61  "Q16_2 EUROP ELECTION - GENDER PREFERENCE"                        
  / V62  "Q17 EUROP ELECTION - GENDER IMPORTANCE"                          
  / V63  "Q18 EUROP ELECTION - FEMALE CANDIDATES"                          
  / V64  "Q20 KNOWLEDGE EUROP COMMISSION PRESIDENT"                        
  / V65  "Q20 KNOWLEDGE NAT EUROP COMMISSIONER"                            
  / V66  "Q20 KNOWLEDGE MINISTER OF FINANCE"                               
  / V67  "Q20 KNOWLEDGE MINISTER OF FOREIGN AFF"                           
  / V68  "Q21 POPULARITY BRITISH PRIME MINISTER"                           
  / V69  "Q22 POPULARITY SPANISH PRIME MINISTER"                           
  / V70  "Q23 POPULARITY FRENCH PRESIDENT"                                 
  / V71  "Q24 POPULARITY GERMAN CHANCELLOR"                                
  / V72  "Q25 EC MEMBER: DENMARK"                                          
  / V73  "Q25 EC MEMBER: SPAIN"                                            
  / V74  "Q25 EC MEMBER: POLAND"                                           
  / V75  "Q25 EC MEMBER: SWITZERLAND"                                      
  / V76  "Q25 EC MEMBER: IRELAND"                                          
  / V77  "Q25 EC MEMBER: AUSTRIA"                                          
  / V78  "Q25 EC MEMBER: FRANCE"                                           
  / V79  "Q25 EC MEMBER: TURKEY"                                           
  / V80  "Q25 EC MEMBER: PORTUGAL"                                         
  / V81  "Q25 EC MEMBER: HUNGARY"                                          
  / V82  "Q25 EC MEMBER: GERMANY"                                          
  / V83  "Q25 EC MEMBER: NORWAY"                                           
  / V84  "Q25 EC MEMBER: NONE OF THESE"                                    
  / V85  "Q25 EC MEMBER: DONT KNOW"                                        
  / V86  "Q26 EUROP UNIFICATION SPEED - NOWADAYS"                          
  / V87  "Q27 EUROP UNIFICATION SPEED - PREFERENCE"                        
  / V88  "Q28 EUROPEAN GOVERNMENT - FOR/AGAINST"                           
  / V89  "Q29 DECISION MAKING O EC BETTER BY WOMEN"                        
  / V90  "Q30 DECISION MAKING BY WOMEN - MEDIA"                            
  / V91  "Q30 DECISION MAKING BY WOMEN - PARTIES"                          
  / V92  "Q30 DECISION MAKING BY WOMEN - CHURCHES"                         
  / V93  "Q30 DECISION MAKING BY WOMEN - COMPANIES"                        
  / V94  "Q30 DECISION MAKING BY WOMEN - EDUCATION"                        
  / V95  "Q30 DECISION MAKING BY WOMEN - GOVERNMNT"                        
  / V96  "Q30 DECISION MAKING BY WOMEN - UNIONS"                           
  / V97  "Q30 DECISION MAKING BY WOMEN - REGIONS"                          
  / V98  "Q30 DECISION MAKING BY WOMEN - LOCAL AUT"                        
  / V99  "Q30 DECISION MAKING BY WOMEN - EC INSTIT"                        
  /V100  "Q30 DECISION MAKING BY WOMEN - DONT KNOW"                        
  /V101  "Q31 EUROPEAN CITIZENSHIP FEELING - SCALE"                        
  /V102  "Q32 EC AND COUNTRY INTEREST - CONFIDENCE"                        
  /V103  "Q33 EC AND PEOPLE - RELY ON EUROP COMMIS"                        
  /V104  "Q33 EC AND PEOPLE - RELY ON GOVERNMENT"                          
  /V105  "Q33 EC AND PEOPLE - RELY ON EUROP COURT"                         
  /V106  "Q33 EC AND PEOPLE - RELY ON COUNCIL O M"                         
  /V107  "Q33 EC AND PEOPLE - RELY ON NAT PARLIAM"                         
  /V108  "Q33 EC AND PEOPLE - RELY ON EUR PARLIAM"                         
  /V109  "Q36 EUR PARLIAMENT - POWER"                                      
  /V110  "Q36 NAT PARLIAMENT - POWER"                                      
  /V111  "Q37 EUR PARLIAMENT - EFFECT ON PEOPLE"                           
  /V112  "Q37 NAT PARLIAMENT - EFFECT ON PEOPLE"                           
  /V113  "Q38 UNITED EUROPE - GOOD/BAD PERSONALLY"                         
  /V114  "Q38 UNITED EUROPE - GOOD/BAD GOVERNMENT"                         
  /V115  "Q39 EUR ELECTION CAMPAIGN - PARTY WORKER"                        
  /V116  "Q39 EUR ELECTION CAMPAIGN - LEAFLETS"                            
  /V117  "Q39 EUR ELECTION CAMPAIGN - ADVERTISING"                         
  /V118  "Q39 EUR ELECTION CAMPAIGN - NEWSPAPERS"                          
  /V119  "Q39 EUR ELECTION CAMPAIGN - TV RADIO"                            
  /V120  "Q39 EUR ELECTION CAMPAIGN - DISCUSSION"                          
  /V121  "Q39 EUR ELECTION CAMPAIGN - NONE O THESE"                        
  /V122  "Q39 EUR ELECTION CAMPAIGN - DK"                                  
  /V123  "Q40 EUR ELECTION NOT VOTED - KNOWLEDGE"                          
  /V124  "Q40 EUR ELECTION NOT VOTED - NOT WORTH"                          
  /V125  "Q40 EUR ELECTION NOT VOTED - INTERESTS"                          
  /V126  "Q40 EUR ELECTION NOT VOTED - NAT PROBL"                          
  /V127  "Q40 EUR ELECTION NOT VOTED - CONFUSION"                          
  /V128  "Q40 EUR ELECTION NOT VOTED - PARTIES"                            
  /V129  "Q40 EUR ELECTION NOT VOTED - CANDIDATES"                         
  /V130  "Q40 EUR ELECTION NOT VOTED - WOMAN REPR"                         
  /V131  "Q40 EUR ELECTION NOT VOTED - DK"                                 
  /V132  "Q41 EUR ELECTION MORE FEMALE CANDIDATES"                         
  /V133  "Q42 EUR ELECTION - SEATS FOR PARTIES"                            
  /V134  "Q42 NAT ELECTION - SEATS FOR PARTIES"                            
  /V135  "Q43 EUR ELECTION - SEATS FOR CANDIDATES"                         
  /V136  "Q43 NAT ELECTION - SEATS FOR CANDIDATES"                         
  /V137  "Q44 EC COM CURRENCY PREFERENCE - RESP"                           
  /V138  "Q44 EC COM CURRENCY PREFERENCE - PARTY A"                        
  /V139  "Q44 EC COM CURRENCY PREFERENCE - PARTY B"                        
  /V140  "Q44 EC COM CURRENCY PREFERENCE - PARTY C"                        
  /V141  "Q44 EC COM CURRENCY PREFERENCE - PARTY D"                        
  /V142  "Q44 EC COM CURRENCY PREFERENCE - PARTY E"                        
  /V143  "Q44 EC COM CURRENCY PREFERENCE - PARTY F"                        
  /V144  "Q44 EC COM CURRENCY PREFERENCE - PARTY G"                        
  /V145  "Q44 EC COM CURRENCY PREFERENCE - PARTY H"                        
  /V146  "Q44 EC COM CURRENCY PREFERENCE - PARTY I"                        
  /V147  "Q44 EC COM CURRENCY PREFERENCE - PARTY J"                        
  /V148  "Q44 EC COM CURRENCY PREFERENCE - PARTY K"                        
  /V149  "Q45 EC EMPLOMENT POL PREFERNCE - RESP"                           
  /V150  "Q45 EC EMPLOMENT POL PREFERNCE - PARTY A"                        
  /V151  "Q45 EC EMPLOMENT POL PREFERNCE - PARTY B"                        
  /V152  "Q45 EC EMPLOMENT POL PREFERNCE - PARTY C"                        
  /V153  "Q45 EC EMPLOMENT POL PREFERNCE - PARTY D"                        
  /V154  "Q45 EC EMPLOMENT POL PREFERNCE - PARTY E"                        
  /V155  "Q45 EC EMPLOMENT POL PREFERNCE - PARTY F"                        
  /V156  "Q45 EC EMPLOMENT POL PREFERNCE - PARTY G"                        
  /V157  "Q45 EC EMPLOMENT POL PREFERNCE - PARTY H"                        
  /V158  "Q45 EC EMPLOMENT POL PREFERNCE - PARTY I"                        
  /V159  "Q45 EC EMPLOMENT POL PREFERNCE - PARTY J"                        
  /V160  "Q45 EC EMPLOMENT POL PREFERNCE - PARTY K"                        
  /V161  "Q46 EC NAT BORDERS PREFERENCE - RESP"                            
  /V162  "Q46 EC NAT BORDERS PREFERENCE - PARTY A"                         
  /V163  "Q46 EC NAT BORDERS PREFERENCE - PARTY B"                         
  /V164  "Q46 EC NAT BORDERS PREFERENCE - PARTY C"                         
  /V165  "Q46 EC NAT BORDERS PREFERENCE - PARTY D"                         
  /V166  "Q46 EC NAT BORDERS PREFERENCE - PARTY E"                         
  /V167  "Q46 EC NAT BORDERS PREFERENCE - PARTY F"                         
  /V168  "Q46 EC NAT BORDERS PREFERENCE - PARTY G"                         
  /V169  "Q46 EC NAT BORDERS PREFERENCE - PARTY H"                         
  /V170  "Q46 EC NAT BORDERS PREFERENCE - PARTY I"                         
  /V171  "Q46 EC NAT BORDERS PREFERENCE - PARTY J"                         
  /V172  "Q46 EC NAT BORDERS PREFERENCE - PARTY K"                         
  /V173  "Q47 POL PROB MOST IMP - 1ST"                                     
  /V174  "Q47 POL PROB MOST IMP - 2ND"                                     
  /V175  "Q47 POL PROB MOST IMP - 3RD"                                     
  /V176  "Q48A POL PROB MOST IMP 1ST - BEST PARTY"                         
  /V177  "Q48B POL PROB MOST IMP 1ST - DEALT LEVEL"                        
  /V178  "Q48C POL PROB MOST IMP 1ST - APPRP LEVEL"                        
  /V179  "Q49A POL PROB MOST IMP 2ND - BEST PARTY"                         
  /V180  "Q49B POL PROB MOST IMP 2ND - DEALT LEVEL"                        
  /V181  "Q49C POL PROB MOST IMP 2ND - APPRP LEVEL"                        
  /V182  "Q50A POL PROB MOST IMP 3RD - BEST PARTY"                         
  /V183  "Q50B POL PROB MOST IMP 3RD - DEALT LEVEL"                        
  /V184  "Q50C POL PROB MOST IMP 3RD - APPRP LEVEL"                        
  /V185  "Q51 EC SINGLE MARKET - COUNTRY ADVANTAGE"                        
  /V186  "Q52 EC COMMON CURRENCY - FAVOUR"                                 
  /V187  "Q53 EC COMMON CURRENCY - AND/OR OWN"                             
  /V188  "Q54A APPROVAL NATURE PROTECTION GROUPS"                          
  /V189  "Q54B APPROVAL ECOLOGY MOVEMENT"                                  
  /V190  "Q54C APPROVAL ANTI-NUCLEAR POW MOVEMENTS"                        
  /V191  "Q54D APPROVAL PEACE MOVEMENT"                                    
  /V192  "Q54E APPROVAL WOMEN'S MOVEMENT"                                  
  /V193  "Q55A MEMBERSH NATURE PROTECTION GROUPS"                          
  /V194  "Q55B MEMBERSH ECOLOGY MOVEMENT"                                  
  /V195  "Q55C MEMBERSH ANTI-NUCLEAR POW MOVEMENTS"                        
  /V196  "Q55D MEMBERSH PEACE MOVEMENT"                                    
  /V197  "Q56 WOMEN I DECISION MAKNG - EQ OPPORT"                          
  /V198  "Q56 WOMEN I DECISION MAKNG - FAMILY POL"                         
  /V199  "Q56 WOMEN I DECISION MAKNG - EMPLOYMENT"                         
  /V200  "Q56 WOMEN I DECISION MAKNG - HEALTH POL"                         
  /V201  "Q56 WOMEN I DECISION MAKNG - CONSUMER"                           
  /V202  "Q56 WOMEN I DECISION MAKNG - ENVIRONMNT"                         
  /V203  "Q56 WOMEN I DECISION MAKNG - EDUCATION"                          
  /V204  "Q56 WOMEN I DECISION MAKNG - FOREIGN POL"                        
  /V205  "Q56 WOMEN I DECISION MAKNG - FGHT CRIME"                         
  /V206  "Q56 WOMEN I DECISION MAKNG - INDUST POL"                         
  /V207  "Q56 WOMEN I DECISION MAKNG - THIRD WORLD"                        
  /V208  "Q56 WOMEN I DECISION MAKNG - RURAL POL"                          
  /V209  "Q57 FOREIGN POPULATION - QUANTITY"                               
  /V210  "Q58 FOREIGN POPULATION - RIGHTS"                                 
  /V211  "Q59 IMMIGRATION PROBLEM - ASSESSMENT"                            
  /V212  "Q60 EC COUNTRY - MOST IMMIGRANTS"                                
  /V213  "Q61 FOREIGNERS - REDUCE EDUCATION LEVEL"                         
  /V214  "Q61 FOREIGNERS - EXPLOIT SOCIAL WELFARE"                         
  /V215  "Q61 FOREIGNERS - INCREASE UNEMPLOYMENT"                          
  /V216  "Q61 FOREIGNERS - CAUSE DELINQUENCY"                              
  /V217  "Q61 FOREIGNERS - PROBLEMS AS NEIGHBOURS"                         
  /V218  "Q61 FOREIGNERS - MARRIAGE ENDS BADLY"                            
  /V219  "Q62 EC COUNTRY - RELY MOST ON"                                   
  /V220  "Q63 EC MEMBERSHIP - FUTURE PREFERENCE"                           
  /V221  "Q64 WORLD CONFLICTS - GRTR GERMAN SHARE"                         
  /V222  "Q65 WORLD CONFLICTS - GRTR EC SHARE"                             
  /V223  "Q66 UNITED GERMANY A DANGER TO EUROPE"                           
  /V224  "Q1_DK EC FUTURE - DENMARKS COLLABORATION"                        
  /V225  "Q2_DK MAASTRICHT REFERENDUM VOTE"                                
  /V226  "Q3_DK EUROP ELECTION VOTE - REASON #1"                           
  /V227  "Q3_DK EUROP ELECTION VOTE - REASON #2"                           
  /V228  "Q3_DK EUROP ELECTION VOTE - REASON #3"                           
  /V229  "Q3_DK EUROP ELECTION VOTE - REASON #4"                           
  /V230  "Q3_DK EUROP ELECTION VOTE - REASON #5"                           
  /V231  "Q3_DK EUROP ELECTION VOTE - REASON #6"                           
  /V232  "Q3_DK EUROP ELECTION VOTE - REASON #7"                           
  /V233  "Q3_DK EUROP ELECTION VOTE - REASON #8"                           
  /V234  "Q3_DK EUROP ELECTION VOTE - REASON #9"                           
  /V235  "Q3_DK EUROP ELECTION VOTE - REASON #10"                          
  /V236  "Q3_DK EUROP ELECTION VOTE - REASON #11"                          
  /V237  "Q3_DK EUROP ELECTION VOTE - REASON #12"                          
  /V238  "Q3_DK EUROP ELECTION VOTE - REASON #13"                          
  /V239  "Q3_DK EUROP ELECTION VOTE - REASON #14"                          
  /V240  "Q3_DK EUROP ELECTION VOTE - REASON #15"                          
  /V241  "Q3_DK EUROP ELECTION VOTE - REASON #16"                          
  /V242  "Q3_DK EUROP ELECTION VOTE - REASON #17"                          
  /V243  "Q3_DK EUROP ELECTION VOTE - REASON #18"                          
  /V244  "Q3_DK EUROP ELECTION VOTE - REASON #19"                          
  /V245  "Q3_DK EUROP ELECTION VOTE - REASON #20"                          
  /V246  "Q3_DK EUROP ELECTION VOTE - REASON #21"                          
  /V247  "Q3_DK EUROP ELECTION VOTE - REASON #22"                          
  /V248  "Q3_DK EUROP ELECTION VOTE - REASON #23"                          
  /V249  "Q3_DK EUROP ELECTION VOTE - REASON #24"                          
  /V250  "Q3_DK EUROP ELECTION VOTE - REASON #25"                          
  /V251  "Q3_DK EUROP ELECTION VOTE - REASON #26"                          
  /V252  "Q3_DK EUROP ELECTION VOTE - REASON #27"                          
  /V253  "Q3_DK EUROP ELECTION VOTE - REASON #28"                          
  /V254  "Q3_DK EUROP ELECTION VOTE - REASON #29"                          
  /V255  "Q3_DK EUROP ELECTION VOTE - REASON #30"                          
  /V256  "Q3_DK EUROP ELECTION VOTE - REASON #31"                          
  /V257  "Q3_DK EUROP ELECTION VOTE - REASON #32"                          
  /V258  "Q3_DK EUROP ELECTION VOTE - REASON #33"                          
  /V259  "Q3_DK EUROP ELECTION VOTE - REASON #34"                          
  /V260  "Q3_DK EUROP ELECTION VOTE - REASON #35"                          
  /V261  "Q3_DK EUROP ELECTION VOTE - REASON #36"                          
  /V262  "Q3_DK EUROP ELECTION VOTE - REASON #37"                          
  /V263  "Q3_DK EUROP ELECTION VOTE - REASON #38"                          
  /V264  "Q3_DK EUROP ELECTION VOTE - REASON #39"                          
  /V265  "Q3_DK EUROP ELECTION VOTE - REASON #40"                          
  /V266  "Q3_DK EUROP ELECTION VOTE - REASON #41"                          
  /V267  "Q3_DK EUROP ELECTION VOTE - REASON #42"                          
  /V268  "Q3_DK EUROP ELECTION VOTE - REASON #43"                          
  /V269  "Q3_DK EUROP ELECTION VOTE - REASON #44"                          
  /V270  "Q3_DK EUROP ELECTION VOTE - REASON #45"                          
  /V271  "Q3_DK EUROP ELECTION VOTE - REASON #46"                          
  /V272  "Q3_DK EUROP ELECTION VOTE - REASON #47"                          
  /V273  "Q3_DK EUROP ELECTION VOTE - REASON #48"                          
  /V274  "Q3_DK EUROP ELECTION VOTE - REASON #49"                          
  /V275  "Q3_DK EUROP ELECTION VOTE - REASON #50"                          
  /V276  "Q3_DK EUROP ELECTION VOTE - REASON #51"                          
  /V277  "Q3_DK EUROP ELECTION VOTE - REASON #52"                          
  /V278  "Q3_DK EUROP ELECTION VOTE - REASON #53"                          
  /V279  "Q3_DK EUROP ELECTION VOTE - REASON #54"                          
  /V280  "Q3_DK EUROP ELECTION VOTE - REASON #55"                          
  /V281  "Q4A_DK EC MEMBERSHIP VOTE - FOR/AGAINST"                         
  /V282  "Q4B_DK EC MEMBERSHIP WITHDRAWAL"                                 
  /V283  "Q5_DK EUROP ELECTION VOTE - DECISION"                            
  /V284  "Q6_DK EUROP ELECTION VOTE - CONSIDERED"                          
  /V285  "D1 LEFT-RIGHT PLACEMENT"                                         
  /V286  "D1 LEFT-RIGHT PLACEMENT - HARMONISED"                            
  /V287  "D1 LEFT-RIGHT PLACEMENT - RECODED"                               
  /V288  "D1A LEFT-RIGHT PLACEMENT POLIT PARTY A"                          
  /V289  "D1A LEFT-RIGHT PLACEMENT POLIT PARTY B"                          
  /V290  "D1A LEFT-RIGHT PLACEMENT POLIT PARTY C"                          
  /V291  "D1A LEFT-RIGHT PLACEMENT POLIT PARTY D"                          
  /V292  "D1A LEFT-RIGHT PLACEMENT POLIT PARTY E"                          
  /V293  "D1A LEFT-RIGHT PLACEMENT POLIT PARTY F"                          
  /V294  "D1A LEFT-RIGHT PLACEMENT POLIT PARTY G"                          
  /V295  "D1A LEFT-RIGHT PLACEMENT POLIT PARTY H"                          
  /V296  "D1A LEFT-RIGHT PLACEMENT POLIT PARTY I"                          
  /V297  "D1A LEFT-RIGHT PLACEMENT POLIT PARTY J"                          
  /V298  "D1A LEFT-RIGHT PLACEMENT POLIT PARTY K"                          
  /V299  "D2A PARTY ATTACHMENT"                                            
  /V300  "D2B PARTY ATTACHMENT - REPEATED"                                 
  /V301  "D3 PARTY ATTACHMENT - WHICH PARTY"                               
  /V302  "D3A PARTY ATTACHMENT COMPARED - FATHER"                          
  /V303  "D3B PARTY ATTACHMENT - FATHER (ROUTE 1)"                         
  /V304  "D3C PARTY ATTACHMENT - FATHER (ROUTE 2)"                         
  /V305  "D4 VOTE INTENTION"                                               
  /V306  "D5A ELECTORAL PARTICIPATION - NATIONAL"                          
  /V307  "D5 VOTING BEHAVIOUR LAST NAT ELECTION"                           
  /V308  "D5_I VOTING BEHAVIOUR LAST SENAT ELECT"                          
  /V309  "D5B PROBABILITY TO VOTE PARTY A"                                 
  /V310  "D5B PROBABILITY TO VOTE PARTY B"                                 
  /V311  "D5B PROBABILITY TO VOTE PARTY C"                                 
  /V312  "D5B PROBABILITY TO VOTE PARTY D"                                 
  /V313  "D5B PROBABILITY TO VOTE PARTY E"                                 
  /V314  "D5B PROBABILITY TO VOTE PARTY F"                                 
  /V315  "D5B PROBABILITY TO VOTE PARTY G"                                 
  /V316  "D5B PROBABILITY TO VOTE PARTY H"                                 
  /V317  "D5B PROBABILITY TO VOTE PARTY I"                                 
  /V318  "D5B PROBABILITY TO VOTE PARTY J"                                 
  /V319  "D5B PROBABILITY TO VOTE PARTY K"                                 
  /V320  "D6A TRADE UNION MEMBER - RESPONDENT"                             
  /V321  "D6B TRADE UNION MEMBER - ELSE IN HH"                             
  /V322  "D7 MARITAL STATUS"                                               
  /V323  "D8 AGE EDUCATION"                                                
  /V324  "D8 AGE EDUCATION - RECODED"                                      
  /V325  "D10 SEX"                                                         
  /V326  "D11 AGE EXACT"                                                   
  /V327  "D11 AGE RECODED - 4 GROUPS"                                      
  /V328  "D11 AGE RECODED - 6 GROUPS"                                      
  /V329  "D12 HOUSEHOLD SIZE"                                              
  /V330  "D14 IN HH: COLOUR TV SET"                                        
  /V331  "D14 IN HH: VIDEO RECORDER"                                       
  /V332  "D14 IN HH: VIDEO CAMERA"                                         
  /V333  "D14 IN HH: RADIO-CLOCK"                                          
  /V334  "D14 IN HH: PC/HOME COMPUTER"                                     
  /V335  "D14 IN HH: STILL CAMERA"                                         
  /V336  "D14 IN HH: ELECTRIC DRILL"                                       
  /V337  "D14 IN HH: ELECTRIC DEEP FAT FRYER"                              
  /V338  "D14 IN HH: TWO OR MORE CARS"                                     
  /V339  "D14 IN HH: SECOND HOME OR HOLIDAY FLAT"                          
  /V340  "D14 RECODED - NUMBER OF OBJECTS IN HH"                           
  /V341  "D15A OCCUPATION OF RESPONDENT"                                   
  /V342  "D15B OCCUPATION OF R - LAST JOB"                                 
  /V343  "D19A HH MAINLY LOOKING AFTER HOME"                               
  /V344  "D19B HH MAINLY INCOME (HEAD OF HH)"                              
  /V345  "D21A OCCUPATION HEAD OF HOUSEHOLD"                               
  /V346  "D21B OCCUPATION HEAD OF HH - LAST JOB"                           
  /V347  "D23 SOCIAL CLASS SUBJECTIVE"                                     
  /V348  "D25 TYPE OF COMMUNITY"                                           
  /V349  "D26 RELIGION - DENOMINATION"                                     
  /V350  "D27 RELIGION - CHURCH ATTENDANCE"                                
  /V351  "D29 INCOME HH"                                                   
  /V352  "D29 INCOME HH QUARTILES (HARMONISED)"                            
  /V353  "P1 INTERVIEW DATE - DAY"                                         
  /V354  "P1 INTERVIEW DATE - MONTH"                                       
  /V355  "P2 INTERVIEW BEGIN - HOUR"                                       
  /V356  "P2 INTERVIEW BEGIN - MINUTES"                                    
  /V357  "P3 INTERVIEW DURATION - MINUTES"                                 
  /V358  "P4 N OF PERSONS PRESENT DURING INTERVIEW"                        
  /V359  "P5 RESPONDENT COOPERATION"                                       
  /V360  "P6 SIZE OF COMMUNITY"                                            
  /V361  "P7 REGION I"                                                     
  /V362  "P7 REGION II (REGION I RECODED)"                                 
  /V363  "P12 TELEPHONE AVAILABLE IN HH"                                   
  /V364  "P13 LANGUAGE OF QUESTIONNAIRE (BELGIUM)"                         
  /V365  "C4 SOCIO PROF STATUS (OCCUPATION RECODE)"                        
  /V366  "C14 OCCUPATION OF RESPONDENT - SCALE"                            
  /V367  "ORIGINAL INRA RESPONDENT ID"                                     
 .                                                                         
DOCUMENT WEIGHT VARIABLES SUPPLIED BY INRA (V6, V8, V9, V11 TO V15)        
         -----------------------------                                     
         WEIGHT SPECIAL UNITED KINGDOM                                     
         -----------------------------                                     
         THIS VARIABLE ADJUSTS THE BRITISH AND NORTHERN IRISH SAMPLES      
         TO THEIR RESPECTIVE PROPORTIONS IN THE UNITED KINGDOM. ALL        
         NATION WEIGHTS ARE INCLUDED  -                                    
         UNLIKE THE "NATION WEIGHT I" IN EARLIER EUROBAROMETERS UP         
         TO 31 THIS WEIGHT ADJUSTS ALL SAMPLES TO THE STANDARD SIZE        
         -------------------------                                         
         WEIGHT RESULT FROM TARGET                                         
         -------------------------                                         
         THIS VARIABLE CONTAINS WEIGHTS THAT ADJUST THE WEIGHTED SAMPLES   
         TO MAKE THEM REPRESENTATIVE FOR THE COUNTRIES FROM WHICH THEY     
         WERE DRAWN. IT REPRODUCES THE REAL NUMBER OF CASES FOR EACH       
         COUNTRY -                                                         
         THIS WEIGHT CORRESPONDS TO "NATION WEIGHT II" IN EARLIER EURO-    
         BAROMETERS UP TO 31                                               
         --------------------------------                                  
         WEIGHT ADJUSTED TO STANDARD SIZE                                  
         --------------------------------                                  
         THIS VARIABLE CORRESPONDS TO "WEIGHT RESULT FROM TARGET"          
         ADJUSTING ALL SAMPLES TO THE STANDARD SIZE OF 1000 RESPEC-        
         TIVELY 300 (NORHERN IRELAND) OR 500 (LUXEMBOURG) CASES -          
         GREAT BRITAIN (N=1000) AND NORTHERN IRELAND (N=300) ARE           
         WEIGHTED AS INDEPENDENT SAMPLES                                   
         ----------------------                                            
         WEIGHT SPECIAL GERMANY                                            
         ----------------------                                            
         THIS VARIABLE ADJUSTS THE EAST AND WEST GERMAN SAMPLES            
         TO THEIR RESPECTIVE PROPORTIONS IN THE UNITED GERMANY. ALL        
         NATION WEIGHTS ARE INCLUDED AND ALL SAMPLES ADJUSTED TO           
         THE STANDARD SIZE                                                 
         -----------------------                                           
         WEIGHT EURO 6 / 10 / 12                                           
         -----------------------                                           
         THESE VARIABLES CONTAIN WEIGHTS THAT ADJUST EACH NATIONAL         
         SAMPLE IN PROPORTION TO ITS NATION'S SHARE IN THE TOTAL           
         POPULATION OF THE EUROPEAN COMMUNITY COUNTRIES IN THEIR           
         HISTORIC COMPOSITION:                                             
         - EURO 6 ONLY REFERS TO THE SIX EC FOUNDER-MEMBERS: FRANCE,       
           BELGIUM, NETHERLANDS, WEST GERMANY, ITALY AND LUXEMBOURG        
         - EURO 10 EXCLUDES EAST GERMANY, SPAIN, PORTUGAL                  
         - EURO 12 EXCLUDES EAST GERMANY                                   
         ----------------                                                  
         WEIGHT EURO 12 + (INCLUDING EAST GERMANY)                         
         ----------------                                                  
         THIS VARIABLE CONTAINS WEIGHTS THAT ADJUST EACH NATIONAL          
         SAMPLE IN PROPORTION TO ITS NATION'S SHARE IN THE TOTAL           
         POPULATION OF ALL THE EUROPEAN COMMUNITY COUNTRIES. EAST          
         GERMANY AND NORTHERN IRELAND ARE TREATED AS SEPERATE SAMPLES;     
         THE NATIONAL WEIGHTS ARE INCLUDED                                 
         -----------------------                                           
         ALL EUROPEAN WEIGHT VARIABLES INCLUDE THE NATIONAL WEIGHTS        
         FOR EACH SAMPLE - UNLIKE EUROPEAN WEIGHTS IN EARLIER EURO-        
         BAROMETERS UP TO 31A THEY ALL CONTAIN THE ADJUSTMENT TO THE       
         STANDARD SAMPLE SIZE                                              
         -----------------------                                           
 .                                                                         
VALUE LABELS                                                               
 V2                                                                        
    1 "EARLY RELEASE VERSION"                                              
    2 "1ST CODEBOOK EDITION"                                               
  /                                                                        
 V5                                                                        
    1 "FRANCE"                                                             
    2 "BELGIUM"                                                            
    3 "NETHERLANDS"                                                        
    4 "WEST GERMANY"                                                       
    5 "ITALY"                                                              
    6 "LUXEMBOURG"                                                         
    7 "DENMARK"                                                            
    8 "IRELAND"                                                            
    9 "UNITED KINGDOM"                                                     
   10 "GREECE"                                                             
   11 "SPAIN"                                                              
   12 "PORTUGAL"                                                           
   13 "EAST GERMANY"                                                       
  /                                                                        
 V7                                                                        
    1 "FRANCE"                                                             
    2 "BELGIUM"                                                            
    3 "NETHERLANDS"                                                        
    4 "WEST GERMANY"                                                       
    5 "ITALY"                                                              
    6 "LUXEMBOURG"                                                         
    7 "DENMARK"                                                            
    8 "IRELAND"                                                            
    9 "GREAT BRITAIN"                                                      
   10 "NORTHERN IRELAND"                                                   
   11 "GREECE"                                                             
   12 "SPAIN"                                                              
   13 "PORTUGAL"                                                           
   14 "EAST GERMANY"                                                       
  /                                                                        
 V10                                                                       
    1 "FRANCE"                                                             
    2 "BELGIUM"                                                            
    3 "NETHERLANDS"                                                        
    4 "GERMANY"                                                            
    5 "ITALY"                                                              
    6 "LUXEMBOURG"                                                         
    7 "DENMARK"                                                            
    8 "IRELAND"                                                            
    9 "GREAT BRITAIN"                                                      
   10 "NORTHERN IRELAND"                                                   
   11 "GREECE"                                                             
   12 "SPAIN"                                                              
   13 "PORTUGAL"                                                           
 /                                                                         
 V16                                                                       
    1 "AT PRESENT ADDRESS"                                                 
    2 "AT ANOTHER ADDRESS"                                                 
    3 "DON'T KNOW IF REGISTERED"                                           
    4 "DOES NOT APPEAR AT ALL"                                             
    0 "NO/<NA>"                                                            
 /                                                                         
 V17 TO V30                                                                
  1 "MENTIONED"                                                            
  0 "NOT MENTIONED"                                                        
  9 "INAP - NOT 0 IN V16"                                                  
 /                                                                         
 V31                                                                       
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - DOCUMENT"                                                    
 /                                                                         
 .                                                                         
DOCUMENT V31                                                               
    INAP: NOT CODED 1 IN V17 TO V29                                        
 .                                                                         
VALUE LABEL                                                                
 V32 TO V46                                                                
    1 "LOT OF TRUST"                                                       
    2 "SOME TRUST"                                                         
    3 "NOT VERY MUCH TRUST"                                                
    4 "NO TRUST AT ALL"                                                    
    5 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V47 V48                                                                   
    1 "A GREAT DEAL"                                                       
    2 "TO SOME EXTENT"                                                     
    3 "NOT MUCH"                                                           
    4 "NOT AT ALL"                                                         
    5 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V49                                                                       
    1 "FOR - VERY MUCH"                                                    
    2 "FOR - TO SOME EXTENT"                                               
    3 "AGAINST - TO SOME EXTENT"                                           
    4 "AGAINST - VERY MUCH"                                                
    5 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V50                                                                       
    1 "A GOOD THING"                                                       
    3 "NEITHER GOOD NOR BAD"                                               
    2 "A BAD THING"                                                        
    4 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V51                                                                       
    1 "BENEFITED"                                                          
    2 "NOT BENEFITED"                                                      
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V52                                                                       
    1 "WILL BE BENEFITING"                                                 
    2 "WON'T BE BENEFITING"                                                
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V53                                                                       
    1 "VERY SORRY"                                                         
    2 "INDIFFERENT"                                                        
    3 "VERY RELIEVED"                                                      
    4 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V54 V55                                                                   
    1 "VERY SATISFIED"                                                     
    2 "FAIRLY SATISFIED"                                                   
    3 "NOT VERY SATISFIED"                                                 
    4 "NOT AT ALL SATISFIED"                                               
    5 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V56                                                                       
    1 "TOO MANY ISSUES"                                                    
    2 "RIGHT N OF ISSUES"                                                  
    3 "MORE ISSUES"                                                        
    4 "SOME ISSUES MORE"                                                   
    5 "NOT THOUGHT ABOUT"                                                  
    6 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V57                                                                       
    1 "GENERAL FEELING"                                                    
    2 "SPECIFIC ISSUES"                                                    
    3 "NOT SPECIFIED"                                                      
    9 "INAP - 0 5 6 IN V56"                                                
 /                                                                         
 V58                                                                       
    1 "VOTED"                                                              
    2 "DID NOT VOTE"                                                       
    3 "CANT REMEMB/REFUSED"                                                
    0 "<NA>"                                                               
 /                                                                         
 V59                                                                       
   90 "OTHER PARTY"                                                        
   95 "VOTED BLANC"                                                        
   98 "DON'T REMEMBER"                                                     
    0 "NA/REFUSAL"                                                         
   99 "INAP - NOT 1 V58"                                                   
 /                                                                         
 V60                                                                       
    1 "NO CHOICE"                                                          
    2 "MALE CANDIDATE"                                                     
    3 "FEMALE CANDIDATE"                                                   
    4 "DONT REMEMBER"                                                      
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - NOT 3 7-10 V7"                                               
 /                                                                         
 V61                                                                       
    1 "NO PREFERENCE"                                                      
    2 "MALE CANDIDATES"                                                    
    3 "FEMALE CANDIDATES"                                                  
    4 "MALE AND FEMALE"                                                    
    5 "DONT REMEMBER"                                                      
    6 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - NOT 2 5 6 V7"                                                
 /                                                                         
 V62                                                                       
    1 "VERY IMPORTANT"                                                     
    2 "IMPORTANT"                                                          
    3 "NOT VERY IMPORTANT"                                                 
    4 "NOT IMPORTANT AT ALL"                                               
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - SEE DOCUMENT"                                                
 /                                                                         
 .                                                                         
DOCUMENT V62                                                               
    INAP: OR NOT CODED 2-3 IN V60 OR NOT CODED 2-4 IN V61                  
 .                                                                         
VALUE LABEL                                                                
 V63                                                                       
    1 "VERY IMPORTANT"                                                     
    2 "IMPORTANT"                                                          
    3 "LITTLE IMPORTANCE"                                                  
    4 "NO IMPORTANCE AT ALL"                                               
    5 "NO FEMALE CANDIDATES"                                               
    6 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - NOT 1 IN V58"                                                
 /                                                                         
 V64 TO V67                                                                
    1 "CORRECT"                                                            
    2 "INCORRECT"                                                          
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V68 TO V71                                                                
    1 "QUITE LIKE HIM"                                                     
    2 "DONT LIKE HIM"                                                      
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V72 TO V85                                                                
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    9 "<NA>"                                                               
 /                                                                         
 V86 V87                                                                   
    1 "STANDING STILL"                                                     
    2 "2"                                                                  
    3 "3"                                                                  
    4 "4"                                                                  
    5 "5"                                                                  
    6 "6"                                                                  
    7 "AS FAST AS POSSIBLE"                                                
    8 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V88                                                                       
    1 "FOR"                                                                
    2 "AGAINST"                                                            
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V89                                                                       
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V90 TO V100                                                               
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
    9 "INAP - NOT 1 V89"                                                   
 /                                                                         
 V101                                                                      
    1 "NOT AT ALL/ALSO EUROP"                                              
   10 "VERY MUCH/ALSO EUROP"                                               
   11 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V102                                                                      
    1 "GREAT CONFIDENCE"                                                   
    2 "FAIR AMOUNT OF CON"                                                 
    3 "NOT VERY MUCH CON"                                                  
    4 "NO CONFIDENCE"                                                      
    5 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V103 TO V108                                                              
    1 "CANNOT RELY AT ALL"                                                 
   10 "CAN RELY COMPLETELY"                                                
   11 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V109 V110                                                                 
    1 "NO POWER AT ALL"                                                    
   10 "GREAT DEAL OF POWER"                                                
   11 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V111 V112                                                                 
    1 "NO EFFECT AT ALL"                                                   
   10 "VERY BIG EFFECT"                                                    
   11 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V113 V114                                                                 
    1 "VERY BAD IDEA"                                                      
   10 "VERY GOOD IDEA"                                                     
   11 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V115 TO V122                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    9 "<NA>"                                                               
 /                                                                         
 V123 TO V131                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    9 "INAP - NOT 2 V58"                                                   
 /                                                                         
 V132                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V133 TO V136                                                              
    1 "IT DOESN'T MATTER AT ALL"                                           
   10 "IT MATTERS A GREAT DEAL"                                            
   11 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V137                                                                      
    1 "NATIONAL CURRENCY"                                                  
   10 "COMMON CURRENCY"                                                    
   11 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V138 TO V148                                                              
    1 "NATIONAL CURRENCY"                                                  
   10 "COMMON CURRENCY"                                                    
   11 "DK"                                                                 
    0 "<NA>"                                                               
   99 "INAP - DOCUMENT"                                                    
 /                                                                         
 V149                                                                      
    1 "EMPLOYMENT PROGRAMME"                                               
   10 "SINGLE MARKET"                                                      
   11 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V150 TO V160                                                              
    1 "EMPLOYMENT PROGRAMME"                                               
   10 "SINGLE MARKET"                                                      
   11 "DK"                                                                 
    0 "<NA>"                                                               
   99 "INAP - DOCUMENT"                                                    
 /                                                                         
 V161                                                                      
    1 "REMOVE BORDERS"                                                     
   10 "TIGHTER BORDER CONTR"                                               
   11 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V162 TO V172                                                              
    1 "REMOVE BORDERS"                                                     
   10 "TIGHTER BORDER CONTR"                                               
   11 "DK"                                                                 
    0 "<NA>"                                                               
   99 "INAP - DOCUMENT"                                                    
 /                                                                         
 .                                                                         
DOCUMENT V138 TO V148 V150 TO V160 V162 TO V172                            
   INAP: NO MORE PARTIES CLASSIFIED FOR GIVEN COUNTRIES                    
 .                                                                         
VALUE LABEL                                                                
 V173 V174 V175                                                            
    1 "NATIONAL ISSUE 1"                                                   
    2 "FIGHT UNEMPLOYMENT"                                                 
    3 "STABLE PRICES"                                                      
    4 "NATIONAL ISSUE 2"                                                   
    5 "EUROP UNIFICATION"                                                  
    6 "IMMIGRATION PROBLEMS"                                               
    7 "NATIONAL ISSUE 3"                                                   
    8 "AGRICULT SURPLUSES"                                                 
    9 "PROTECT ENVIRONMENT"                                                
   10 "NATIONAL ISSUE 4"                                                   
   11 "FIGHTING CRIME"                                                     
   12 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V176                                                                      
   90 "OTHER PARTY"                                                        
   95 "NONE"                                                               
   96 "<NOT DOCUMENTED>"                                                   
   97 "REFUSED"                                                            
   98 "DK"                                                                 
    0 "<NA>"                                                               
   99 "INAP - 0 12 IN V173"                                                
 /                                                                         
 V179                                                                      
   90 "OTHER PARTY"                                                        
   95 "NONE"                                                               
   96 "<NOT DOCUMENTED>"                                                   
   97 "REFUSED"                                                            
   98 "DK"                                                                 
    0 "<NA>"                                                               
   99 "INAP - 0 12 IN V174"                                                
 /                                                                         
 V182                                                                      
   90 "OTHER PARTY"                                                        
   95 "NONE"                                                               
   96 "<NOT DOCUMENTED>"                                                   
   97 "REFUSED"                                                            
   98 "DK"                                                                 
    0 "<NA>"                                                               
   99 "INAP - 0 12 IN V175"                                                
 /                                                                         
 V177 V178                                                                 
    1 "REGIONAL"                                                           
    2 "NATIONAL"                                                           
    3 "EUROPEAN"                                                           
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - 0 12 IN V173"                                                
 /                                                                         
 V180 V181                                                                 
    1 "REGIONAL"                                                           
    2 "NATIONAL"                                                           
    3 "EUROPEAN"                                                           
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - 0 12 IN V174"                                                
 /                                                                         
 V183 V184                                                                 
    1 "REGIONAL"                                                           
    2 "NATIONAL"                                                           
    3 "EUROPEAN"                                                           
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - 0 12 IN V175"                                                
 /                                                                         
 V185                                                                      
    1 "ADVANTAGES"                                                         
    2 "DISADVANTAGES"                                                      
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V186                                                                      
    1 "IN FAVOUR"                                                          
    2 "NOT IN FAVOUR"                                                      
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V187                                                                      
    1 "ECU PLUS OWN CURR"                                                  
    2 "OWN CURRENCY ONLY"                                                  
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - NOT 2 V186"                                                  
 /                                                                         
 V188 TO V192                                                              
    1 "APPROVE STRONGLY"                                                   
    2 "APPROVE SOMEWHAT"                                                   
    3 "DISSAPROVE SOMEWHAT"                                                
    4 "DISSAPROVE STRONGLY"                                                
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP-NOT 1 3-5 9 V10"                                               
 /                                                                         
 V193 TO V196                                                              
    1 "IS A MEMBER"                                                        
    2 "PROBABLY JOIN"                                                      
    3 "CERTAINLY NOT JOIN"                                                 
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP-NOT 1 3-5 9 V10"                                               
 /                                                                         
 V197 TO V208                                                              
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V209                                                                      
    1 "TOO MANY"                                                           
    2 "A LOT - NOT TOO MANY"                                               
    3 "NOT MANY"                                                           
    4 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V210                                                                      
    1 "EXTENDED"                                                           
    2 "RESTRICTED"                                                         
    3 "LEFT AS THEY ARE"                                                   
    4 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V211                                                                      
    1 "BIG PROBLEM"                                                        
    2 "NOT A BIG PROBLEM"                                                  
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V212                                                                      
    1 "BELGIUM"                                                            
    2 "DENMARK"                                                            
    3 "GERMANY"                                                            
    4 "GREECE"                                                             
    5 "SPAIN"                                                              
    6 "FRANCE"                                                             
    7 "IRELAND"                                                            
    8 "ITALY"                                                              
    9 "LUXEMBURG"                                                          
   10 "NETHERLANDS"                                                        
   11 "PORTUGAL"                                                           
   12 "UNITED KINGDOM"                                                     
   13 "NONE OF THESE"                                                      
   14 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V213 TO V218                                                              
    1 "TEND TO AGREE"                                                      
    2 "TEND TO DISAGREE"                                                   
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V219                                                                      
    1 "BELGIUM"                                                            
    2 "DENMARK"                                                            
    3 "GERMANY"                                                            
    4 "GREECE"                                                             
    5 "SPAIN"                                                              
    6 "FRANCE"                                                             
    7 "IRELAND"                                                            
    8 "ITALY"                                                              
    9 "LUXEMBURG"                                                          
   10 "NETHERLANDS"                                                        
   11 "PORTUGAL"                                                           
   12 "UK/GB/ENGLAND"                                                      
   13 "NONE OF THESE"                                                      
   14 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V220                                                                      
    1 "ACCEPT MORE"                                                        
    2 "CLOSER RELATIONS"                                                   
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V221 V222                                                                 
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V223                                                                      
    1 "YES, COULD BECOME A DANGER"                                         
    2 "NO, NOT"                                                            
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V224                                                                      
    1 "SHOULD LEAVE EC"                                                    
    2 "COMPL INDEPENDENCE"                                                 
    3 "INCR CONFORM TO EC"                                                 
    4 "UNITED STATES"                                                      
    5 "DK"                                                                 
    9 "INAP - NOT 7 IN V7"                                                 
 /                                                                         
 V225                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DIDNT VOTE"                                                         
    4 "DONT REMEMBER"                                                      
    5 "REFUSAL"                                                            
    9 "INAP - NOT 7 IN V7"                                                 
 /                                                                         
 V281                                                                      
    1 "FOR"                                                                
    2 "AGAINST"                                                            
    3 "DK"                                                                 
    9 "INAP - NOT 7 IN V7"                                                 
 /                                                                         
 V282                                                                      
    1 "FOR"                                                                
    2 "AGAINST"                                                            
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - NOT 2 3 V281"                                                
 /                                                                         
 V283                                                                      
    1 "IN LAST DAYS"                                                       
    2 "DURING CAMPAIGN"                                                    
    3 "BEFORE CAMPAIGN"                                                    
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - DOCUMENT"                                                    
 /                                                                         
 V284                                                                      
    1 "NO"                                                                 
    2 "SOCIALDEMOKRATIET"                                                  
    3 "RADIKALE VENSTRE"                                                   
    4 "KONSERV FOLKEPARTI"                                                 
    5 "CENTRUM DEMOKRATERNE"                                               
    6 "SOCIALIST FOLKEPARTI"                                               
    7 "JUNIBEVAEGELSEN"                                                    
    8 "FOLKEBEVAEGELSEN"                                                   
    9 "KRISTEL FOLKEPARTI"                                                 
   10 "VENSTRE"                                                            
   11 "FREMSKRIDTSPARTIET"                                                 
   12 "SPOILING MY VOTE"                                                   
   13 "NOT VOTING AT ALL"                                                  
   14 "DONT KNOW"                                                          
   15 "REFUSAL"                                                            
   99 "INAP - DOCUMENT"                                                    
 /                                                                         
 .                                                                         
DOCUMENT V283 V284                                                         
      INAP: NOT CODED 7 IN V7 AND NOT CODED 1 IN V58                       
 .                                                                         
VALUE LABEL                                                                
 V226 TO V280                                                              
  1 "MENTIONED"                                                            
  0 "NOT MENTIONED"                                                        
  8 "<NA>"                                                                 
  9 "INAP - DOCUMENT"                                                      
 /                                                                         
 .                                                                         
DOCUMENT V226 TO V280                                                      
      INAP: NOT CODED 7 IN V7 AND NOT CODED 1 IN V58                       
 .                                                                         
VALUE LABEL                                                                
 V285                                                                      
    1 "LEFT"                                                               
   10 "RIGHT"                                                              
   97 "REFUSAL"                                                            
   98 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V286                                                                      
    1 "LEFT"                                                               
    2 "CENTRE"                                                             
    3 "RIGHT"                                                              
    4 "NA/DK/REFUSAL"                                                      
 /                                                                         
 V287                                                                      
    1 "(1-4) LEFT"                                                         
    2 "(5-6) CENTRE"                                                       
    3 "(7-10) RIGHT"                                                       
    4 "NA/DK/REFUSAL"                                                      
 /                                                                         
 V288 TO V298                                                              
    1 "LEFT"                                                               
   10 "RIGHT"                                                              
   11 "DK"                                                                 
    0 "<NA>"                                                               
   99 "INAP - DOCUMENT"                                                    
 /                                                                         
 .                                                                         
DOCUMENT V288 TO V298                                                      
   INAP: NO MORE PARTIES CLASSIFIED FOR GIVEN COUNTRIES                    
 .                                                                         
VALUE LABEL                                                                
 V299                                                                      
    1 "VERY CLOSE"                                                         
    2 "FAIRLY CLOSE"                                                       
    3 "MERELY SYMPATHISER"                                                 
    4 "CLOSE TO NO PARTY"                                                  
    5 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V300                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - NOT 4 5 V299"                                                
 /                                                                         
 V301                                                                      
   90 "OTHER PARTY"                                                        
   95 "<SEE DOCUMENT>"                                                     
   97 "<SEE DOCUMENT>"                                                     
   98 "NO ANSWER/DK"                                                       
    0 "<NA>"                                                               
   99 "INAP"                                                               
 /                                                                         
 .                                                                         
DOCUMENT V301 V302                                                         
       INAP: OR NOT CODED 1-3 IN V299 OR NOT CODED 1 IN V300               
 .                                                                         
VALUE LABEL                                                                
 V302                                                                      
    1 "CLOSE TO MY PARTY"                                                  
    2 "NOT BUT A SIMILAR"                                                  
    3 "CLOSE TO ANOTHER"                                                   
    4 "NOT CLOSE TO ANY"                                                   
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - DOCUMENT"                                                    
 /                                                                         
 V303                                                                      
    1 "VERY CLOSE"                                                         
    2 "FAIRLY CLOSE"                                                       
    3 "MERELY SYMPATHISER"                                                 
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - NOT 1-3 V302"                                                
 /                                                                         
 V304                                                                      
    1 "VERY CLOSE"                                                         
    2 "FAIRLY CLOSE"                                                       
    3 "MERELY SYMPATHISER"                                                 
    4 "NOT CLOSE TO ANY"                                                   
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - NOT 2-3 V300"                                                
 /                                                                         
 V305                                                                      
   90 "OTHER PARTY"                                                        
   95 "VOTE BLANK"                                                         
   96 "WOULD NOT VOTE"                                                     
   98 "DK"                                                                 
    0 "NO ANSWER/<NA>"                                                     
 /                                                                         
 V306                                                                      
    1 "VOTED"                                                              
    2 "DID NOT VOTE"                                                       
    3 "CANT REMEMB/REFUSED"                                                
    0 "<NA>"                                                               
 /                                                                         
 V307                                                                      
   90 "OTHER PARTY"                                                        
   95 "VOTED BLANK/SPOILED"                                                
   98 "DON'T REMEMBER"                                                     
    0 "NO ANSWER/<NA>"                                                     
   99 "INAP - NOT 1 V306"                                                  
 /                                                                         
 V308                                                                      
   10 "(RC) RIFUND COMUNIST"                                               
   11 "(PDS) P DEM SINISTRA"                                               
   15 "LISTA PANNELLA"                                                     
   16 "LA RETE"                                                            
   19 "PROGRESSISTI"                                                       
   20 "(PSI) P SOCIALISTA"                                                 
   31 "SOCDEM P L LIBERTA"                                                 
   42 "(AD) ALLEANZA DEM"                                                  
   50 "FED D VERDI"                                                        
   61 "(PPI) P POPOLARE"                                                   
   62 "(CCD) C CRIST DEMOCR"                                               
   64 "PATTO PER L'ITALIA"                                                 
   71 "FORZA ITALIA"                                                       
   72 "POLO P L LIBERTA"                                                   
   73 "POLO D BUON GOVERNO"                                                
   75 "LEGA NORD"                                                          
   80 "(AN) ALL NAZIONALE"                                                 
   90 "OTHER PARTY"                                                        
   95 "DID VOTE BLANK"                                                     
   98 "DON'T REMEMBER"                                                     
   00 "NO ANSWER"                                                          
   99 "INAP"                                                               
 /                                                                         
 .                                                                         
DOCUMENT V308                                                              
    INAP: NOT CODED 5 IN V7 AND NOT CODED 1 IN V306                        
 .                                                                         
VALUE LABEL                                                                
 V309 TO V319                                                              
    1 "NOT AT ALL PROBABLE"                                                
   10 "VERY PROBABLE"                                                      
   11 "DK"                                                                 
    0 "<NA>"                                                               
   99 "INAP - DOCUMENT"                                                    
 /                                                                         
 .                                                                         
DOCUMENT V314 TO V319                                                      
    INAP: NO MORE PARTIES CLASSIFIED FOR GIVEN COUNTRIES                   
 .                                                                         
VALUE LABEL                                                                
 V320 V321                                                                 
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V322                                                                      
    1 "SINGLE"                                                             
    2 "MARRIED"                                                            
    3 "LIVING AS MARRIED"                                                  
    4 "DIVORCED"                                                           
    5 "SEPARATED"                                                          
    6 "WIDOWED"                                                            
    0 "<NA>"                                                               
 /                                                                         
 V323                                                                      
   98 "STILL STUDYING"                                                     
 /                                                                         
 V324                                                                      
    1 "UP TO 14 YEARS"                                                     
    2 "15 YEARS"                                                           
    3 "16 YEARS"                                                           
    4 "17 YEARS"                                                           
    5 "18 YEARS"                                                           
    6 "19 YEARS"                                                           
    7 "20 YEARS"                                                           
    8 "21 YEARS"                                                           
    9 "22 YEARS AND OLDER"                                                 
   10 "STILL STUDYING"                                                     
 /                                                                         
 V325                                                                      
    1 "MALE"                                                               
    2 "FEMALE"                                                             
 /                                                                         
 V327                                                                      
    1 "15-24 YEARS"                                                        
    2 "25-39 YEARS"                                                        
    3 "40-54 YEARS"                                                        
    4 "55 YEARS AND OLDER"                                                 
 /                                                                         
 V328                                                                      
    1 "15-24 YEARS"                                                        
    2 "25-34 YEARS"                                                        
    3 "35-44 YEARS"                                                        
    4 "45-54 YEARS"                                                        
    5 "55-64 YEARS"                                                        
    6 "65 YEARS AND OLDER"                                                 
 /                                                                         
 V329                                                                      
    1 "ONE PERSON"                                                         
    2 "2"                                                                  
    3 "3"                                                                  
    4 "4"                                                                  
    5 "5"                                                                  
    6 "6"                                                                  
    7 "7"                                                                  
    8 "8"                                                                  
    9 "9 AND MORE"                                                         
    0 "<NA>"                                                               
 /                                                                         
 V330 TO V339                                                              
  1 "MENTIONED"                                                            
  0 "NOT MENTIONED"                                                        
  9 "<NA>"                                                                 
 /                                                                         
 V340                                                                      
    1 "1"                                                                  
    2 "2"                                                                  
    3 "3"                                                                  
    4 "4"                                                                  
    5 "5"                                                                  
    6 "6"                                                                  
    7 "7"                                                                  
    8 "8"                                                                  
    9 "9"                                                                  
   10 "10"                                                                 
    0 "<NA/NONE>"                                                          
 /                                                                         
 V341                                                                      
    1 "LOOKING AFTER HH"                                                   
    2 "STUDENT"                                                            
    3 "UNEMPLOYED"                                                         
    4 "RETIRED"                                                            
    5 "FARMER"                                                             
    6 "FISHERMAN"                                                          
    7 "PROFESSIONAL"                                                       
    8 "SHOPOWNER&CRAFTSMEN"                                                
    9 "BUSINESS PROPRIETORS"                                               
   10 "EMPLOYED PROFESSIONAL"                                              
   11 "GENERAL MANAGEMENT"                                                 
   12 "MIDDLE MANAGEMENT"                                                  
   13 "EMPLOYED AT A DESK"                                                 
   14 "EMPLOYED TRAVELLING"                                                
   15 "EMPLOYED SERVICE"                                                   
   16 "SUPERVISOR"                                                         
   17 "SKILLED MANUAL WORKER"                                              
   18 "OTHER MANUAL WORKER"                                                
    0 "<NA>"                                                               
 /                                                                         
 V342                                                                      
    1 "FARMER"                                                             
    2 "FISHERMAN"                                                          
    3 "PROFESSIONAL"                                                       
    4 "SHOPOWNER&CRAFTSMEN"                                                
    5 "BUSINESS PROPRIETORS"                                               
    6 "EMPLOYED PROFESSIONAL"                                              
    7 "GENERAL MANAGEMENT"                                                 
    8 "MIDDLE MANAGEMENT"                                                  
    9 "EMPLOYED AT A DESK"                                                 
   10 "EMPLOYED TRAVELLING"                                                
   11 "EMPLOYED SERVICE"                                                   
   12 "SUPERVISOR"                                                         
   13 "SKILLED MANUAL WORKER"                                              
   14 "OTHER MANUAL WORKER"                                                
   15 "NEVER ANY PAID WORK"                                                
    0 "<NA>"                                                               
   99 "INAP - NOT 1-4 V341"                                                
 /                                                                         
 V343 V344                                                                 
    1 "YES"                                                                
    2 "NO"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V345                                                                      
    1 "LOOKING AFTER HH"                                                   
    2 "STUDENT"                                                            
    3 "UNEMPLOYED"                                                         
    4 "RETIRED"                                                            
    5 "FARMER"                                                             
    6 "FISHERMAN"                                                          
    7 "PROFESSIONAL"                                                       
    8 "SHOPOWNER&CRAFTSMEN"                                                
    9 "BUSINESS PROPRIETORS"                                               
   10 "EMPLOYED PROFESSIONAL"                                              
   11 "GENERAL MANAGEMENT"                                                 
   12 "MIDDLE MANAGEMENT"                                                  
   13 "EMPLOYED AT A DESK"                                                 
   14 "EMPLOYED TRAVELLING"                                                
   15 "EMPLOYED SERVICE"                                                   
   16 "SUPERVISOR"                                                         
   17 "SKILLED MANUAL WORKER"                                              
   18 "OTHER MANUAL WORKER"                                                
    0 "<NA>"                                                               
   99 "INAP - NOT 2 V344"                                                  
 /                                                                         
 V346                                                                      
    1 "FARMER"                                                             
    2 "FISHERMAN"                                                          
    3 "PROFESSIONAL"                                                       
    4 "SHOPOWNER&CRAFTSMEN"                                                
    5 "BUSINESS PROPRIETORS"                                               
    6 "EMPLOYED PROFESSIONAL"                                              
    7 "GENERAL MANAGEMENT"                                                 
    8 "MIDDLE MANAGEMENT"                                                  
    9 "EMPLOYED AT A DESK"                                                 
   10 "EMPLOYED TRAVELLING"                                                
   11 "EMPLOYED SERVICE"                                                   
   12 "SUPERVISOR"                                                         
   13 "SKILLED MANUAL WORKER"                                              
   14 "OTHER MANUAL WORKER"                                                
   15 "NEVER ANY PAID WORK"                                                
    0 "<NA>"                                                               
   99 "INAP - NOT 1-4 V345"                                                
 /                                                                         
 V347                                                                      
    1 "MIDDLE CLASS"                                                       
    2 "LOWER MIDDLE CLASS"                                                 
    3 "WORKING CLASS"                                                      
    4 "UPPER CLASS"                                                        
    5 "UPPER MIDDLE CLASS"                                                 
    6 "REFUSES"                                                            
    7 "OTHER"                                                              
    8 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V348                                                                      
    1 "RURAL/VILLAGE"                                                      
    2 "SMALL/MIDDLE TOWN"                                                  
    3 "LARGE TOWN"                                                         
    4 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V349                                                                      
    1 "ROMAN CATHOLIC"                                                     
    2 "PROTESTANT"                                                         
    3 "ORTHODOX"                                                           
    4 "JEWISH"                                                             
    5 "MUSLIM"                                                             
    6 "BUDDHIST"                                                           
    7 "HINDU"                                                              
    8 "OTHER"                                                              
    9 "NONE"                                                               
   10 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V350                                                                      
    1 "SEVERAL TIMES A WEEK"                                               
    2 "ONCE A WEEK"                                                        
    3 "A FEW TIMES A YEAR"                                                 
    4 "ONCE A YEAR OR LESS"                                                
    5 "NEVER"                                                              
    6 "DK"                                                                 
    0 "<NA>"                                                               
    9 "INAP - NOT 1-4 V349"                                                
 /                                                                         
 V351                                                                      
    1 "B"                                                                  
    2 "T"                                                                  
    3 "P"                                                                  
    4 "F"                                                                  
    5 "E"                                                                  
    6 "H"                                                                  
    7 "L"                                                                  
    8 "N"                                                                  
    9 "R"                                                                  
   10 "M"                                                                  
   11 "S"                                                                  
   12 "K"                                                                  
   97 "REFUSAL"                                                            
   98 "DK"                                                                 
 /                                                                         
 V352                                                                      
    1 "HIGHEST"                                                            
    2 "+"                                                                  
    3 "-"                                                                  
    4 "LOWEST"                                                             
    5 "DK/REFUSAL"                                                         
 /                                                                         
 V355 V356                                                                 
   99 "<NA>"                                                               
 /                                                                         
 V357                                                                      
    0 "<NA>"                                                               
 /                                                                         
 V358                                                                      
    1 "TWO (INTERV+RESP)"                                                  
    2 "THREE"                                                              
    3 "FOUR"                                                               
    4 "FIVE OR MORE"                                                       
    0 "<NA>"                                                               
 /                                                                         
 V359                                                                      
    1 "EXCELLENT"                                                          
    2 "FAIR"                                                               
    3 "AVERAGE"                                                            
    4 "BAD"                                                                
    0 "<NA>"                                                               
 /                                                                         
 V361                                                                      
  999 "NO REGION I"                                                        
 /                                                                         
 V362                                                                      
   99 "NO REGION II"                                                       
 /                                                                         
 V363                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
 /                                                                         
 V364                                                                      
    1 "BELGIE NL"                                                          
    2 "BELGIQUE FR"                                                        
    9 "INAP - NOT 2 IN V7"                                                 
 /                                                                         
 V365                                                                      
    1 "FARMER & FISHER"                                                    
    2 "PROFESSIONALS"                                                      
    3 "SHOP OWNER/CRAFTSMEN"                                               
    4 "BUSINESS PROPRIETORS"                                               
    5 "EMPLOYED PROFESS"                                                   
    6 "GENERAL MANAGEMENT"                                                 
    7 "MIDDLE MANAGEMENT"                                                  
    8 "EMPLOYED AT A DESK"                                                 
    9 "EMPLOYED TRAVELLING"                                                
   10 "EMPLOYED SERVICE JOB"                                               
   11 "SUPERVISORS"                                                        
   12 "SKILLED MAN WORKERS"                                                
   13 "OTHER MANUAL WORKER"                                                
    0 "<OTHER ANSWERS/NA>"                                                 
 /                                                                         
 V366                                                                      
    1 "SELF-EMPLOYED"                                                      
    2 "MANAGERS"                                                           
    3 "OTHER WHITE COLLARS"                                                
    4 "MANUAL WORKERS"                                                     
    5 "HOUSE PERSON"                                                       
    6 "UNEMPLOYED"                                                         
    0 "<OTHER ANSWERS/NA>"                                                 
 /                                                                         
 .                                                                         
DOCUMENT NATIONAL ISSUES Q47 (V173 V174 V175)                              
   BELGIUM                                                                 
      NATIONAL ISSUE 1   "MAINTAINING THE UNITY OF BELGIUM"                
      NATIONAL ISSUE 2   "REDUCING PUBLIC DEBT"                            
      NATIONAL ISSUE 3   "FIGHTING POLITICAL CORRUPTION"                   
      NATIONAL ISSUE 4   "SECURING PENSIONS IN THE FUTURE"                 
   DENMARK                                                                 
      NATIONAL ISSUE 1   "PRESERVIN THE WELFARE STATE INSIDE THE EU"       
      NATIONAL ISSUE 2   "REFORMING THE LABOUR MARKET"                     
      NATIONAL ISSUE 3   "REFORMING TAXATION"                              
      NATIONAL ISSUE 4   "IMPROVING MORAL STANDARDS IN POLITICS"           
   GERMANY (EAST AND WEST)                                                 
      NATIONAL ISSUE 1   "PROMOTING EQUAL LIVING CONDITIONS IN             
                                                 EAST AND WEST GERMANY"    
      NATIONAL ISSUE 2   "SOLVING THE FISCAL CRISIS"                       
      NATIONAL ISSUE 3   "PEACEFUL DEMOCRATISATION IN EASTERN EUROPE"      
      NATIONAL ISSUE 4   "SECURING THE WELFARE STATE"                      
   GREECE                                                                  
      NATIONAL ISSUE 1   "REDUCING THE COST OF LIVING"                     
      NATIONAL ISSUE 2   "FIGHTING DRUGS"                                  
      NATIONAL ISSUE 3   "DEALING WITH THE MACEDONIAN QUESTION"            
      NATIONAL ISSUE 4   "IMPROVING RELATIONS WITH TURKEY"                 
   SPAIN                                                                   
      NATIONAL ISSUE 1   "FIGHTING TERRORISM"                              
      NATIONAL ISSUE 2   "FIGHTING POLITICAL CORRUPTION"                   
      NATIONAL ISSUE 3   "SOLVING THE PROBLEMS BETWEEN AUTONOMOUS          
                                               REGIONS AND THE STATE"      
      NATIONAL ISSUE 4   "KEEPING SOCIAL PROTECTION (PENSIONS,             
                                                     SOCIAL SECURITY)      
   FRANCE                                                                  
      NATIONAL ISSUE 1   "IMPROVING EDUCATION AND TRAINING TO              
                                              PREPARE THE FUTURE"          
      NATIONAL ISSUE 2   "FIGHTING SOCIAL INEQUALITIES"                    
      NATIONAL ISSUE 3   "SECURING THE WELFARE (HEALTH CARE,               
                                                PENSIONS ETC.)             
      NATIONAL ISSUE 4   "SECURING THE BALANCE BETWEEN CITIES              
                                               AND THE COUNTRYSIDE"        
   IRELAND                                                                 
      NATIONAL ISSUE 1   "INTRODUCING A MORE FAIR SYSTEM OF TAXATION"      
      NATIONAL ISSUE 2   "INTRODUCING SENSIBLE CONTROLS ON PUBLIC          
                                                           SPENDING"       
      NATIONAL ISSUE 3   "ACHIEVING PEACE IN NORTHERN IRELAND"             
      NATIONAL ISSUE 4   "TACKLING THE DIVORCE ISSUE"                      
   NORTHERN IRELAND                                                        
      NATIONAL ISSUE 1   "KEEPING TAXES LOW"                               
      NATIONAL ISSUE 2   "REFORMING THE HEALTH SERVICE"                    
      NATIONAL ISSUE 3   "ACHIEVING PEACE IN NORTHERN IRELAND"             
      NATIONAL ISSUE 4   "ENACTING A BILL OF RIGHTS"                       
   ITALY                                                                   
      NATIONAL ISSUE 1   "REDUCING PUBLIC DEBT"                            
      NATIONAL ISSUE 2   "ALLEVIATE NORTH SOUTH DIFFERENCES"               
      NATIONAL ISSUE 3   "EFFECTUATING THE INSTITUTIONAL AND               
                                                     ELECTORAL REFORM"     
      NATIONAL ISSUE 4   "ESTABLISHING RULES FOR THE TELEVISION SECTOR"    
   LUXEMBOURG                                                              
      NATIONAL ISSUE 1   "DEVELOPING A NATIONAL UNIVERSITY"                
      NATIONAL ISSUE 2   "HARMONISING THE PENSION SCHEMES IN A             
                                          SOCIALLY JUSTIFIED MANNER"       
      NATIONAL ISSUE 3   "ALLOWING CITIZENS OF THE EU(EC) COUNTRIES        
                                   TO VOTE AND RUN IN GENERAL ELECTIONS"   
      NATIONAL ISSUE 4   "TO DEPOLITICIZE THE WRITTEN PRESS"               
   NETHERLANDS                                                             
      NATIONAL ISSUE 1   "FIGHT THE ABUSE OF SOCIAL SECURITY"              
      NATIONAL ISSUE 2   "STRENGTHEN DUTCH INDUSTRY"                       
      NATIONAL ISSUE 3   "ENSURE GOOD OLD AGE PENSIONS"                    
      NATIONAL ISSUE 4   "BRING POLITICS CLOSER TO CITIZENS"               
   PORTUGAL                                                                
      NATIONAL ISSUE 1   "PROMOTING ECONOMIC DEVELOPMENT"                  
      NATIONAL ISSUE 2   "INCREASING SOCIAL PROTECTION"                    
      NATIONAL ISSUE 3   "FIGHTING DRUGS"                                  
      NATIONAL ISSUE 4   "FIGHTING CORRUPTION IN POLITICS AND ECONOMICS"   
   GREAT BRITAIN                                                           
      NATIONAL ISSUE 1   "KEEPING TAXES LOW"                               
      NATIONAL ISSUE 2   "REFORMING THE HEALTH SERVICE"                    
      NATIONAL ISSUE 3   "SOLVING THE NORTHERN IRELAND PROBLEM"            
      NATIONAL ISSUE 4   "ENACTING A BILL OF RIGHTS"                       
 .                                                                         
DOCUMENT V59 (Q15 EUROPEAN ELECTIONS VOTE)                                 
      FRANCE                                                               
          05 "LUTTE OUVRIERE"                                              
          10 "LISTE PRESENTEE PAR LE PARTI COMMUNISTE FRANCAIS (PC)"       
          19 "L"AUTRE POLITIQUE"                                           
          20 "L"EUROPE SOLIDAIRE - PARTI SOCIALISTE (PS)"                  
          25 "LISTE POUR L"EUROPE DES TRAVAILLEURS ET DE LA"               
          30 "ENERGIE RADICALE"                                            
          50 "UNION ECOLOGISTES POUR L"EUROPE"                             
          51 "GENERATION ECOLOGIE POUR L"EUROPE -"                         
          55 "L"EUROPE COMMENCE A SARAJEVO"                                
          56 "(CPN) CHASSE,PECHE ET NATURE TRADITIONS"                     
          58 "LISTE REGIONALISTE ET FEDERALISTE -"                         
          65 "L"UNION (UDF/RPR) - UNION POR LA DEMOCRATIE"                 
          69 "LISTE DE LA MAJORITE POUR L"AUTRE EUROPE"                    
          80 "CONTRE L"EUROPE DE MAASTRICHT - ALLEZ LA FRANCE"             
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER/REFUSAL"                                           
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      BELGIUM                                                              
          15 "(GU) GAUCHES UNIES <UNITED LEFT-WINGS>"                      
          16 "(PTB) PARTI DU TRAVAIL DE BELGIQUE <LABOUR PARTY>"           
          19 "(RGB) ROOD-GROEN BEWEGING <RED-GREEN MOVEMENT>"              
          20 "(PS) PARTI SOCIALISTE BELGE <SOCIALIST PARTY - FRENCH>"      
          21 "(SP) BELGISCHE SOCIALISTISCHE PARTIJ"                        
          22 "(PVDA) PARTIJ VAN DE ARBEID"                                 
          41 "(VLD) VLAAMSE LIBERALEN EN DEMOCRATEN"                       
          50 "<VU> VOLKSUNIE <FLEMISH NATIONALISTS>"                       
          51 "(PRL/FDF) PARTI DES REFORMES ET DE LA LIBERTE/"              
          52 "(VB) VLAAMS BLOK <FLEMISH BLOCK>"                            
          55 "(ECOLO) PARTI ECOLOGISTE <ECOLOGISTS>"                       
          56 "(AGALEV) ANDERS GAAN LEVEN <LIVE DIFFERENTLY -"              
          57 "(WOW) WARDIG OUDER WORDEN"                                   
          58 "(AGIR) AVANT-GARDE D"INITIATIVE REGIONALISTE"                
          60 "(PSC) PARTI SOCIAL-CHRETIEN"                                 
          61 "(CVP) CHRISTELIJKE VOLKSPARTIJ"                              
          81 "(FN) FRONT NATIONAL"                                         
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER / REFUSAL"                                         
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      NETHERLANDS                                                          
          14 "(SP) SOCIALISTISCHE PARTIJ <SOCIALIST PARTY>"                
          17 "GROEN LINKS:"                                                
          20 "(PVDA) PARTIJ VAN DE ARBEID/EUROPESE SOCIAALDEMOCRATEN"      
          22 "(D"66) DEMOCRATEN 66"                                        
          50 "DE GROENEN"                                                  
          57 "<CD> CENTRUM DEMOCRATEN"                                     
          63 "(CDA) CHRISTEN DEMOCRATISCH APPEL/EUROPESE VOLKSPARTIJ"      
          70 "(VVD) VOLKSPARTIJ VOOR VRIJHEID EN DEMOCRATIE/"              
          83 "SGP/GPV/RPF"                                                 
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER/REFUSAL"                                           
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      GERMANY (WEST AND EAST)                                              
          10 "(PDS) PARTEI DES DEMOKRATISCHEN SOZIALISMUS"                 
          20 "(SPD) SOZIALDEMOKRATISCHE PARTEI"                            
          40 "(FDP) FREIE DEMOKRATISCHE PARTEI"                            
          50 "BUENDNIS 90 / DIE GRUENEN"                                   
          51 "(OEDP) OEKOLOGISCH-DEMOKRATISCHE PARTEI"                     
          53 "DIE GRAUEN - GRAUE PANTHER <THE GREYS>"                      
          54 "FORUM"                                                       
          58 "STATT PARTEI - DIE UNABHAENGIGEN <INSTEAD PARTY>"            
          60 "(CDU-CSU) CHRISTLICH DEMOKRATISCHE - SOZIALE UNION"          
          70 "BUND FREIER BUERGER"                                         
          80 "(NPD) NATIONALDEMOKRATISCHE PARTEI"                          
          81 "DIE REPUBLIKANER"                                            
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER / REFUSAL"                                         
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      ITALY                                                                
          10 "RIFONDAZIONE COMUNISTA"                                      
          11 "(PDS) PARTITO DEMOCRATICO DELLA SINISTRA"                    
          15 "LISTA PANNELLA - RIFORMATORI"                                
          16 "LA RETE - MOVIMENTO DEMOCRATICO"                             
          21 "(PSI-AD) PARTITO SOCIALISTA ITALIANO -"                      
          30 "(PSDI) PARTITO SOCIALISTA DEMOCRATICO ITALIANO"              
          40 "(PRI) PARTITO REPUBLICANO ITALIANO"                          
          50 "FEDERAZIONE DEI VERDI"                                       
          54 "(UV) UNIONE VALDOSTANA"                                      
          61 "(PPI) PARTITO POPOLARE ITALIANO"                             
          63 "PATTO SEGNI"                                                 
          70 "(PLI) PARTITO LIBERALEITALIANO"                              
          71 "FORZA ITALIA"                                                
          75 "LEGA NORD"                                                   
          80 "ALLEANZA NAZIONALE"                                          
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER/REFUSAL"                                           
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      LUXEMBOURG                                                           
          10 "(KP-PC) KOMMUNISTESCH PARTEI"                                
          11 "NEI LENK"                                                    
          20 "(LSAP-POSL) LETZEBURGER SOZIALISTISCH ARBECHTERPARTEI"       
          50 "(GAP/GLEI) DE GRENG ALTERNATIV /"                            
          59 "(GLS) GROUPEMENT FIR D"LETZEBUERGER SOUVERAENITEIT"          
          60 "(CSV-PCS) CHRESCHTLECH-SOZIAL VOLLEKSPARTEI"                 
          70 "(DP-PD) DEMOKRATESCH PARTEI"                                 
          79 "(ADR) AKTIOUNSKOMITEE FIR DEMOKRATIE A"                      
          80 "NATIONALBEWEGUNG"                                            
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER/REFUSAL"                                           
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      DENMARK                                                              
          15 "(SF) SOCIALISTISK FOLKEPARTI"                                
          16 "FOLKEBEVAEGELSEN MOD EF"                                     
          20 "(S) SOCIALDEMOKRATIET"                                       
          40 "(CD) CENTRUM-DEMOKRATERNE"                                   
          41 "(RV) RADIKALE VENSTRE"                                       
          52 "JUNIBEVAEGELSEN"                                             
          60 "(KF) KONSERVATIVE FOLKEPARTI"                                
          61 "(KRF) KRISTELIGT FOLKEPARTI"                                 
          70 "(V) VENSTRE - DANMARKS LIBERALE PARTI"                       
          80 "(FP) FREMSKRIDTSPARTIET"                                     
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER / REFUSAL"                                         
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      IRELAND                                                              
          15 "DEMOCRATIC LEFT"                                             
          20 "LABOUR"                                                      
          21 "(WP) WORKERS PARTY"                                          
          22 "(PD) PROGRESSIVE DEMOCRATIC PARTY"                           
          30 "(FG) FINE GAEL"                                              
          50 "GREEN PARTY"                                                 
          59 "(IND) INDEPENDENT"                                           
          60 "(FF) FIANNA FAIL"                                            
          81 "(SF) SINN FEIN"                                              
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER/REFUSAL"                                           
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      GREAT BRITAIN                                                        
          20 "THE LABOUR PARTY"                                            
          30 "(SDP) THE SOCIAL DEMOCRATIC PARTY"                           
          40 "THE LIBERAL DEMOCRATS"                                       
          50 "(SNP) THE SCOTTISH NATIONALIST PARTY"                        
          51 "THE GREEN PARTY"                                             
          52 "PLAID CYMRU"                                                 
          60 "THE CONSERVATIVE PARTY"                                      
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER/REFUSAL"                                           
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      NORTHERN IRELAND                                                     
          15 "(SDLP) SOCIAL DEMOCRATIC LABOUR PARTY"                       
          60 "CONSERVATIVES"                                               
          61 "ULSTER UNIONIST PARTY"                                       
          62 "(DUP) DEMOCRATIC UNIONIST PARTY"                             
          65 "ALLIANCE"                                                    
          81 "(SF) SINN FEIN"                                              
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER / REFUSAL"                                         
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      GREECE                                                               
          10 "(KKE) KOMMUNISTIKOU KOMMA ELLADOS"                           
          15 "(SAP) SYNASPISMOS TAES ARISTERAS -"                          
          20 "(PASOK) PANHELLINIO SOCIALISTIKO KINEMA"                     
          60 "(ND) NEA DIMOKRATIA"                                         
          51 "ENOSI IKOLOGON <ECOLOGY UNION>"                              
          61 "(POLAN) POLITIKI ANIXI"                                      
          62 "ENOSI KENTROON <UNION OF THE CENTER>"                        
          71 "(DIANA) DIMOKRATIKI ANANEOSI <DEMOCRATICAL RENEWAL>"         
          85 "(EPEN) ETHNIKI POLITIKI ENOSIS"                              
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER / REFUSAL"                                         
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      SPAIN                                                                
          10 "(IU) IZQUIERDA UNIDA"                                        
          11 "(PCPE) PARTIDO COMMUNISTA PARA ESPANA"                       
          20 "(PSOE) PARTIDO SOCIALISTA OBRERO ESPANOL"                    
          50 "LOS VERDES/ELS VERDS"                                        
          53 "(ERC) ESQUERRA REPUBLICANA DE CATALUNA"                      
          54 "(PA) PARTIDO ANDALUCISTA"                                    
          56 "(CIU) CONVERGENCIA I UNIO"                                   
          57 "<VARIOUS CENTRE REGIONAL PARTIES:>"                          
          58 "(PNV) PARTIDO NACIONALISTA VASCO"                            
          60 "(CDS) CENTRO DEMOCRATICO SOCIAL"                             
          70 "(PP) PARTIDO POPULAR"                                        
          71 "AGRUPACION DE ELECTORES JOSE M. RUIZ MATEOS"                 
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER/REFUSAL"                                           
          99 "INAP., <NOT CODED 1 IN V58>"                                 
      PORTUGAL                                                             
          10 "(CDU) COLIGACAO DEMOCRATICA UNITARIA"                        
          15 "(UDP) UNIAO DEMOCRATICA POPULAR"                             
          20 "(PS) PARTIDO SOCIALISTA"                                     
          30 "(PSD) PARTIDO SOCIAL DEMOCRATA"                              
          40 "(PSN) PARTIDO DA SOLIDARIEDADE NACIONAL"                     
          60 "(CDS/PP) PARTIDO DO CENTRA DEMOCRATICA SOCIAL/"              
          81 "(PPM) PARTIDO POPULAR MONARQUICO"                            
          90 "OTHER PARTY"                                                 
          95 "VOTED BLANK"                                                 
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER/REFUSAL"                                           
          99 "INAP., <NOT CODED 1 IN V58>"                                 
 .                                                                         
DOCUMENT PARTY CODING Q44/Q45/Q46/D1A/D5B                                  
   (V138 TO V148 V150 TO V160 V162 TO V172 V288 TO V298 V309 TO V319)      
   BELGIUM - Q44 Q45 Q46 D1A D5B                                           
        PARTY A  <VLD> VLAAMSE LIBERALEN EN DEMOCRATEN                     
                 (EX <PVV> PARTIJ VOOR VRIJHEID EN VOORUITGANG)            
        PARTY B  <CVP> CHRISTELIJKE VOLKSPARTIJ                            
        PARTY C  <SP> BELGISCHE SOCIALISTISCHE PARTIJ                      
        PARTY D  <AGALEV> ANDERS GAAN LEVEN                                
        PARTY E  VLAAMS BLOK                                               
        PARTY F  <VU> VOLKSUNIE                                            
        PARTY G  <PS> PARTI SOCIALISTE BELGE                               
        PARTY H  <PRL-FDF> PARTI DES REFORMES ET DE LA LIBERTE -           
                 FRONT DEMOCRATIQUE FRANCOPHONE                            
        PARTY I  <PSC> PARTI SOCIAL-CHRETIEN                               
        PARTY J  <ECOLO> PARTI ECOLOGISTE                                  
        PARTY K  <FN> FRONT NATIONAL                                       
        +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
        PLEASE NOTICE THAT HIGH FREQUENCIES FOR <NA> (CODED "0") IN        
        THE CASE OF SOME BELGIAN POLITICAL PARTIES RESULT FROM THEIR       
        RESPECTIVE NON-REPRESENTATION IN ONE OF THE THE DIFFERENT          
        LANGUAGE REGIONS: FLEMISH IN VLAANDEREN, FRENCH IN WALONIE,        
        FLEMISH AND FRENCH IN BRUSSELS                                     
        +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
   DENMARK - Q44 Q45 Q46 D1A D5B                                           
        PARTY A  <S> SOCIALDEMOKRATIET                                     
        PARTY B  <RV> RADIKALE VENSTRE                                     
        PARTY C  <KF> KONSERVATIVE FOLKEPARTI                              
        PARTY D  <CD> CENTRUM-DEMOKRATERNE                                 
        PARTY E  <SF> SOCIALISTISK FOLKEPARTI                              
        PARTY F  <KRF> KRISTELIGT FOLKEPARTI                               
        PARTY G  <V> VENSTRE - DANMARKS LIBERALE PARTI                     
        PARTY H  <FP> FREMSKRIDTSPARTIET                                   
   GERMANY (WEST AND EAST) - Q44 Q45 Q46 D1A                               
                             D5B (D5C OF THE GERMAN QUESTIONAIRE)          
        PARTY A  <CDU-CSU> CHRISTLICH DEMOKRATISCHE - SOZIALE UNION        
        PARTY B  <SPD> SOZIALDEMOKRATISCHE PARTEI                          
        PARTY C  <FDP> FREIE DEMOKRATISCHE PARTEI                          
        PARTY D  BUENDNIS 90 / DIE GRUENEN                                 
        PARTY E  DIE REPUBLIKANER                                          
        PARTY F  <PDS> PARTEI DES DEMOKRATISCHEN SOZIALISMUS               
   FRANCE - Q44 Q45 Q46 D1A D5B                                            
        PARTY A  <PC> PARTI COMMUNISTE                                     
        PARTY B  <PS> PARTI SOCIALISTE                                     
        PARTY C  <MRG> MOUVEMENT DES RADICAUX DE GAUCHE                    
        PARTY D  <UDF> UNION POUR LA DEMOCRATIE FRANCAISE                  
        PARTY E  <RPR> RASSEMBLEMENT POUR LA REPUBLIQUE                    
        PARTY F  <FN> FRONT NATIONAL                                       
        PARTY G  LES VERTS                                                 
        PARTY H  GENERATION ECOLOGIE                                       
   ITALY - Q44 Q45 Q46 D1A D5B                                             
        PARTY    FORZA ITALIA                                              
        PARTY    <PDS> PARTITO DEMOCRATICO DELLA SINISTRA                  
        PARTY    <PPI> PARTITO POPOLARE ITALIANO                           
        PARTY    ALLEANZA NAZIONALE                                        
        PARTY    RIFONDAZIONE COMUNISTA                                    
        PARTY    LEGA NORD                                                 
        PARTY    VERDI                                                     
   IRELAND - Q44 Q45 Q46 D1A D5B                                           
        PARTY    <FF> FIANNA FAIL                                          
        PARTY    <FG> FINE GAEL                                            
        PARTY    LABOUR                                                    
        PARTY    GREEN PARTY                                               
        PARTY    <PD> PROGRESSIVE DEMOCRATIC PARTY                         
        PARTY    <SF> SINN FEIN                                            
        PARTY    DEMOCRATIC LEFT                                           
   NORTHERN IRELAND - Q44 Q45 Q46 D1A D5B                                  
        PARTY    ALLIANCE                                                  
        PARTY    ULSTER UNIONIST PARTY                                     
        PARTY    DEMOCRATIC UNIONIST PARTY                                 
        PARTY    <SF> SINN FEIN                                            
        PARTY    <SDLP> SOCIAL DEMOCRATIC LABOUR PARTY                     
        PARTY    LABOUR                                                    
        PARTY    CONSERVATIVE                                              
        PARTY    GREEN                                                     
   LUXEMBOURG - Q44 Q45 Q46 D5B                                            
        PARTY A  <CSV-PCS> CHRESCHTLECH-SOZIAL VOLLEKSPARTEI               
        PARTY B  <LSAP-POSL> LETZEBURGER SOZIALISTISCH ARBECHTERPARTEI     
        PARTY C  <DP-PD> DEMOKRATESCH PARTEI                               
        PARTY D  <GAP/GLEI> DE GRENG ALTERNATIV /                          
                 GRENG LESCHT EKOLOGESCH INITIATIV                         
        PARTY E  <ADR> (5/6 RENTELESCHT)                                   
        PARTY F  NATIONALBEWEGUNG                                          
   LUXEMBOURG - D1A                                                        
        PARTY A  <CSV-PCS> CHRESCHTLECH-SOZIAL VOLLEKSPARTEI               
        PARTY B  <LSAP-POSL> LETZEBURGER SOZIALISTISCH ARBECHTERPARTEI     
        PARTY C  <DP-PD> DEMOKRATESCH PARTEI                               
        PARTY D  <GAP/GLEI> DE GRENG ALTERNATIV /                          
                 GRENG LESCHT EKOLOGESCH INITIATIV                         
        PARTY E  <ADR> (5/6 RENTELESCHT)                                   
        PARTY F  NATIONALBEWEGUNG                                          
        PARTY G  <KP-PC> KOMMUNISTESCH PARTEI                              
        PARTY H  NEI LENK                                                  
        PARTY I  <N.O.M.P.>                                                
        PARTY J  <GLS>                                                     
   NETHERLANDS - Q44 Q45 Q46 D1A D5B                                       
        PARTY A  <CDA> CHRISTEN DEMOCRATISCH APPEL                         
        PARTY B  <PVDA> PARTIJ VAN DE ARBEID                               
        PARTY C  <VVD> VOLKSPARTIJ VOOR VRIJHEID EN DEMOCRATIE             
        PARTY D  <D"66> DEMOCRATEN 66                                      
        PARTY E  GROEN LINKS:                                              
                 <PPR> POLITIEKE PARTIJ RADICALEN                          
                 <PSP> PACIFISTISCH-SOCIALISTISCHE PARTIJ                  
                 <CPN> COMMUNISTISCHE PERTIJ NEDERLAND                     
                 <EVP> EVANGELISCHE VOLKSPARTIJ                            
        PARTY F  <CD> CENTRUM DEMOCRATEN                                   
        PARTY G  <SGP> STAATKUNDIG GEREFORMEERDE PARTIJ                    
        PARTY H  <GPV> GEREFORMEERD POLITIEK VERBOND                       
        PARTY I  <RPF> REFORMATORISCHE POLITIEKE FEDERATIE                 
   GREAT BRITAIN - Q44 Q45 Q46 D1A D5B                                     
        PARTY A  THE CONSERVATIVE PARTY                                    
        PARTY B  THE LABOUR PARTY                                          
        PARTY C  THE LIBERAL DEMOCRATS                                     
        PARTY D  <SNP> THE SCOTTISH NATIONALIST PARTY                      
        PARTY E  PLAID CYMRU                                               
        PARTY F  THE GREEN PARTY                                           
   GREECE - Q44 Q45 Q46 D1A D5B                                            
        PART A   <PASOK> PANELLINIO SOSIALISTIKO KINIMA                    
        PART B   <ND> NEA DIMOKRATIA                                       
        PART C   POLITIKI ANIXI                                            
        PART D   <KKE> KOMMUNISTIKOU KOMMA ELLADOS                         
        PART E   <SAP> SYNASPISMOS TAES ARISTERAS -                        
                 LEFT PROGRESSIVE ALLIANCE                                 
   SPAIN - Q44 Q45 Q46 D1A D5B                                             
        PARTY A  <PSOE> PARTIDO SOCIALISTA OBRERO ESPANOL                  
        PARTY B  <PP> PARTIDO POPULAR                                      
        PARTY C  <IU> IZQUIERDA UNIDA                                      
        PARTY D  <CIU> CONVERGENCIA I UNIO                                 
        PARTY E  <PNV> PARTIDO NACIONALISTA VASCO                          
        PARTY F  <HB> HERRI BATASUNA                                       
   PORTUGAL - Q44 Q45 Q46 D1A D5B                                          
        PARTY A  <PSD> PARTIDO SOCIAL DEMOCRATA                            
        PARTY B  <CDU> COLIGACAO DEMOCRATICA UNITARIA                      
        PARTY C  <CDS/PP> PARTIDO DO CENTRO DEMOCRATICO SOCIAL/            
                 PARTIDO POPULAR                                           
        PARTY D  <PS> PARTIDO SOCIALISTA                                   
        PARTY E  <PSN> PARTIDO DO SOLIDARIEDADE NACIONAL                   
 .                                                                         
DOCUMENT V176 V179 V182 (Q48A Q49A Q50A PARTY COMPETENCE)                  
       FRANCE                                                              
          05 "(PSU) PARTI SOCIALISTE UNIFIE ET EXTREME GAUCHE"             
          10 "(PCF) PARTI COMMUNISTE FRANCAIS <COMMUNIST PARTY>"           
          20 "(PS) PARTI SOCIALISTE <SOCIALIST PARTY>"                     
          30 "(MRG) MOUVEMENT DES RADICAUX DE GAUCHE"                      
          50 "LES VERTS <GREEN PARTY>"                                     
          51 "GENERATION ECOLOGIE <ECOLOGISTS>"                            
          56 "CHASSE, PECHE, NATURE ET TRADITION"                          
          59 "(CNI) CENTRE NACIONAL DES INDEPENDANTS"                      
          60 "(RPR) RASSEMBLEMENT POUR LA REPUBLIQUE"                      
          70 "(PR-UDF) PARTI REPUBLICAIN -"                                
          71 "(CDS-UDF) CENTRE DES DEMOCRATES SOCIAUX -"                   
          72 "(RAD-UDF) RADICAUX -"                                        
          73 "(UPF) UNION POUR LE FRANCE <UNION FOR FRANCE>"               
          80 "(FN) FRONT NATIONAL ET EXTREME DROITE"                       
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       BELGIUM                                                             
          10 "(PCB/KPB) PARTI COMMUNISTE BELGE <COMMUNIST PARTY>"          
          20 "(PSB) PARTI SOCIALISTE BELGE"                                
          21 "(BSP) BELGISCHE SOCIALISTISCHE PARTIJ"                       
          41 "(VLD) VLAAMSE LIBERALEN EN DEMOCRATEN"                       
          50 "(VU) VOLKSUNIE <FLEMISH NATIONALISTS>"                       
          51 "(FDF-RW) FRONT DEMOCRATIQUE FRANCOPHONE"                     
          52 "(VLB) VLAAMS BLOK <FLEMISH BLOCK>"                           
          53 "(PRL) PARTI REFORMATEUR LIBERAL"                             
          54 "(ROSSEM) RADICALE OMVORMERS STRIJDERS EN STRUBBELAARS"       
          55 "(ECOLO) ECOLOGISTES CONFEDERES POUR L"ORGANISATION"          
          56 "(AGALEV) ANDERS GAAN LEVEN <LIVE DIFFERENTLY"                
          60 "(PSC) PARTI SOCIAL CHRETIEN"                                 
          61 "(CVP) CHRISTELIJKE VOLKSPATIJ"                               
          80 "(UDRT/RAD) UNION DEMOCRATIQUE POUR LE RESPECT"               
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          96 "<NOT DOCUMENTED>"                                            
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
      THE NETHERLANDS                                                      
          14 "(SP) SOCIALISTISCHE PARTIJ <SOCIALIST PARTY>"                
          17 "GROEN LINKS (REGENBOOG) <GREEN LEFT>:"                       
          20 "(PVDA) PARTIJ VAN DE ARBEID <LABOUR PARTY>"                  
          22 "(D"66) DEMOCRATEN 66 <DEMOCRATS "66>"                        
          52 "(U55+) UNIE 55+ <UNION 55+>"                                 
          53 "(AOV) ALGEMEEN OUDEREN VERBOND"                              
          57 "(CD) CENTRUM DEMOCRATEN <CENTRE DEMOCRATS>"                  
          63 "(CDA) CHRISTEN DEMOCRATISCH APPEL"                           
          70 "(VVD) VOLKSPARTIJ VOOR VRIJHEID EN DEMOCRATIE"               
          81 "(SGP) STAATKUNDIG GEREFORMEERDE PARTIJ"                      
          82 "(GPV) GEREFORMEERD POLITIEK VERBOND"                         
          84 "(RPF) REFORMATORISCHE POLITIEKE FEDERATIE"                   
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       GERMANY - WEST                                                      
          10 "(PDS) PARTEI DES DEMOKRATISCHEN SOZIALISMUS /"               
          20 "(SPD) SOZIALDEMOKRATISCHE PARTEI DEUTSCHLANDS"               
          40 "(FDP) FREIE DEMOKRATISCHE PARTEI"                            
          50 "BUENDNIS 90 / DIE GRUENEN <ALLIANCE 90 / GREENS>"            
          60 "(CDU-CSU) CHRISTLICH DEMOKRATISCHE UNION -"                  
          80 "(NPD) NATIONALDEMOKRATISCHE PARTEI DEUTSCHLANDS"             
          81 "DIE REPUBLIKANER <REPUBLICANS>"                              
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       ITALY                                                               
          10 "(RC) RIFONDAZIONE COMUNISTA"                                 
          11 "(PDS) PARTITO DEMOCRATICO DELLA SINISTRA"                    
          15 "LISTA PANNELLA <FORMER RADICAL LEADERS>"                     
          16 "LA RETE - MOVIMENTO PER LA DEMOCRAZIA"                       
          20 "(PSI) PARTITO SOCIALISTA ITALIANO"                           
          31 "SOCIALDEMOCRAZIA PER LA LIBERTA"                             
          42 "(AD) ALLEANZA DEMOCRATICA"                                   
          50 "FEDERAZIONE DEI VERDI <GREEN FEDERATION>"                    
          61 "(PPI) PARTITO POPOLARE ITALIANO"                             
          62 "(CCD) CENTRO CRISTIANO DEMOCRATICO"                          
          64 "PATTO PER L"ITALIA"                                          
          71 "FORZA ITALIA <ITALIAN FORCE>"                                
          75 "LEGA NORD <NORTHER LEAGUE>"                                  
          80 "(AN) ALLIANZA NAZIONALE"                                     
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       LUXEMBOURG                                                          
          10 "(KP/PC) KOMMUNISTISCHE PARTEI <COMMUNIST PARTY>"             
          11 "NEI LENK <NEW LEFT - REFORMIST SPLINTER FROM KP>"            
          20 "(LSAP-POSL) LETZEBUERGER SOZIALISTESCH"                      
          50 "(GAP/GLEI) DE GRENG ALTERNATIV - GREG LESCHT EKOLOGESC"      
          52 "(NOMP) NEUTRAL AN ONAFHAENGEG MENSCHERECHTSPARTEI"           
          59 "(GLS) GROUPEMENT FIR D"LETZEBUERGER SOUVERAENITEIT"          
          60 "(CSV/PCS) CHRESTLECH-SOZIAL VOLLEKSPARTEI"                   
          70 "(DP/PD) DEMOKRATESCH PARTEI"                                 
          79 "(ADR) AKTIOUNSKOMITEE FIR DEMOKRATIE A"                      
          80 "NATIONAL BEWEGUNG <NATIONAL MOVEMENT>"                       
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       DENMARK"                                                            
          14 "ENHEDSLISTEN - DE ROD-GRONNE <UNITED RED-GREEN>"             
          15 "(SF) SOCIALISTISK FOLKEPARTI"                                
          20 "(S) SOCIALDEMOKRATIET <SOCIAL DEMOCRATS>"                    
          30 "(FK) FAELLES KURS <COMMON COURSE>"                           
          40 "(CD) CENTRUM DEMOKRATERNE <CENTRE DEMOCRATS>"                
          41 "(RV) RADIKALE VENSTRE <SOCIAL LIBERALS>"                     
          50 "DE GRONNE <THE GREENS>"                                      
          51 "RETSFORBUNDET <SINGLE TAXERS>"                               
          60 "(KF) KONSERVATIVE FOLKEPARTI"                                
          61 "(KRF) KRISTELIGT FOLKEPARTI"                                 
          70 "(V) VENSTRE <LIBERALS>"                                      
          80 "(FP) FREMSKRIDTSPARTIET <PROGRESS PARTY>"                    
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       IRELAND                                                             
          15 "DEMOCRATIC LEFT"                                             
          20 "THE LABOUR PARTY"                                            
          21 "(WP) THE WORKERS" PARTY"                                     
          22 "(PD) PROGRESSIVE DEMOCRATS"                                  
          30 "(FG) FINE GAEL <UNITED IRELAND PARTY>"                       
          50 "THE GREEN PARTY"                                             
          59 "INDEPENDENTS"                                                
          60 "(FF) FIANNA FAIL"                                            
          81 "(SF) SINN FEIN"                                              
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       GREAT BRITAIN                                                       
          20 "THE LABOUR PARTY"                                            
          30 "(SDP) THE SOCIAL DEMOCRATIC PARTY"                           
          40 "THE LIBERAL DEMOCRATS"                                       
          50 "(SNP) SCOTTISH NATIONALIST PARTY"                            
          51 "THE GREEN PARTY"                                             
          52 "PLAID CYMRU <WELSH NATIONALISTS>"                            
          60 "THE CONSERVATIVE PARTY"                                      
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       NORTHERN IRELAND                                                    
          15 "(S.D.L.P.) SOCIAL DEMOCRATIC LABOUR PARTY"                   
          60 "CONSERVATIVES"                                               
          61 "ULSTER UNIONIST PARTY"                                       
          62 "DEMOCRATIC UNIONIST PARTY"                                   
          64 "OTHER UNIONIST"                                              
          65 "ALLIANCE"                                                    
          80 "(WP) WORKERS" PARTY"                                         
          81 "(SF) SINN FEIN"                                              
          90 "OTHER PARTY   DEMOCRATIC LEFT>"                              
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       GREECE                                                              
          10 "(KKE) KOOMOUNISTIKOU KOMMA ELLADOS"                          
          15 "(SAP) SYNASPISMOS TAES ARISTERAS"                            
          20 "(PA.SO.K) PANHELLINIO SOCIALISTIKO KINEMA"                   
          60 "(ND) NEA DIMOKRATIA <NEW DEMOCRACY>"                         
          61 "(POLAN) POLITIKI ANIXI"                                      
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       SPAIN                                                               
          10 "(I.U.) IZQUIERDA UNIDA <UNITED LEFT>"                        
          20 "(PSOE) PARTIDO SOCIALISTA OBRERO ESPANOL"                    
          53 "(ERC) ESQUERRA REPUBLICANA DE CATALUNYA"                     
          55 "(HB) HERRI BATASUNA"                                         
          56 "(CIU) CONVERGENCIA I UNIO"                                   
          57 "<VARIOUS CENTRE REGIONAL PARTIES:>"                          
          58 "(PNV) PARTIDO NACIONALISTA VASCO"                            
          60 "(CDS) CENTRO DEMOCRATICO Y SOCIAL"                           
          70 "(PP) PARTIDO POPULAR <POPULAR PARTY>"                        
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       PORTUGAL                                                            
          05 "(PRD) PARTIDO RENOVADOR DEMOCRATICO"                         
          10 "(CDU) COLIGACAO DEMOCRATICA UNITARIA"                        
          16 "(PSR) PARTIDO SOCIALISTA REVOLUCIONARIO"                     
          17 "(PCTP/MRPP) PARTIDO COMUNISTA DOS"                           
          20 "(PS) PARTIDO SOCIALISTA PORTUGUESA"                          
          30 "(PSD) PARTIDO SOCIAL DEMOCRATA"                              
          40 "(PSN) PARTIDO DA SOLIDARIDADE NACIONAL"                      
          60 "(CDS) CENTRO DEMOCRATICO SOCIAL"                             
          81 "(PPM) PARTIDO POPULAR MONARQUICO"                            
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       GERMANY - EAST                                                      
          10 "(PDS) PARTEI DES DEMOKRATISCHEN SOZIALISMUS"                 
          20 "(SPD) SOZIALDEMOKRATISCHE PARTEI DEUTSCHLANDS"               
          40 "(FDP) FREIE DEMOKRATISCHE PARTEI"                            
          50 "BUENDNIS 90 / DIE GRUENEN <ALLIANCE 90 / GREENS>"            
          60 "(CDU-CSU) CHRISTLICH DEMOKRATISCHE UNION -"                  
          61 "(DSU) DEUTSCHE SOZIALE UNION"                                
          81 "DIE REPUBLIKANER <REPUBLICANS>"                              
          90 "OTHER PARTY"                                                 
          95 "NONE"                                                        
          97 "REFUSED"                                                     
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
 .                                                                         
DOCUMENT  V301 (D3 PARTY RESPONDENT FEELS CLOSE TO)                        
       FRANCE                                                              
          05 "(PSU) PARTI SOCIALISTE UNIFIE ET EXTREME GAUCHE"             
          10 "(PCF) PARTI COMMUNISTE FRANCAIS <COMMUNIST PARTY>"           
          20 "(PS) PARTI SOCIALISTE <SOCIALIST PARTY>"                     
          30 "(MRG) MOUVEMENT DES RADICAUX DE GAUCHE"                      
          50 "LES VERTS <GREEN PARTY>"                                     
          51 "GENERATION ECOLOGIE <ECOLOGISTS>"                            
          56 "CHASSE, PECHE, NATURE ET TRADITION"                          
          59 "(CNI) CENTRE NACIONAL DES INDEPENDANTS"                      
          60 "(RPR) RASSEMBLEMENT POUR LA REPUBLIQUE"                      
          70 "(PR-UDF) PARTI REPUBLICAIN -"                                
          71 "(CDS-UDF) CENTRE DES DEMOCRATES SOCIAUX -"                   
          72 "(RAD-UDF) RADICAUX -"                                        
          73 "(UPF) UNION POUR LE FRANCE <UNION FOR FRANCE>"               
          80 "(FN) FRONT NATIONAL ET EXTREME DROITE"                       
          90 "OTHER PARTY"                                                 
          98 "NO ANSWER / DK"                                              
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       BELGIUM                                                             
          10 "(PCB/KPB) PARTI COMMUNISTE BELGE <COMMUNIST PARTY>"          
          20 "(PSB) PARTI SOCIALISTE BELGE"                                
          21 "(BSP) BELGISCHE SOCIALISTISCHE PARTIJ"                       
          41 "(VLD) VLAAMSE LIBERALEN EN DEMOCRATEN"                       
          50 "(VU) VOLKSUNIE <FLEMISH NATIONALISTS>"                       
          51 "(FDF-RW) FRONT DEMOCRATIQUE FRANCOPHONE"                     
          52 "(VLB) VLAAMS BLOK <FLEMISH BLOCK>"                           
          53 "(PRL) PARTI REFORMATEUR LIBERAL"                             
          54 "(ROSSEM) RADICALE OMVORMERS STRIJDERS EN STRUBBELAARS"       
          55 "(ECOLO) ECOLOGISTES CONFEDERES POUR L"ORGANISATION"          
          56 "(AGALEV) ANDERS GAAN LEVEN <LIVE DIFFERENTLY"                
          60 "(PSC) PARTI SOCIAL CHRETIEN"                                 
          61 "(CVP) CHRISTELIJKE VOLKSPATIJ"                               
          80 "(UDRT/RAD) UNION DEMOCRATIQUE POUR LE RESPECT"               
          90 "OTHER PARTY"                                                 
          98 "NO ANSWER / DK"                                              
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
      THE NETHERLANDS                                                      
          14 "(SP) SOCIALISTISCHE PARTIJ <SOCIALIST PARTY>"                
          17 "GROEN LINKS (REGENBOOG) <GREEN LEFT>:"                       
          20 "(PVDA) PARTIJ VAN DE ARBEID <LABOUR PARTY>"                  
          22 "(D"66) DEMOCRATEN 66 <DEMOCRATS "66>"                        
          52 "(U55+) UNIE 55+ <UNION 55+>"                                 
          53 "(AOV) ALGEMEEN OUDEREN VERBOND"                              
          57 "(CD) CENTRUM DEMOCRATEN <CENTRE DEMOCRATS>"                  
          63 "(CDA) CHRISTEN DEMOCRATISCH APPEL"                           
          70 "(VVD) VOLKSPARTIJ VOOR VRIJHEID EN DEMOCRATIE"               
          81 "(SGP) STAATKUNDIG GEREFORMEERDE PARTIJ"                      
          82 "(GPV) GEREFORMEERD POLITIEK VERBOND"                         
          84 "(RPF) REFORMATORISCHE POLITIEKE FEDERATIE"                   
          90 "OTHER PARTY"                                                 
          98 "NO ANSWER / DK"                                              
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       GERMANY - WEST                                                      
          10 "(PDS) PARTEI DES DEMOKRATISCHEN SOZIALISMUS /"               
          20 "(SPD) SOZIALDEMOKRATISCHE PARTEI DEUTSCHLANDS"               
          40 "(FDP) FREIE DEMOKRATISCHE PARTEI"                            
          50 "DIE GRUENEN <GREENS>"                                        
          60 "(CDU-CSU) CHRISTLICH DEMOKRATISCHE UNION -"                  
          80 "(NPD) NATIONALDEMOKRATISCHE PARTEI DEUTSCHLANDS"             
          81 "DIE REPUBLIKANER <REPUBLICANS>"                              
          90 "OTHER PARTY"                                                 
          98 "NO ANSWER / DK"                                              
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       ITALY                                                               
       <CODES "95", "97" AND "98" ARE NOT CLEARLY DOCUMENTED>              
          10 "(RC) RIFONDAZIONE COMUNISTA"                                 
          11 "(PDS) PARTITO DEMOCRATICO DELLA SINISTRA"                    
          15 "LISTA PANNELLA <FORMER RADICAL LEADERS>"                     
          16 "LA RETE - MOVIMENTO PER LA DEMOCRAZIA"                       
          20 "(PSI) PARTITO SOCIALISTA ITALIANO"                           
          31 "SOCIALDEMOCRAZIA PER LA LIBERTA"                             
          42 "(AD) ALLEANZA DEMOCRATICA"                                   
          50 "FEDERAZIONE DEI VERDI <GREEN FEDERATION>"                    
          60 "(DC) DEMOCRAZIA CRISTIANA"                                   
          61 "(PPI) PARTITO POPOLARE ITALIANO"                             
          62 "(CCD) CENTRO CRISTIANO DEMOCRATICO"                          
          64 "PATTO PER L"ITALIA"                                          
          71 "FORZA ITALIA <ITALIAN FORCE>"                                
          75 "LEGA NORD <NORTHER LEAGUE>"                                  
          80 "(AN) ALLIANZA NAZIONALE"                                     
          90 "OTHER PARTY"                                                 
          95 "NONE <ACCORDING TO THE FIELDQUESTIONNAIRE>"                  
          97 "REFUSAL <ACCORDING TO THE FIELDQUESTIONNAIRE>"               
          98 "DK  <ACCORDING TO THE FIELDQUESTIONNAIRE>"                   
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       LUXEMBOURG                                                          
          10 "(KP/PC) KOMMUNISTISCHE PARTEI <COMMUNIST PARTY>"             
          11 "NEI LENK"                                                    
          20 "(LSAP-POSL) LETZEBUERGER SOZIALISTESCH"                      
          50 "(GAP/GLEI) DE GRENG ALTERNATIV - GREG LESCHT EKOLOGESC"      
          52 "(NOMP) NEUTRAL AN ONAFHAENGEG MENSCHERECHTSPARTEI"           
          59 "(GLS) GROUPEMENT FIR D"LETZEBUERGER SOUVERAENITEIT"          
          60 "(CSV/PCS) CHRESTLECH-SOZIAL VOLLEKSPARTEI"                   
          70 "(DP/PD) DEMOKRATESCH PARTEI"                                 
          79 "(ADR) AKTIOUNSKOMITEE FIR DEMOKRATIE A"                      
          80 "NATIONAL BEWEGUNG <NATIONAL MOVEMENT>"                       
          90 "OTHER PARTY"                                                 
          98 "NO ANSWER / DK"                                              
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       DENMARK                                                             
          14 "ENHEDSLISTEN - DE ROD-GRONNE <UNITED RED-GREEN>"             
          15 "(SF) SOCIALISTISK FOLKEPARTI"                                
          20 "(S) SOCIALDEMOKRATIET <SOCIAL DEMOCRATS>"                    
          30 "(FK) FAELLES KURS <COMMON COURSE>"                           
          40 "(CD) CENTRUM DEMOKRATERNE <CENTRE DEMOCRATS>"                
          41 "(RV) RADIKALE VENSTRE <SOCIAL LIBERALS>"                     
          50 "DE GRONNE <THE GREENS>"                                      
          60 "(KF) KONSERVATIVE FOLKEPARTI"                                
          61 "(KRF) KRISTELIGT FOLKEPARTI"                                 
          70 "(V) VENSTRE <LIBERALS>"                                      
          80 "(FP) FREMSKRIDTSPARTIET <PROGRESS PARTY>"                    
          90 "OTHER PARTY"                                                 
          98 "NO ANSWER / DK"                                              
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       IRELAND                                                             
          15 "DEMOCRATIC LEFT"                                             
          20 "THE LABOUR PARTY"                                            
          21 "(WP) THE WORKERS" PARTY"                                     
          22 "(PD) PROGRESSIVE DEMOCRATS"                                  
          30 "(FG) FINE GAEL <UNITED IRELAND PARTY>"                       
          50 "THE GREEN PARTY"                                             
          59 "INDEPENDENTS"                                                
          60 "(FF) FIANNA FAIL"                                            
          81 "(SF) SINN FEIN"                                              
          90 "OTHER PARTY"                                                 
          98 "NO ANSWER / DK"                                              
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       GREAT BRITAIN                                                       
          20 "THE LABOUR PARTY"                                            
          30 "(SDP) THE SOCIAL DEMOCRATIC PARTY"                           
          40 "THE LIBERAL DEMOCRATS"                                       
          50 "(SNP) SCOTTISH NATIONALIST PARTY"                            
          51 "THE GREEN PARTY"                                             
          52 "PLAID CYMRU <WELSH NATIONALISTS>"                            
          60 "THE CONSERVATIVE PARTY"                                      
          90 "OTHER PARTY"                                                 
          98 "DK <ACCORDING TO THE FIELDQUESTIONNAIRE>"                    
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       NORTHERN IRELAND                                                    
          15 "(S.D.L.P.) SOCIAL DEMOCRATIC LABOUR PARTY"                   
          60 "CONSERVATIVES"                                               
          61 "ULSTER UNIONIST PARTY"                                       
          62 "DEMOCRATIC UNIONIST PARTY"                                   
          64 "OTHER UNIONIST"                                              
          65 "ALLIANCE"                                                    
          80 "(WP) WORKERS" PARTY"                                         
          81 "(SF) SINN FEIN"                                              
          90 "OTHER PARTY"                                                 
          98 "NO ANSWER / DK"                                              
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       GREECE                                                              
          10 "(KKE) KOOMOUNISTIKOU KOMMA ELLADOS"                          
          15 "(SAP) SYNASPISMOS TAES ARISTERAS"                            
          20 "(PA.SO.K) PANHELLINIO SOCIALISTIKO KINEMA"                   
          60 "(ND) NEA DIMOKRATIA <NEW DEMOCRACY>"                         
          61 "(POLAN) POLITIKI ANIXI"                                      
          90 "OTHER PARTY"                                                 
          98 "NO ANSWER / DK"                                              
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       SPAIN                                                               
       <CODES "95", "98" AND "00" ARE NOT CLEARLY DOCUMENTED>              
          10 "(I.U.) IZQUIERDA UNIDA <UNITED LEFT>"                        
          20 "(PSOE) PARTIDO SOCIALISTA OBRERO ESPANOL"                    
          53 "(ERC) ESQUERRA REPUBLICANA DE CATALUNYA"                     
          55 "(HB) HERRI BATASUNA"                                         
          56 "(CIU) CONVERGENCIA I UNIO"                                   
          57 "<VARIOUS CENTRE REGIONAL PARTIES:>"                          
          58 "(PNV) PARTIDO NACIONALISTA VASCO"                            
          60 "(CDS) CENTRO DEMOCRATICO Y SOCIAL"                           
          70 "(PP) PARTIDO POPULAR <POPULAR PARTY>"                        
          90 "OTHER PARTY"                                                 
          95 "NONE <ACCORDING TO THE FIELDQUESTIONNAIRE>"                  
          98 "DK  <ACCORDING TO THE FIELDQUESTIONNAIRE>"                   
          00 "NO ANSWER <ACCORDING TO THE FIELDQUESTIONNAIRE>"             
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       PORTUGAL                                                            
          05 "(PRD) PARTIDO RENOVADOR DEMOCRATICO"                         
          10 "(CDU) COLIGACAO DEMOCRATICA UNITARIA"                        
          16 "(PSR) PARTIDO SOCIALISTA REVOLUCIONARIO"                     
          17 "(PCTP/MRPP) PARTIDO COMUNISTA DOS"                           
          20 "(PS) PARTIDO SOCIALISTA PORTUGUESA"                          
          30 "(PSD) PARTIDO SOCIAL DEMOCRATA"                              
          40 "(PSN) PARTIDO DA SOLIDARIDADE NACIONAL"                      
          60 "(CDS) CENTRO DEMOCRATICO SOCIAL"                             
          81 "(PPM) PARTIDO POPULAR MONARQUICO"                            
          90 "OTHER PARTY"                                                 
          98 "NO ANSWER / DK"                                              
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
       GERMANY - EAST                                                      
          10 "(PDS) PARTEI DES DEMOKRATISCHEN SOZIALISMUS"                 
          20 "(SPD) SOZIALDEMOKRATISCHE PARTEI DEUTSCHLANDS"               
          40 "(FDP) FREIE DEMOKRATISCHE PARTEI"                            
          50 "BUENDNIS 90 / DIE GRUENEN <ALLIANCE 90 / GREENS>"            
          60 "(CDU-CSU) CHRISTLICH DEMOKRATISCHE UNION -"                  
          61 "(DSU) DEUTSCHE SOZIALE UNION"                                
          81 "DIE REPUBLIKANER <REPUBLICANS>"                              
          90 "OTHER PARTY"                                                 
          98 "NO ANSWER / DK"                                              
          00 "NA"                                                          
          99 "INAP., NOT CODED 1-3 IN V299 AND NOT CODED 1 IN V300>"       
 .                                                                         
DOCUMENT V305 (D4 VOTE INTENTION)                                          
       FRANCE                                                              
          05 "(PSU) PARTI SOCIALISTE UNIFIE ET EXTREME GAUCHE"             
          10 "(PCF) PARTI COMMUNISTE FRANCAIS <COMMUNIST PARTY>"           
          20 "(PS) PARTI SOCIALISTE <SOCIALIST PARTY>"                     
          30 "(MRG) MOUVEMENT DES RADICAUX DE GAUCHE"                      
          50 "LES VERTS <GREEN PARTY>"                                     
          51 "GENERATION ECOLOGIE <ECOLOGISTS>"                            
          56 "CHASSE, PECHE, NATURE ET TRADITION"                          
          59 "(CNI) CENTRE NACIONAL DES INDEPENDANTS"                      
          60 "(RPR) RASSEMBLEMENT POUR LA REPUBLIQUE"                      
          70 "(PR-UDF) PARTI REPUBLICAIN -"                                
          71 "(CDS-UDF) CENTRE DES DEMOCRATES SOCIAUX -"                   
          72 "(RAD-UDF) RADICAUX -"                                        
          73 "(UPF) UNION POUR LE FRANCE <UNION FOR FRANCE>"               
          80 "(FN) FRONT NATIONAL ET EXTREME DROITE"                       
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       BELGIUM                                                             
          10 "(PCB/KPB) PARTI COMMUNISTE BELGE <COMMUNIST PARTY>"          
          20 "(PSB) PARTI SOCIALISTE BELGE"                                
          21 "(BSP) BELGISCHE SOCIALISTISCHE PARTIJ"                       
          41 "(VLD) VLAAMSE LIBERALEN EN DEMOCRATEN"                       
          50 "(VU) VOLKSUNIE <FLEMISH NATIONALISTS>"                       
          51 "(FDF-RW) FRONT DEMOCRATIQUE FRANCOPHONE"                     
          52 "(VLB) VLAAMS BLOK <FLEMISH BLOCK>"                           
          53 "(PRL) PARTI REFORMATEUR LIBERAL"                             
          54 "(ROSSEM) RADICALE OMVORMERS STRIJDERS EN STRUBBELAARS"       
          55 "(ECOLO) ECOLOGISTES CONFEDERES POUR L"ORGANISATION"          
          56 "(AGALEV) ANDERS GAAN LEVEN <LIVE DIFFERENTLY"                
          60 "(PSC) PARTI SOCIAL CHRETIEN"                                 
          61 "(CVP) CHRISTELIJKE VOLKSPATIJ"                               
          80 "(UDRT/RAD) UNION DEMOCRATIQUE POUR LE RESPECT"               
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
      THE NETHERLANDS                                                      
          14 "(SP) SOCIALISTISCHE PARTIJ <SOCIALIST PARTY>"                
          17 "GROEN LINKS (REGENBOOG) <GREEN LEFT>:"                       
          20 "(PVDA) PARTIJ VAN DE ARBEID <LABOUR PARTY>"                  
          22 "(D"66) DEMOCRATEN 66 <DEMOCRATS "66>"                        
          52 "(U55+) UNIE 55+ <UNION 55+>"                                 
          53 "(AOV) ALGEMEEN OUDEREN VERBOND"                              
          57 "(CD) CENTRUM DEMOCRATEN <CENTRE DEMOCRATS>"                  
          63 "(CDA) CHRISTEN DEMOCRATISCH APPEL"                           
          70 "(VVD) VOLKSPARTIJ VOOR VRIJHEID EN DEMOCRATIE"               
          81 "(SGP) STAATKUNDIG GEREFORMEERDE PARTIJ"                      
          82 "(GPV) GEREFORMEERD POLITIEK VERBOND"                         
          84 "(RPF) REFORMATORISCHE POLITIEKE FEDERATIE"                   
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       GERMANY - WEST AND EAST                                             
          10 "(PDS) PARTEI DES DEMOKRATISCHEN SOZIALISMUS"                 
          20 "(SPD) SOZIALDEMOKRATISCHE PARTEI DEUTSCHLANDS"               
          40 "(FDP) FREIE DEMOKRATISCHE PARTEI"                            
          50 "BUENDNIS 90 / DIE GRUENEN <ALLIANCE 90 / GREENS>"            
          60 "(CDU-CSU) CHRISTLICH DEMOKRATISCHE UNION -"                  
          81 "DIE REPUBLIKANER <REPUBLICANS>"                              
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       ITALY                                                               
          10 "(RC) RIFONDAZIONE COMUNISTA"                                 
          11 "(PDS) PARTITO DEMOCRATICO DELLA SINISTRA"                    
          15 "LISTA PANNELLA <FORMER RADICAL LEADERS>"                     
          16 "LA RETE - MOVIMENTO PER LA DEMOCRAZIA"                       
          20 "(PSI) PARTITO SOCIALISTA ITALIANO"                           
          31 "SOCIALDEMOCRAZIA PER LA LIBERTA"                             
          42 "(AD) ALLEANZA DEMOCRATICA"                                   
          50 "FEDERAZIONE DEI VERDI <GREEN FEDERATION>"                    
          61 "(PPI) PARTITO POPOLARE ITALIANO"                             
          62 "(CCD) CENTRO CRISTIANO DEMOCRATICO"                          
          64 "PATTO PER L"ITALIA"                                          
          71 "FORZA ITALIA <ITALIAN FORCE>"                                
          75 "LEGA NORD <NORTHER LEAGUE>"                                  
          80 "(AN) ALLIANZA NAZIONALE"                                     
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       LUXEMBOURG                                                          
          10 "(KP/PC) KOMMUNISTISCHE PARTEI <COMMUNIST PARTY>"             
          11 "NEI LENK"                                                    
          20 "(LSAP-POSL) LETZEBUERGER SOZIALISTESCH"                      
          50 "(GAP/GLEI) DE GRENG ALTERNATIV - GREG LESCHT EKOLOGESC"      
          52 "(NOMP) NEUTRAL AN ONAFHAENGEG MENSCHERECHTSPARTEI"           
          59 "(GLS) GROUPEMENT FIR D"LETZEBUERGER SOUVERAENITEIT"          
          60 "(CSV/PCS) CHRESTLECH-SOZIAL VOLLEKSPARTEI"                   
          70 "(DP/PD) DEMOKRATESCH PARTEI"                                 
          79 "(ADR) AKTIOUNSKOMITEE FIR DEMOKRATIE A"                      
          80 "NATIONAL BEWEGUNG <NATIONAL MOVEMENT>"                       
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       DENMARK                                                             
          14 "ENHEDSLISTEN - DE ROD-GRONNE <UNITED RED-GREEN>"             
          15 "(SF) SOCIALISTISK FOLKEPARTI"                                
          20 "(S) SOCIALDEMOKRATIET <SOCIAL DEMOCRATS>"                    
          40 "(CD) CENTRUM DEMOKRATERNE <CENTRE DEMOCRATS>"                
          41 "(RV) RADIKALE VENSTRE <SOCIAL LIBERALS>"                     
          60 "(KF) KONSERVATIVE FOLKEPARTI"                                
          61 "(KRF) KRISTELIGT FOLKEPARTI"                                 
          70 "(V) VENSTRE <LIBERALS>"                                      
          80 "(FP) FREMSKRIDTSPARTIET <PROGRESS PARTY>"                    
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       IRELAND                                                             
          15 "DEMOCRATIC LEFT"                                             
          20 "THE LABOUR PARTY"                                            
          21 "(WP) THE WORKERS" PARTY"                                     
          22 "(PD) PROGRESSIVE DEMOCRATS"                                  
          30 "(FG) FINE GAEL <UNITED IRELAND PARTY>"                       
          50 "THE GREEN PARTY"                                             
          59 "INDEPENDENTS"                                                
          60 "(FF) FIANNA FAIL"                                            
          81 "(SF) SINN FEIN"                                              
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       GREAT BRITAIN                                                       
          20 "THE LABOUR PARTY"                                            
          30 "(SDP) THE SOCIAL DEMOCRATIC PARTY"                           
          40 "THE LIBERAL DEMOCRATS"                                       
          50 "(SNP) SCOTTISH NATIONALIST PARTY"                            
          51 "THE GREEN PARTY"                                             
          52 "PLAID CYMRU <WELSH NATIONALISTS>"                            
          60 "THE CONSERVATIVE PARTY"                                      
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       NORTHERN IRELAND                                                    
          15 "(S.D.L.P.) SOCIAL DEMOCRATIC LABOUR PARTY"                   
          60 "CONSERVATIVES"                                               
          61 "ULSTER UNIONIST PARTY"                                       
          62 "DEMOCRATIC UNIONIST PARTY"                                   
          64 "OTHER UNIONIST"                                              
          65 "ALLIANCE"                                                    
          80 "(WP) WORKERS" PARTY"                                         
          81 "(SF) SINN FEIN"                                              
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          99 "NA"                                                          
          00 "NO ANSWER"                                                   
       GREECE                                                              
          10 "(KKE) KOOMOUNISTIKOU KOMMA ELLADOS"                          
          15 "(SAP) SYNASPISMOS TAES ARISTERAS"                            
          20 "(PA.SO.K) PANHELLINIO SOCIALISTIKO KINEMA"                   
          60 "(ND) NEA DIMOKRATIA <NEW DEMOCRACY>"                         
          61 "(POLAN) POLITIKI ANIXI"                                      
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       SPAIN                                                               
          10 "(I.U.) IZQUIERDA UNIDA <UNITED LEFT>"                        
          11 "(PCPE) PARTIDO COMUNISTA DE LOS PUEBLOS DE ESPANA"           
          20 "(PSOE) PARTIDO SOCIALISTA OBRERO ESPANOL"                    
          50 "LOS VERDES / ELS VERDS <GREEN PARTY>"                        
          53 "(ERC) ESQUERRA REPUBLICANA DE CATALUNYA"                     
          54 "(PA) PARTIDO ANDALUCISTA"                                    
          55 "(HB) HERRI BATASUNA"                                         
          56 "(CIU) CONVERGENCIA I UNIO"                                   
          57 "<VARIOUS CENTRE REGIONAL PARTIES:>"                          
          58 "(PNV) PARTIDO NACIONALISTA VASCO"                            
          60 "(CDS) CENTRO DEMOCRATICO Y SOCIAL"                           
          70 "(PP) PARTIDO POPULAR <POPULAR PARTY>"                        
          71 "AGRUPACION DE ELECTORES DE JOSE M. RUIZ MATEOS"              
          80 "(FE JONS) FALANGE ESPANOLA TRADICIONALISTA"                  
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
       PORTUGAL                                                            
          05 "(PRD) PARTIDO RENOVADOR DEMOCRATICO"                         
          10 "(CDU) COLIGACAO DEMOCRATICA UNITARIA"                        
          16 "(PSR) PARTIDO SOCIALISTA REVOLUCIONARIO"                     
          17 "(PCTP/MRPP) PARTIDO COMUNISTA DOS"                           
          20 "(PS) PARTIDO SOCIALISTA PORTUGUESA"                          
          30 "(PSD) PARTIDO SOCIAL DEMOCRATA"                              
          40 "(PSN) PARTIDO DA SOLIDARIDADE NACIONAL"                      
          60 "(CDS) CENTRO DEMOCRATICO SOCIAL"                             
          81 "(PPM) PARTIDO POPULAR MONARQUICO"                            
          90 "OTHER PARTY"                                                 
          95 "WOULD VOTE BLANK"                                            
          96 "WOULD NOT VOTE"                                              
          98 "DK"                                                          
          00 "NO ANSWER"                                                   
 .                                                                         
DOCUMENT V307 (D5 LAST VOTE)                                               
       FRANCE                                                              
          05 "(PSU) PARTI SOCIALISTE UNIFIE ET EXTREME GAUCHE"             
          10 "(PCF) PARTI COMMUNISTE FRANCAIS <COMMUNIST PARTY>"           
          20 "(PS) PARTI SOCIALISTE <SOCIALIST PARTY>"                     
          30 "(MRG) MOUVEMENT DES RADICAUX DE GAUCHE"                      
          50 "LES VERTS <GREEN PARTY>"                                     
          51 "GENERATION ECOLOGIE <ECOLOGISTS>"                            
          56 "CHASSE, PECHE, NATURE ET TRADITION"                          
          59 "(CNI) CENTRE NACIONAL DES INDEPENDANTS"                      
          60 "(RPR) RASSEMBLEMENT POUR LA REPUBLIQUE"                      
          70 "(PR-UDF) PARTI REPUBLICAIN -"                                
          71 "(CDS-UDF) CENTRE DES DEMOCRATES SOCIAUX -"                   
          72 "(RAD-UDF) RADICAUX -"                                        
          73 "(UPF) UNION POUR LE FRANCE <UNION FOR FRANCE>"               
          80 "(FN) FRONT NATIONAL ET EXTREME DROITE"                       
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       BELGIUM                                                             
          10 "(PCB/KPB) PARTI COMMUNISTE BELGE <COMMUNIST PARTY>"          
          20 "(PSB) PARTI SOCIALISTE BELGE"                                
          21 "(BSP) BELGISCHE SOCIALISTISCHE PARTIJ"                       
          41 "(VLD) VLAAMSE LIBERALEN EN DEMOCRATEN"                       
          50 "(VU) VOLKSUNIE <FLEMISH NATIONALISTS>"                       
          51 "(FDF-RW) FRONT DEMOCRATIQUE FRANCOPHONE"                     
          52 "(VLB) VLAAMS BLOK <FLEMISH BLOCK>"                           
          53 "(PRL) PARTI REFORMATEUR LIBERAL"                             
          54 "(ROSSEM) RADICALE OMVORMERS STRIJDERS EN STRUBBELAARS"       
          55 "(ECOLO) ECOLOGISTES CONFEDERES POUR L"ORGANISATION"          
          56 "(AGALEV) ANDERS GAAN LEVEN <LIVE DIFFERENTLY"                
          60 "(PSC) PARTI SOCIAL CHRETIEN"                                 
          61 "(CVP) CHRISTELIJKE VOLKSPATIJ"                               
          80 "(UDRT/RAD) UNION DEMOCRATIQUE POUR LE RESPECT"               
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
      THE NETHERLANDS                                                      
          14 "(SP) SOCIALISTISCHE PARTIJ <SOCIALIST PARTY>"                
          17 "GROEN LINKS (REGENBOOG) <GREEN LEFT>:"                       
          20 "(PVDA) PARTIJ VAN DE ARBEID <LABOUR PARTY>"                  
          22 "(D"66) DEMOCRATEN 66 <DEMOCRATS "66>"                        
          52 "(U55+) UNIE 55+ <UNION 55+>"                                 
          53 "(AOV) ALGEMEEN OUDEREN VERBOND"                              
          57 "(CD) CENTRUM DEMOCRATEN <CENTRE DEMOCRATS>"                  
          63 "(CDA) CHRISTEN DEMOCRATISCH APPEL"                           
          70 "(VVD) VOLKSPARTIJ VOOR VRIJHEID EN DEMOCRATIE"               
          81 "(SGP) STAATKUNDIG GEREFORMEERDE PARTIJ"                      
          82 "(GPV) GEREFORMEERD POLITIEK VERBOND"                         
          84 "(RPF) REFORMATORISCHE POLITIEKE FEDERATIE"                   
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DON'T REMEMBER <DOCUMENTATION NOT CLEAR>"                    
          00 "NO ANSWER <DOCUMENTATION NOT CLEAR>"                         
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       GERMANY - WEST                                                      
       <CODES "98", AND "00" ARE NOT CLEARLY DOCUMENTED>                   
          10 "(PDS) PARTEI DES DEMOKRATISCHEN SOZIALISMUS /"               
          20 "(SPD) SOZIALDEMOKRATISCHE PARTEI DEUTSCHLANDS"               
          40 "(FDP) FREIE DEMOKRATISCHE PARTEI"                            
          50 "DIE GRUENEN <GREENS>"                                        
          60 "(CDU-CSU) CHRISTLICH DEMOKRATISCHE UNION -"                  
          80 "(NPD) NATIONALDEMOKRATISCHE PARTEI DEUTSCHLANDS"             
          81 "DIE REPUBLIKANER <REPUBLICANS>"                              
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DK <ACCORDING TO THE FIELDQUESTIONNAIRE>"                    
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       ITALY                                                               
          10 "(RC) RIFONDAZIONE COMUNISTA"                                 
          11 "(PDS) PARTITO DEMOCRATICO DELLA SINISTRA"                    
          15 "LISTA PANNELLA <FORMER RADICAL LEADERS>"                     
          16 "LA RETE - MOVIMENTO PER LA DEMOCRAZIA"                       
          19 "PROGRESSISTI <PROGRESSIVE ALLIANCE:"                         
          20 "(PSI) PARTITO SOCIALISTA ITALIANO"                           
          31 "SOCIALDEMOCRAZIA PER LA LIBERTA"                             
          42 "(AD) ALLEANZA DEMOCRATICA"                                   
          50 "FEDERAZIONE DEI VERDI <GREEN FEDERATION>"                    
          61 "(PPI) PARTITO POPOLARE ITALIANO"                             
          62 "(CCD) CENTRO CRISTIANO DEMOCRATICO"                          
          64 "PATTO PER L"ITALIA"                                          
          71 "FORZA ITALIA <ITALIAN FORCE>"                                
          72 "POLO PER LA LIBERTA <POLE OF FREEDOM:"                       
          73 "POLO DEL BUON GOVERNO <POLE OF GOOD GOVERNMENT:"             
          75 "LEGA NORD <NORTHER LEAGUE>"                                  
          80 "(AN) ALLIANZA NAZIONALE"                                     
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       LUXEMBOURG                                                          
          10 "(KP/PC) KOMMUNISTISCHE PARTEI <COMMUNIST PARTY>"             
          11 "NEI LENK"                                                    
          20 "(LSAP-POSL) LETZEBUERGER SOZIALISTESCH"                      
          50 "(GAP/GLEI) DE GRENG ALTERNATIV - GREG LESCHT EKOLOGESC"      
          52 "(NOMP) NEUTRAL AN ONAFHAENGEG MENSCHERECHTSPARTEI"           
          59 "(GLS) GROUPEMENT FIR D"LETZEBUERGER SOUVERAENITEIT"          
          60 "(CSV/PCS) CHRESTLECH-SOZIAL VOLLEKSPARTEI"                   
          70 "(DP/PD) DEMOKRATESCH PARTEI"                                 
          79 "(ADR) AKTIOUNSKOMITEE FIR DEMOKRATIE A"                      
          80 "NATIONAL BEWEGUNG <NATIONAL MOVEMENT>"                       
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       DENMARK                                                             
          14 "ENHEDSLISTEN - DE ROD-GRONNE <UNITED RED-GREEN>"             
          15 "(SF) SOCIALISTISK FOLKEPARTI"                                
          20 "(S) SOCIALDEMOKRATIET <SOCIAL DEMOCRATS>"                    
          30 "(FK) FAELLES KURS <COMMON COURSE>"                           
          40 "(CD) CENTRUM DEMOKRATERNE <CENTRE DEMOCRATS>"                
          41 "(RV) RADIKALE VENSTRE <SOCIAL LIBERALS>"                     
          50 "DE GRONNE <THE GREENS>"                                      
          60 "(KF) KONSERVATIVE FOLKEPARTI"                                
          61 "(KRF) KRISTELIGT FOLKEPARTI"                                 
          70 "(V) VENSTRE <LIBERALS>"                                      
          80 "(FP) FREMSKRIDTSPARTIET <PROGRESS PARTY>"                    
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       IRELAND                                                             
          15 "DEMOCRATIC LEFT"                                             
          20 "THE LABOUR PARTY"                                            
          21 "(WP) THE WORKERS" PARTY"                                     
          22 "(PD) PROGRESSIVE DEMOCRATS"                                  
          30 "(FG) FINE GAEL <UNITED IRELAND PARTY>"                       
          50 "THE GREEN PARTY"                                             
          59 "INDEPENDENTS"                                                
          60 "(FF) FIANNA FAIL"                                            
          81 "(SF) SINN FEIN"                                              
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       GREAT BRITAIN                                                       
          20 "THE LABOUR PARTY"                                            
          30 "(SDP) THE SOCIAL DEMOCRATIC PARTY"                           
          40 "THE LIBERAL DEMOCRATS"                                       
          50 "(SNP) SCOTTISH NATIONALIST PARTY"                            
          51 "THE GREEN PARTY"                                             
          52 "PLAID CYMRU <WELSH NATIONALISTS>"                            
          60 "THE CONSERVATIVE PARTY"                                      
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DK <ACCORDING TO THE FIELDQUESTIONNAIRE>"                    
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       NORTHERN IRELAND                                                    
          15 "(S.D.L.P.) SOCIAL DEMOCRATIC LABOUR PARTY"                   
          60 "CONSERVATIVES"                                               
          61 "ULSTER UNIONIST PARTY"                                       
          62 "DEMOCRATIC UNIONIST PARTY"                                   
          64 "OTHER UNIONIST"                                              
          65 "ALLIANCE"                                                    
          80 "(WP) WORKERS" PARTY"                                         
          81 "(SF) SINN FEIN"                                              
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       GREECE                                                              
          10 "(KKE) KOOMOUNISTIKOU KOMMA ELLADOS"                          
          15 "(SAP) SYNASPISMOS TAES ARISTERAS"                            
          20 "(PA.SO.K) PANHELLINIO SOCIALISTIKO KINEMA"                   
          60 "(ND) NEA DIMOKRATIA <NEW DEMOCRACY>"                         
          61 "(POLAN) POLITIKI ANIXI"                                      
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       SPAIN                                                               
       <CODES "95", "98", AND "00" ARE NOT CLEARLY DOCUMENTED>             
          10 "(I.U.) IZQUIERDA UNIDA <UNITED LEFT>"                        
          20 "(PSOE) PARTIDO SOCIALISTA OBRERO ESPANOL"                    
          53 "(ERC) ESQUERRA REPUBLICANA DE CATALUNYA"                     
          55 "(HB) HERRI BATASUNA"                                         
          56 "(CIU) CONVERGENCIA I UNIO"                                   
          57 "<VARIOUS CENTRE REGIONAL PARTIES:>"                          
          58 "(PNV) PARTIDO NACIONALISTA VASCO"                            
          60 "(CDS) CENTRO DEMOCRATICO Y SOCIAL"                           
          70 "(PP) PARTIDO POPULAR <POPULAR PARTY>"                        
          90 "OTHER PARTY"                                                 
          95 "NONE <ACCORDING TO THE FIELDQUESTIONNAIRE>"                  
          98 "DK <ACCORDING TO THE FIELDQUESTIONNAIRE>"                    
          00 "NO ANSWER <ACCORDING TO THE FIELDQUESTIONNAIRE>"             
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       PORTUGAL                                                            
          05 "(PRD) PARTIDO RENOVADOR DEMOCRATICO"                         
          10 "(CDU) COLIGACAO DEMOCRATICA UNITARIA"                        
          16 "(PSR) PARTIDO SOCIALISTA REVOLUCIONARIO"                     
          17 "(PCTP/MRPP) PARTIDO COMUNISTA DOS"                           
          20 "(PS) PARTIDO SOCIALISTA PORTUGUESA"                          
          30 "(PSD) PARTIDO SOCIAL DEMOCRATA"                              
          40 "(PSN) PARTIDO DA SOLIDARIDADE NACIONAL"                      
          60 "(CDS) CENTRO DEMOCRATICO SOCIAL"                             
          81 "(PPM) PARTIDO POPULAR MONARQUICO"                            
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DON'T REMEMBER"                                              
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
       GERMANY - EAST                                                      
       <CODES "98" AND "00" ARE NOT CLEARLY DOCUMENTED>                    
          10 "(PDS) PARTEI DES DEMOKRATISCHEN SOZIALISMUS"                 
          20 "(SPD) SOZIALDEMOKRATISCHE PARTEI DEUTSCHLANDS"               
          40 "(FDP) FREIE DEMOKRATISCHE PARTEI"                            
          50 "BUENDNIS 90 / DIE GRUENEN <ALLIANCE 90 / GREENS>"            
          60 "(CDU-CSU) CHRISTLICH DEMOKRATISCHE UNION -"                  
          61 "(DSU) DEUTSCHE SOZIALE UNION"                                
          81 "DIE REPUBLIKANER <REPUBLICANS>"                              
          90 "OTHER PARTY"                                                 
          95 "DID VOTE BLANK"                                              
          98 "DK <ACCORDING TO THE FIELDQUESTIONNAIRE>"                    
          00 "NO ANSWER"                                                   
          99 "INAP., NOT VOTED <NOT CODED 1 IN V306>"                      
 .                                                                         
DOCUMENT INCOME CODING (V351)                                              
           FRANCE                                                          
               (01)   LESS THAN 4.000 FRANCS MONTHLY                       
               (02)   4.000-4.999 FRANCS                                   
               (03)   5.000-5.499 FRANCS                                   
               (04)   6.000-6.999 FRANCS                                   
               (05)   7.000-7.999 FRANCS                                   
               (06)   8.000-8.999 FRANCS                                   
               (07)   9.000-9.999 FRANCS                                   
               (08)   10.000-10.999 FRANCS                                 
               (09)   11.000-12.499 FRANCS                                 
               (10)   12.500-14.999 FRANCS                                 
               (11)   15.000-17.499 FRANCS                                 
               (12)   17.500 FRANCS AND MORE                               
           BELGIUM                                                         
               (01)   LESS THAN 20.000 FRANCS B. MONTHLY                   
               (02)   20.000-29.999 FRANCS B                               
               (03)   30.000-39.999 FRANCS B                               
               (04)   40.000-49.999 FRANCS B                               
               (05)   50.000-59.999 FRANCS B                               
               (06)   60.000-69.999 FRANCS B                               
               (07)   70.000-79.999 FRANCS B                               
               (08)   80.000-89.999 FRANCS B                               
               (09)   90.000-99.999 FRANCS B                               
               (10)   100.000-109.999 FRANCS B                             
               (11)   110.000-119.999 FRANCS B                             
               (12)   120.000 FRANCS B. AND MORE                           
           NETHERLANDS                                                     
               (01)   LESS THAN 1.500 GUILDERS MONTHLY                     
               (02)   1.500-1.999 GUILDERS                                 
               (03)   2.000-2.499 GUILDERS                                 
               (04)   2.500-2.749 GUILDERS                                 
               (05)   2.750-3.249 GUILDERS                                 
               (06)   3.250-3.749 GUILDERS                                 
               (07)   3.750-4.249 GUILDERS                                 
               (08)   4.250-4.749 GUILDERS                                 
               (09)   4.750-5.249 GUILDERS                                 
               (10)   5.250-6.249 GUILDERS                                 
               (11)   6.250-7.249 GUILDERS                                 
               (12)   7.250 GUILDERS AND MORE                              
           WEST GERMANY                                                    
               (01)   LESS THAN 1500 D-MARK MONTHLY                        
               (02)   1.501-1.750 D-MARK                                   
               (03)   1.751-2.000 D-MARK                                   
               (04)   2.001-2.250 D-MARK                                   
               (05)   2.251-2.500 D-MARK                                   
               (06)   2.501-2.750 D-MARK                                   
               (07)   2.751-3.000 D-MARK                                   
               (08)   3.001-3.500 D-MARK                                   
               (19)   3.501-4.000 D-MARK                                   
               (10)   4.001-5.000 D-MARK                                   
               (11)   4.501-5.000 D-MARK                                   
               (12)   5.001 D-MARK AND MORE                                
           ITALY                                                           
               (01)   LESS THAN 750.000 LIRA MONTHLY                       
               (02)   750.000-1.000.000 LIRA                               
               (03)   1.000.001-1.500.000 LIRA                             
               (04)   1.500.001-1.750.000 LIRA                             
               (05)   1.750.001-2.000.000 LIRA                             
               (06)   2.000.001-2.500.000 LIRA                             
               (07)   2.500.001-3.000.000 LIRA                             
               (08)   3.000.001-3.500.000 LIRA                             
               (09)   3.500.001-4.000.000 LIRA                             
               (10)   4.000.001-4.500.000 LIRA                             
               (11)   4.500.001-5.000.000 LIRA                             
               (12)   5.000.000 LIRA OR MORE                               
           LUXEMBOURG                                                      
               (01)   LESS THAN 50.000 FRANCS L. MONTHLY                   
               (02)   50.000-69.999 FRANCS L                               
               (03)   70.000-89.999 FRANCS L                               
               (04)   90.000-99.999 FRANCS L                               
               (05)   100.000-109.999 FRANCS L                             
               (06)   110.000-119.999 FRANCS L                             
               (07)   120.000-129.999 FRANCS L                             
               (08)   130.000-139.999 FRANCS L                             
               (09)   140.000-149.999 FRANCS L                             
               (10)   150.000-159.999 FRANCS L                             
               (11)   160.000-169.999 FRANCS L                             
               (12)   170.000 FRANCS L. AND MORE                           
           DENMARK                                                         
               (01)   LESS THAN 70.000 KRONA A YEAR                        
               (02)   70.000 - 99.999                                      
               (03)   100.000 - 129.999                                    
               (04)   130.000 - 169.999                                    
               (05)   170.000 - 199.999                                    
               (06)   200.000 - 239.999                                    
               (07)   240.000 - 269.999                                    
               (08)   270.000 - 299.999                                    
               (09)   300.000 - 349.999                                    
               (10)   350.000 - 399.999                                    
               (11)   400.000 - 449.999                                    
               (12)   450.000 KRONA AND MORE                               
           IRELAND (IRISH POUNDS)                                          
           NORTHERN IRELAND, GREAT BRITAIN (UK POUNDS)                     
               (01)   LESS THAN 240 POUND MONTHLY                          
               (02)   240-319 POUND                                        
               (03)   320-399 POUND                                        
               (04)   400-479 POUND                                        
               (05)   480-599 POUND                                        
               (06)   600-729 POUND                                        
               (07)   730-829 POUND                                        
               (08)   830-999 POUND                                        
               (09)   1.000-1.149 POUND                                    
               (10)   1.150-1.664 POUND                                    
               (11)   1.665-2.000 POUND                                    
               (12)   2.001 POUND AND MORE                                 
           GREECE                                                          
               (01)   LESS THAN 40.000 DRACHMAS MONTHLY                    
               (02)   40.001-70.000 DRACHMAS                               
               (03)   70.001-100.000 DRACHMAS                              
               (04)   100.001-130.000 DRACHMAS                             
               (05)   130.001-160.000 DRACHMAS                             
               (06)   160.001-190.000 DRACHMAS                             
               (07)   190.001-220.000 DRACHMAS                             
               (08)   220.001-250.000 DRACHMAS                             
               (09)   250.001-280.000 DRACHMAS                             
               (10)   280.001-310.000 DRACHMAS                             
               (11)   310.001-340.000 DRACHMAS                             
               (12)   340.001 DRACHMAS OR MORE                             
           SPAIN                                                           
               (01)   LESS THAN 50.000 PESETAS MONTHLY                     
               (02)   50.001-60.000 PTAS                                   
               (03)   60.001-70.000 PTAS                                   
               (04)   70.001-80.000 PTAS                                   
               (05)   80.001-90.000 PTAS                                   
               (06)   90.001-100.000 PTAS                                  
               (07)   100.001-125.000 PTAS                                 
               (08)   125.001-150.000 PTAS                                 
               (09)   150.001-175.000 PTAS                                 
               (10)   175.001-200.000 PTAS                                 
               (11)   200.001-225.000 PTAS                                 
               (12)   225.001 PTAS OR MORE                                 
           PORTUGAL                                                        
               (01)   LESS THAN 30.000 ESCUDOS MONTHLY                     
               (02)   30.000-39.999 ESCUDOS                                
               (03)   40.000-49.999 ESCUDOS                                
               (04)   50.000-59.999 ESCUDOS                                
               (05)   60.000-69.999 ESCUDOS                                
               (06)   70.000-79.999 ESCUDOS                                
               (07)   80.000-99.999 ESCUDOS                                
               (08)   100.000-109.999 ESCUDOS                              
               (09)   110.000-129.999 ESCUDOS                              
               (10)   130.000-149.999 ESCUDOS                              
               (11)   150.000-169.999 ESCUDOS                              
               (12)   170.000 ESCUDOS AND MORE                             
           EAST GERMANY                                                    
               (01)   LESS THAN 750 D-MARK MONTHLY                         
               (02)   751-1.000 D-MARK                                     
               (03)   1.001-1.250 D-MARK                                   
               (04)   1.251-1.500 D-MARK                                   
               (05)   1.501-1.750 D-MARK                                   
               (06)   1.751-2.000 D-MARK                                   
               (07)   2.001-2.250 D-MARK                                   
               (08)   2.251-2.500 D-MARK                                   
               (09)   2.501-2.750 D-MARK                                   
               (10)   2.751-3.000 D-MARK                                   
               (11)   3.001-3.250 D-MARK                                   
               (12)   3.251 D-MARK AND MORE                                
 .                                                                         
DOCUMENT SIZE OF COMMUNITY (V360)                                          
           FRANCE                                                          
               (01)   LESS THAN 2000 INHABITANTS                           
               (02)   2.000-20.000                                         
               (03)   20.001-100.000                                       
               (04)   MORE THAN 100.000                                    
               (05)   PARIS                                                
           BELGIUM                                                         
               (01)   5 GRANDS CENTRE                                      
               (02)   LOCALITE URBAINE                                     
               (03)   LOCALITE SECONDAIRE                                  
               (04)   AUTRE LOCALITE                                       
           NETHERLANDS                                                     
               (01)   LESS THAN 5.000 INHABITANTS                          
               (02)   5.000<10.000                                         
               (03)   10.000<20.000                                        
               (04)   20.000<50.000                                        
               (05)   50.000<100.000                                       
               (06)   100.000<400.000                                      
               (07)   400.000 AND MORE                                     
           GERMANY (WEST AND EAST)                                         
               (01)   LESS THAN 2.000 INHABITANTS                          
               (02)   2.000-4.999                                          
               (03)   5.000-19.999                                         
               (04)   20.000-49.999                                        
               (05)   50.000-99.999                                        
               (06)   100.000-499.999                                      
               (07)   500.000 AND MORE                                     
           ITALY                                                           
               (01)   UP TO 10.000 INHABITANTS                             
               (02)   10.001-100.000                                       
               (03)   100.001-250.000                                      
               (04)   MORE THAN 250.000                                    
           LUXEMBOURG                                                      
               (01)   UP TO 2.500 INHABITANTS                              
               (02)   2.501-5.000                                          
               (03)   5.001-10.000                                         
               (04)   10.001-20.000                                        
               (05)   20.001-50.000                                        
               (06)   MORE THAN 50.000 (LUXEMBOURG VILLE)                  
           DENMARK                                                         
               (01)   LESS THAN 2.000 INHABITANTS                          
               (02)   2.000-4.999                                          
               (03)   5.000-9.999                                          
               (04)   10.000-19.999                                        
               (05)   20.000-49.999                                        
               (06)   50.000-99.999                                        
               (07)   100.000 AND MORE                                     
           IRELAND, NORTHERN IRELAND                                       
               (01)   LESS THAN 2.000 INHABITANTS                          
               (02)   2.001-20.000                                         
               (03)   20.001-100.000                                       
               (04)   MORE THAN 100.000                                    
           GREAT BRITAIN                                                   
               (01)   METROPOLITAN                                         
               (02)   OTHER 100% URBAN                                     
               (03)   MIXED URBAN/RURAL                                    
               (04)   RURAL                                                
           GREECE                                                          
               (01)   UP TO 2.000 INHABITANTS                              
               (02)   2.001-10.000                                         
               (03)   10.001-50.000                                        
               (04)   50.001-1.000.000                                     
               (05)   1.000.001 AND MORE                                   
           SPAIN                                                           
               (01)   UP TO 2.000 INHABITANTS                              
               (02)   2.001-10.000                                         
               (03)   10.001-50.000                                        
               (04)   50.001-100.000                                       
               (05)   100.001-300.000                                      
               (06)   300.001-500.000                                      
               (07)   500.001-1.000.000                                    
               (08)   MORE THAN 1.000.000                                  
           PORTUGAL                                                        
               (01)   LESS THAN 100 INHABITANTS                            
               (02)   101-200                                              
               (03)   201-500                                              
               (04)   501-1.000                                            
               (05)   1.001-2.000                                          
               (06)   2.001-5.000                                          
               (07)   5.001-10.000                                         
               (08)   10.001-30.000                                        
               (09)   30.001-100.000                                       
               (10)   100.001-500.000                                      
               (11)   MORE THAN 500.000                                    
 .                                                                         
DOCUMENT REGION I (V361)                                                   
         (NUTS 2 LEVEL / LABELD "PROVINCE" IN EARLIER EUROBAROMETERS)      
           FRANCE                                                          
               (001)   ILE DE FRANCE                                       
               (002)   CHAMPAGNE-ARDENNES                                  
               (003)   PICARDIE                                            
               (004)   HAUTE NORMANDIE                                     
               (005)   CENTRE                                              
               (006)   BASSE NORMANDIE                                     
               (007)   BOURGOGNE                                           
               (008)   NORD-PAS DE CALAIS                                  
               (009)   LORRAINE                                            
               (010)   ALSACE                                              
               (011)   FRANCHE-COMTE                                       
               (012)   PAYS DE LA LOIRE                                    
               (013)   BRETAGNE                                            
               (014)   POITOU-CHARENTES                                    
               (015)   AQUITAINE                                           
               (016)   MIDI PYRENEES                                       
               (017)   LIMOUSIN                                            
               (018)   RHONE-ALPES                                         
               (019)   AUVERGNE                                            
               (020)   LANGUEDOC-ROUSSILLON                                
               (021)   PROVENCE-ALPES-COTE D-AZUR                          
               (022)   CORSE                                               
           BELGIUM                                                         
               (001)   HAINAUT                                             
               (002)   LIMBOURG                                            
               (003)   NAMUR                                               
               (004)   OOST VLAANDEREN                                     
               (005)   WEST VLAANDEREN                                     
               (006)   LIEGE                                               
               (007)   LUXEMBOURG                                          
               (008)   BRABANT VLAAMS                                      
               (009)   ANTWERPEN                                           
               (010)   BRUXELLES                                           
               (011)   BRABANT WALLON                                      
           NETHERLANDS                                                     
               (001)   GRONINGEN                                           
               (002)   FRIESLAND                                           
               (003)   DRENTE                                              
               (004)   OVERIJSSEL                                          
               (005)   GELDERLAND                                          
               (006)   FLEVOLAND                                           
               (007)   UTRECHT                                             
               (008)   NOORD HOLLAND                                       
               (009)   ZUID HOLLAND                                        
               (010)   ZEELAND                                             
               (011)   NOORD BRABANT                                       
               (012)   LIMBURG                                             
           WEST GERMANY                                                    
               (010)   SCHLESWIG-HOLSTEIN                                  
               (020)   HAMBURG                                             
               (031)   BRAUNSCHWEIG                                        
               (032)   HANNOVER                                            
               (033)   LUENEBURG                                           
               (034)   WESER-EMS                                           
               (040)   BREMEN                                              
               (051)   DUESSELDORF                                         
               (053)   KOELN                                               
               (055)   MUENSTER                                            
               (057)   DETMOLD                                             
               (059)   ARNSBERG                                            
               (064)   DARMSTADT                                           
               (065)   GIE·EN                                              
               (066)   KASSEL                                              
               (071)   KOBLENZ                                             
               (072)   TRIER                                               
               (073)   RHEINHESSEN-PFALZ                                   
               (081)   NORD WUERTTEMBERG                                   
               (082)   NORDBADEN                                           
               (083)   SUEDBADEN                                           
               (084)   SUED WUERTTEMBERG                                   
               (091)   OBERBAYERN                                          
               (092)   NIEDERBAYERN                                        
               (093)   OBERPFALZ                                           
               (094)   OBERFRANKEN                                         
               (095)   MITTELFRANKEN                                       
               (096)   UNTERFRANKEN                                        
               (097)   SCHWABEN                                            
               (100)   SAARLAND                                            
               (110)   BERLIN (WEST)                                       
           ITALY - NORTHWEST                                               
               (001)  VALLE D"AOSTA E PIEMONTE                             
               (002)  LIGURIA                                              
               (003)  LOMBARDIA                                            
               (004)  MILANO                                               
           ITALY - NORTHEAST                                               
               (005)  TRENTINO                                             
               (006)  VENETO                                               
               (007)  FRIULI VENEZIA GIULIA                                
               (008)  EMILIA ROMAGNA                                       
           ITALY - CENTRE                                                  
               (009)  TOSCANA                                              
               (010)  MARCHE                                               
               (011)  UMBRIA                                               
               (012)  LAZIO                                                
           ITALY - SOUTH                                                   
               (013)  MOLISE E ABRUZZI                                     
               (014)  CAMPANIA                                             
               (015)  PUGLIE                                               
               (016)  BASILICATA                                           
               (017)  CALABRIA                                             
           ITALY - ISLANDS                                                 
               (018)  SICILIA                                              
               (019)  SARDEGNA                                             
           LUXEMBOURG                                                      
               (001)   CENTER                                              
               (002)   SOUTH                                               
               (003)   NORTH                                               
               (004)   EAST                                                
           DENMARK                                                         
               (001)   HOVEDSTADSOMRADET - COPENHAGEN AREA                 
               (002)   SJAELLAND LOLLAND-FALSTER BORNHOLM (EXCL COPENHAGEN)
               (003)   FYN                                                 
               (004)   JYLLAND                                             
           IRELAND                                                         
               (001)   DONEGAL                                             
               (002)   NORTH WEST (SLIGO/LEITRIM)                          
               (003)   NORTH EAST (CAVAN/MONAGHAN/LOUTH)                   
               (004)   WEST (MAYO/GALWAY)                                  
               (005)   MIDLANDS                                            
                      (WESTMEATH/ROSCOMMON/LONGFORD/LAOIS/OFFALY)          
               (006)   EAST (DOUBLIN/MEATH/KILDARE/WICKLOW)                
               (007)   MID WEST (LIMERICK/CLARE/TIPPERARY NORTH RIDING)    
               (008)   SOUTH EAST (WATERFORD/WEXFORD/CARLOW/               
                      KILKEMMY/TIPPERARY SOUTH RIDING)                     
               (009)   SOUTH WEST (KERRY/CORK)                             
           NORTHERN IRELAND                                                
              (999)   NO REGIONS                                           
           GREAT BRITAIN                                                   
               (001)   CLEVELAND DURHAM                                    
               (002)   CUMBRIA                                             
               (003)   NORTHUMBERLAND TYNE AND WEAR                        
               (004)   HUMBERSIDE                                          
               (005)   NORTH YORKSHIRE                                     
               (006)   SOUTH YORKSHIRE                                     
               (007)   WEST YORKSHIRE                                      
               (008)   DERBYSHIRE NOTTINGHAMSHIRE                          
               (009)   LEICESTERSHIRE NORTHHAMTONSHIRE                     
               (010)   LINCOLNSHIRE                                        
               (011)   EAST ANGLIA                                         
               (012)   BEDFORDSHIRE HERTFORDSHIRE                          
               (013)   BERKSHIRE BUCKINGHAMSHIRE OXFORDSHIRE               
               (014)   SURREY EAST-WEST SUSSEX                             
               (015)   ESSEX                                               
               (016)   GREATER LONDON                                      
               (017)   HAMPSHIRE ISLE OF WIGHT                             
               (018)   KENT                                                
               (019)   AVON GLOUCESTERSHIRE WILTSHIRE                      
               (020)   CORNWALL DEVON                                      
               (021)   DORSET SOMERSET                                     
               (022)   HEREFORD AND WORCESTER WARWICKSHIRE                 
               (023)   SCHROPSHIRE STAFFORDSHIRE                           
               (024)   WEST MIDLANDS - COUNTY                              
               (025)   CHESHIRE                                            
               (026)   GREATER MANCHESTER                                  
               (027)   LANCASHIRE                                          
               (028)   MERSEYSIDE                                          
               (029)   CLWYD DYFED GWYNEDD POWYS                           
               (030)   GWENT MID-S-W GLAMORGAN                             
               (031)   BORDERS CENTRAL FIFE LOTHIAN TAYSIDE                
               (032)   DUMPHRIES-GALLOWAY STRATHCLYDE                      
               (033)   HIGHLANDS ISLANDS                                   
               (034)   GRAMPIAN                                            
           GREECE                                                          
               (001)   MAKEDONIA                                           
               (002)   THESSALIA                                           
               (003)   ANATOLIKI MAKEDONIA                                 
               (004)   THRAKI                                              
               (005)   ANATOLIKI STEREA KAI NISIA                          
               (006)   PELOPONNISOS KAI DYTIKI STEREA                      
               (007)   IPEIROS                                             
               (008)   KRITI                                               
               (009)   NISIA ANATOLIKOU AIGAIOU                            
           SPAIN                                                           
               (001)   ANDALUCIA                                           
               (002)   ARAGON                                              
               (003)   ASTURIAS                                            
               (004)   BALEARES                                            
               (005)   CANARIAS                                            
               (006)   CANTABRIA                                           
               (007)   CASTILLA - LEON                                     
               (008)   CASTILLA - LA MANCHA                                
               (009)   CATALUNA                                            
               (010)   EXTREMADURA                                         
               (011)   GALICIA                                             
               (012)   MADRID                                              
               (013)   MURCIA                                              
               (014)   NAVARRA                                             
               (015)   LA RIOJA                                            
               (016)   PAIS VALENCIANO                                     
               (017)   PAIS VASCO                                          
           PORTUGAL                                                        
               (001)  NORTE                                                
               (002)  CENTRO                                               
               (003)  LISBOA ET VALE DO TEJO                               
               (004)  ALENTEJO                                             
               (005)  ALGARVE                                              
               (006)  ACORES                                               
               (007)  MADEIRA                                              
           EAST GERMANY                                                    
               (001)  ROSTOCK                                              
               (002)  SCHWERIN                                             
               (003)  NEUBRANDENBURG                                       
               (004)  POTSDAM                                              
               (005)  FRANKFURT/ODER                                       
               (006)  COTTBUS                                              
               (007)  MAGDEBURG                                            
               (008)  HALLE                                                
               (009)  ERFURT                                               
               (010)  GERA                                                 
               (011)  SUHL                                                 
               (012)  DRESDEN                                              
               (013)  LEIPZIG                                              
               (014)  CHEMNITZ (KARL-MARX-STADT)                           
               (015)  BERLIN (OST)                                         
 .                                                                         
DOCUMENT REGION II (V362)                                                  
         (NUTS 1 LEVEL / RECODED IN ACCORDANCE WITH EUROBAROMTER 36)       
           FRANCE                                                          
               (01)   ILE DE FRANCE                                        
               (02)   BASSIN PARISIEN                                      
               (03)   NORD-PAS DE CALAIS                                   
               (04)   EAST                                                 
               (05)   WEST                                                 
               (06)   SOUTH WEST                                           
               (07)   CENTRE EAST                                          
               (08)   MEDITERRANEE                                         
           BELGIUM                                                         
               (01)   WALLONIE                                             
               (02)   BRUXELLES                                            
               (03)   VLAANDEREN                                           
           NETHERLANDS                                                     
               (01)   NORTH                                                
               (02)   EAST                                                 
               (03)   WEST                                                 
               (04)   SOUTH                                                
           WEST GERMANY                                                    
               (01)  SCHLESWIG HOLSTEIN                                    
               (02)  HAMBURG                                               
               (03)  NIEDERSACHSEN                                         
               (04)  BREMEN                                                
               (05)  NORDRHEIN - WESTFALEN                                 
               (06)  HESSEN                                                
               (07)  RHEINLAND PFALZ                                       
               (08)  BADEN WUERTTEMBERG                                    
               (09)  BAYERN                                                
               (10)  SAARLAND                                              
               (11)  BERLIN (WEST)                                         
           ITALY                                                           
               (01)  NORTH WEST                                            
               (02)  LOMBARDIA                                             
               (03)  NORTH EAST                                            
               (04)  EMILIA ROMAGNA                                        
               (05)  CENTRE                                                
               (06)  LAZIO                                                 
               (07)  MOLISE E ABRUZZI                                      
               (08)  CAMPANIA                                              
               (09)  SOUTH                                                 
               (10)  SICILIA                                               
               (11)  SARDEGNA                                              
           UNITED KINGDOM (GREAT BRITAIN + NORTHERN IRELAND)               
               (01)   SCOTLAND                                             
               (02)   NORTH + YORKS&HUMBERSIDE + NORTH WEST                
               (03)   EAST/WEST MIDLANDS + EAST ANGLIA                     
               (04)   WALES                                                
               (05)   SOUTH EAST                                           
               (06)   SOUTH WEST                                           
               (07)   NORTHERN IRELAND                                     
           SPAIN                                                           
               (01)   GALICIA                                              
               (02)   NORTH                                                
               (03)   NORTH EAST                                           
               (04)   ARAGON RIOJA                                         
               (05)   MADRID                                               
               (06)   CENTRE                                               
               (07)   CATALUNA                                             
               (08)   EAST                                                 
               (09)   SOUTH                                                
               (10)   CANARIAS                                             
           EAST GERMANY                                                    
               (11)  BERLIN (OST)                                          
               (12)  BRANDENBURG                                           
               (13)  MECKLENBURG-VORPOMMERN                                
               (14)  SACHSEN                                               
               (15)  SACHSEN-ANHALT                                        
               (16)  THUERINGEN                                            
 .                                                                         
DOCUMENT Q3_DK (V226 TO V280)                                              
     V226 ISSUE #01 "INTETSIGENDE SVAR"                                    
     V227 ISSUE #02 "BORGERPLIGT AT STEMME O.LIGN."                        
     V228 ISSUE #03 "FORATF˘INDFLYDELSE O.LIGN."                           
     V229 ISSUE #04 "BEDSTEUDVEJ/BEDSTE PARTI"                             
     V230 ISSUE #05 "ERIMODDOBBELTMANDAT"                                  
     V231 ISSUE #06 "EUUDENNÊRMERE BEGRUNDELSE"                            
     V232 ISSUE #07 "MODEU,VIL UD AF EU"                                   
     V233 ISSUE #08 "VILHAVEVALGT EN EU-MODSTANDER"                        
     V234 ISSUE #09 "IMODINTEGRATION/KRITIK N DVENDIG"                     
     V235 ISSUE #10 "ERFOREU,EU N DVENDIG"                                 
     V236 ISSUE #11 "FORINTEGRATION/FÊLLESSKAB/SAMARBEJDE"                 
     V237 ISSUE #12 "PARTIETSEU-POLITIK GENERELT"                          
     V238 ISSUE #13 "PARTIETSEU-POLITIK P˘ SPEC. OMR˘DER"                  
     V239 ISSUE #14 "DANMARKINGEN INDFLYDELSE"                             
     V240 ISSUE #15 "HENVISN.TIL TRAKTATER EL. FOLKEAFST."                 
     V241 ISSUE #16 "SKUFFEDEFORVENTNINGER"                                
     V242 ISSUE #17 "UENIGHEDMED EU-POLITIKERE"                            
     V243 ISSUE #18 "PARTITILH R UDEN BEGRUNDELSE"                         
     V244 ISSUE #19 "TILHÊNGER AF PARTIET/OVERBEVISNING"                   
     V245 ISSUE #20 "PLEJERATSTEMME S˘DAN"                                 
     V246 ISSUE #21 "TRADITION/OPDRAGELSE"                                 
     V247 ISSUE #22 "TILLIDTIL PARTIET"                                    
     V248 ISSUE #23 "UENIGHEDMED EGET PARTI"                               
     V249 ISSUE #24 "IDEOLOGISKE SVAR"                                     
     V250 ISSUE #25 "PARTIETSPOL./DÊKKER MINE SYNSPUNKTER"                 
     V251 ISSUE #26 "PARTIETSKAMPAGNE/OPTRÊDEN I MEDIER"                   
     V252 ISSUE #27 "FORDELE,GAVN, EGNE INTERESSER"                        
     V253 ISSUE #28 "GAVNERLANDBRUGET"                                     
     V254 ISSUE #29 "ARBEJDERINTERESSER"                                   
     V255 ISSUE #30 "ERHVERVSINTERESSER"                                   
     V256 ISSUE #31 "FISKERIINTERESSER"                                    
     V257 ISSUE #32 "KONOMIGENERELT"                                       
     V258 ISSUE #33 "FREMMERDANSKE INTERESSER/INDFLYDELSE"                 
     V259 ISSUE #34 "ANDREGRUPPEHENVISNINGER"                              
     V260 ISSUE #35 "ABENHEDOVERFOR STEN/BALTIKUM"                         
     V261 ISSUE #36 "LANDBRUGSPOLITIK"                                     
     V262 ISSUE #37 "ARBEJDSLSHED"                                         
     V263 ISSUE #38 "SOCIALEGRUNDE"                                        
     V264 ISSUE #39 "U-LANDSPOLITIK"                                       
     V265 ISSUE #40 "GAVNERDANMARK KONOMISK"                               
     V266 ISSUE #41 "MILJHENSYN"                                           
     V267 ISSUE #42 "ANDRESPECIELLE OMR˘DER NÊVNT"                         
     V268 ISSUE #43 "TILLIDTIL EU-KANDIDATEN"                              
     V269 ISSUE #44 "LILLIGYLDENKILDE"                                     
     V270 ISSUE #45 "POULSCHL€TER"                                         
     V271 ISSUE #46 "LONEDYBKJÊR"                                          
     V272 ISSUE #47 "UFFEELLEMANN-JENSEN"                                  
     V273 ISSUE #48 "BERTELHAARDER"                                        
     V274 ISSUE #49 "ANDENKANDIDAT NÊVNT (SE LISTE)"                       
     V275 ISSUE #50 "KVINDELIG KANDIDAT"                                   
     V276 ISSUE #51 "UNGKANDIDAT"                                          
     V277 ISSUE #52 "KAND.HARSAMME OVERBEVISNING/MENINGER"                 
     V278 ISSUE #53 "GRUDTRYKFOR/T R SIGE SIN MENING"                      
     V279 ISSUE #54 "KENDERKANDIDATEN/LOKAL KANDIDAT"                      
     V280 ISSUE #55 "DYGTIGHED/ERFARING I EU-PARL."                        
 .                                                                         
*MISSING VALUES                                                            
              V16 (0)                                                      
              V17 TO V30 (9)                                               
              V31 (0,9)                                                    
              V32 TO V46 V47 V48 V49 (0,5)                                 
              V50 (0,4)                                                    
              V51 V52 (0,3)                                                
              V53 (0,4)                                                    
              V54 V55 (0,5)                                                
              V56 (0,6)                                                    
              V57 (3,9)                                                    
              V58 (0,3)                                                    
              V59 (0,98 THRU HI)                                           
              V60 (0,5 THRU HI)                                            
              V61 (0,6 THRU HI)                                            
              V62 (0,5 THRU HI)                                            
              V63 (0,6 THRU HI)                                            
              V64 TO V67 V68 TO V71 (0,3)                                  
              V72 TO V85 (9)                                               
              V86 V87 (0,8)                                                
              V88 V89 (0,3)                                                
              V90 TO V100 (8,9)                                            
              V101 (0,11)                                                  
              V102 (0,5)                                                   
              V103 TO V114 (0,11)                                          
              V115 TO V122 V123 TO V131 (9)                                
              V132 (0,3)                                                   
              V133 TO V136 V137 (0,11)                                     
              V138 TO V148 (0,11 THRU HI)                                  
              V149 (0,11)                                                  
              V150 TO V160 (0,11 THRU HI)                                  
              V161 (0,11)                                                  
              V162 TO V172 (0,11 THRU HI)                                  
              V173 TO V175 (0,12)                                          
              V176 V179 V182 (0,96 THRU HI)                                
              V177 V178 (0,4 THRU HI)                                      
              V180 V181 (0,4 THRU HI)                                      
              V183 V184 (0,4 THRU HI)                                      
              V185 V186 (0,3)                                              
              V187 (0,3 THRU HI)                                           
              V188 TO V192 (0,5 THRU HI)                                   
              V193 TO V196 (0,4 THRU HI)                                   
              V197 TO V208 (0,3)                                           
              V209 V210 (0,4)                                              
              V211 (0,3)                                                   
              V212 (0,14)                                                  
              V213 TO V218 (0,3)                                           
              V219 (0,14)                                                  
              V220 V221 V222 V223 (0,3)                                    
              V224 (0,5 THRU HI)                                           
              V225 (0,4 THRU HI)                                           
              V226 TO V280 (8,9)                                           
              V281 V282 (0,3 THRU HI)                                      
              V283 (0,4 THRU HI)                                           
              V284 (0,15 THRU HI)                                          
              V285 (0,97 THRU HI)                                          
              V286 V287 (4)                                                
              V288 TO V298 (0,11 THRU HI)                                  
              V299 (0,5)                                                   
              V300 (0,3 THRU HI)                                           
              V301 (0,95 THRU HI)                                          
              V302 (0,5 THRU HI)                                           
              V303 (0,4 THRU HI)                                           
              V304 (0,5 THRU HI)                                           
              V305 (0,98 THRU HI)                                          
              V306 (0,3)                                                   
              V307 (0,98 THRU HI)                                          
              V308 (0,98 THRU HI)                                          
              V309 TO V319 (0,11 THRU HI)                                  
              V320 V321 (0,3)                                              
              V322 (0)                                                     
              V329 (0)                                                     
              V330 TO V339 (9)                                             
              V340 V341 (0)                                                
              V342 (0,99)                                                  
              V343 V344 (0)                                                
              V345 V346 (0,99)                                             
              V347 (0,8)                                                   
              V348 (0,4)                                                   
              V349 (0,10)                                                  
              V350 (0,6 THRU HI)                                           
              V351 (97,98)                                                 
              V352 (5)                                                     
              V355 V356 (99)                                               
              V357 V358 V359 (0)                                           
              V361 (999)                                                   
              V362 (99)                                                    
              V364 (9)                                                     
              V365 V366 (0)                                                
 .                                                                         
