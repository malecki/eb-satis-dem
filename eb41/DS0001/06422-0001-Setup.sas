*-------------------------------------------------------------------------* 
 |                                                                        | 
 |              SAS DATA DEFINITION STATEMENTS FOR ICPSR 6422             | 
 |         EURO-BAROMETER 41.0: TRADE ISSUES, BLOOD DONATION, AIDS        | 
 |                      AND SMOKING, MARCH-JUNE, 1994                     | 
 |                          FOURTH ICPSR EDITION                          | 
 |                              FEBRUARY 1998                             | 
 |                                                                        | 
 | SAS setup sections are provided for the LRECL version of this data     | 
 | collection.  These sections are listed below:                          | 
 |                                                                        | 
 | PROC FORMAT creates user-defined formats for the variables.  Formats   | 
 | replace original value codes with value code descriptions. Not all     | 
 | variables have user-defined formats.                                   | 
 |                                                                        | 
 | DATA begins a SAS data step and names an output SAS data set.          | 
 |                                                                        | 
 | INFILE identifies the input file to be read with the input statement.  | 
 | Users must replace the "physical-filename" with host computer-specific | 
 | input file specifications.                                             | 
 |                                                                        | 
 | INPUT assigns the name, type, decimal specification (if any), and      | 
 | specifies the beginning and ending column locations for each variable. | 
 |                                                                        | 
 | LABEL assigns descriptive labels to all variables.  Variable labels    | 
 | and variable names may be identical for some data files.               | 
 |                                                                        | 
 | MISSING VALUE RECODES sets user-defined numeric missing values to      | 
 | missing as interpreted by the SAS system.  Only variables with user-   | 
 | defined missing values are included in these statements.               | 
 |                                                                        | 
 | FORMAT associates the formats created by the PROC FORMAT step with the | 
 | variables named in the INPUT statement.                                | 
 |                                                                        | 
 | PLEASE NOTE:  Users should combine and modify these data definition    | 
 | statements to suit their specific needs. Sections for PROC FORMATS,    | 
 | FORMATS, and MISSING VALUE RECODES  have been commented out (i.e.,     | 
 | "/*" and "*/").  To include the PROC FORMATS and FORMATS and/or        | 
 | MISSING VALUE RECODES sections in the final SAS setup, remove the      | 
 | comment indicators from the desired section(s).                        | 
 |                                                                        | 
 | These data definition statements were tested using SAS version 6.12    | 
 | for Windows and Unix.                                                  | 
 |                                                                        | 
*-------------------------------------------------------------------------*;
                                                                            
/*                                                                          
   NON-NATIONAL EU CITIZENS OVERSAMPLE:                                     
   IN THIS EUROBAROMETER AN OVERSAMPLE OF NON-NATIONAL BUT EU CITIZENS      
   WAS ADDED FOR EXPERIMENTAL PURPOSE. ON TOP OF THE NORMAL 1000            
   NATIONAL RESPONDENTS, A VARYING NUMBER OF EU CITIZENS HAS BEEN           
   ADDED WHICH HAD TO HAVE ONE OF THE OTHER ELEVEN NATIONALITIES. THIS      
   OVERSAMPLING DOES NOT APPLY FOR NORWAY AND FINLAND. IN TOTAL 373         
   EXTRA-INTERVIEWS WERE MADE IN ACCORDANCE TO THE PROPORTION OF            
   NON-NATIONALS IN EACH COUNTRY.  IN ORDER TO PRODUCE RESULTS FOR          
   NATIONALS ONLY (FOR A VALID COMPAR- ISON WITH PREVIOUS EUROBAROMETER     
   SURVEYS), ONE SHOULD FILTER THE DATA WITH V538 AND USE WEIGHTS "W1"      
   TO "W8" (V6 V8 V9 V11 TO V15). IN ORDER TO FOCUS ON THE ENTIRE TARGET    
   (I.E. INCLUDING NON-NATIONALS) ONE SHOULD FILTER THE DATA USING          
   VARIABLE V536 AND WEIGHTS "WN1" TO "WN8" (V18 TO V25). AS FINLAND AND    
   NORWAY ARE EXCEPTIONS THEY SHOULD BE WEIGHTED USING V16 (NORWAY) AND     
   V17 (FINLAND) RESPECTIVELY. (FILTER VARIABLE V535 INCLUDES NORWAY AND    
   FINLAND). FILTER VARIABLES V535, V536 AND V538 DO ALL EXCLUDE THE        
   SECOND OVERSAMPLE OF <<PEOPLE RESPONSIBLE FOR SHOPPING>>.                
                                                                            
   PEOPLE RESPONSIBLE FOR SHOPPING OVERSAMPLE:                              
   IN ADDITION, ANOTHER OVERSAMPLE OF <<PEOPLE RESPONSIBLE FOR              
   SHOPPING>> (D19A) WAS ADDED. 300 EXTRA-RESPONDENTS PER COUNTRY           
   (EXCEPT NORTHERN IRELAND, FINLAND AND NORWAY) WERE ASKED ONLY A          
   LIMITED SUBSET OF QUESTIONS: THE SUBSTANTIVE QUESTIONS Q.1 TO Q.15,      
   A SELECTION OF DEMO- GRAFICS (D.7, D.8, D.10, D.11, D.12, D.14,          
   D.15A/B, D.19A/B, D.25 AND D.29) AND THE USUAL PROTOCOL VARIABLES        
   (P.1 TO P.7). IN ORDER TO ANALYSE THESE QUESTIONS, BOTH IN THE           
   STANDARD AND IN THE OVERSAMPLE, ONE SHOULD FILTER THE DATA USING         
   SPLIT VARIABLE V537 AND WEIGHTS "WO1" TO "WO8" (V26 TO V33). V537        
   IS CODED '1' FOR OVERSAMPLE RESPONDENTS AND IF STANDARD RESPONDENTS      
   (BOTH NATIONALS AND NON-NATIONALS) ARE <<RESPONSIBLE FOR SHOPPING>>,     
   I.E. CODED '1' IN V451 (D19A).                                           
                                                                            
   DOCUMENT WEIGHT VARIABLES SUPPLIED BY INRA (V6, V8, V9, V11 TO V17)      
   WEIGHT SPECIAL UNITED KINGDOM (V6)                                       
   ----------------------------------                                       
   THIS VARIABLE ADJUSTS THE BRITISH AND NORTHERN IRISH SAMPLES             
   TO THEIR RESPECTIVE PROPORTIONS IN THE UNITED KINGDOM. ALL               
   NATION WEIGHTS ARE INCLUDED. NORWAY AND FINLAND ARE WEIGHTED             
   BY "ZERO"                                                                
                                                                            
   UNLIKE THE "NATION WEIGHT I" IN EARLIER EUROBAROMETERS UP                
   TO 31 THIS WEIGHT ADJUSTS ALL SAMPLES TO THE STANDARD SIZE               
                                                                            
   WEIGHT RESULT FROM TARGET (V8)                                           
   ------------------------------                                           
   THIS VARIABLE CONTAINS WEIGHTS THAT ADJUST THE WEIGHTED SAMPLES          
   TO MAKE THEM REPRESENTATIVE FOR THE COUNTRIES FROM WHICH THEY            
   WERE DRAWN.  IT REPRODUCES THE REAL NUMBER OF CASES FOR EACH             
   COUNTRY. NORWAY AND FINLAND ARE NOT INCLUDED (WEIGHTED BY "ZERO")        
                                                                            
   THIS WEIGHT CORRESPONDS TO "NATION WEIGHT II" IN EARLIER EURO-           
   BAROMETERS UP TO 31                                                      
                                                                            
   WEIGHT ADJUSTED TO STANDARD SIZE (V9)                                    
   -------------------------------------                                    
   THIS VARIABLE CORRESPONDS TO "WEIGHT RESULT FROM TARGET"                 
   ADJUSTING ALL SAMPLES TO THE STANDARD SIZE OF 1000 RESPEC-               
   TIVELY 300 (NORHERN IRELAND) OR 500 (LUXEMBOURG) CASES                   
   NORWAY AND FINLAND ARE NOT INCLUDED (WEIGHTED BY "ZERO")                 
   GREAT BRITAIN (N=1000) AND NORTHERN IRELAND (N=300) ARE                  
   WEIGHTED AS INDEPENDENT SAMPLES                                          
                                                                            
   WEIGHT SPECIAL GERMANY (V11)                                             
   ----------------------------                                             
   THIS VARIABLE ADJUSTS THE EAST AND WEST GERMAN SAMPLES                   
   TO THEIR RESPECTIVE PROPORTIONS IN THE UNITED GERMANY.  ALL              
   NATION WEIGHTS ARE INCLUDED AND ALL SAMPLES ADJUSTED TO                  
   THE STANDARD SIZE.  NORWAY AND FINLAND ARE WEIGHTED BY "ZERO"            
                                                                            
   WEIGHT EURO 6 / 10 / 12 (V12, V13, V14)                                  
   ---------------------------------------                                  
   THESE VARIABLES CONTAIN WEIGHTS THAT ADJUST EACH NATIONAL                
   SAMPLE IN PROPORTION TO ITS NATION'S SHARE IN THE TOTAL                  
   POPULATION OF THE EUROPEAN COMMUNITY COUNTRIES IN THEIR                  
   HISTORIC COMPOSITION:                                                    
                                                                            
   EURO 6 ONLY REFERS TO THE SIX EC FOUNDER-MEMBERS (FRANCE,                
   BELGIUM, NETHERLANDS, WEST GERMANY, ITALY AND LUXEMBOURG)                
   EURO 10 EXCLUDES EAST GERMANY, SPAIN AND PORTUGAL,                       
   EURO 12 EXCLUDES EAST GERMANY (WEIGHTED BY "ZERO"),                      
                                                                            
   WEIGHT EURO 12 + (INCLUDING EAST GERMANY) (V15)                          
   -----------------------------------------------                          
   THIS VARIABLE CONTAINS WEIGHTS THAT ADJUST EACH NATIONAL                 
   SAMPLE IN PROPORTION TO ITS NATION'S SHARE IN THE TOTAL                  
   POPULATION OF ALL THE EUROPEAN COMMUNITY COUNTRIES.  EAST                
   GERMANY AND NORTHERN IRELAND ARE TREATED AS SEPERATE SAMPLES             
   THE NATIONAL WEIGHTS FOR EACH SAMPLE ARE INCLUDED.  NORWAY               
   AND FINLAND ARE NOT INCLUDED (WEIGHTED BY "ZERO")                        
                                                                            
   UNLIKE THE "EUROPEAN WEIGHT" IN EARLIER EUROBAROMETERS UP TO             
   31A THIS WEIGHT CONTAINS THE ADJUSTMENT TO THE STANDARD SIZE             
                                                                            
   WEIGHT RESULT FROM TARGET NORWAY ONLY (V16)                              
   -------------------------------------------                              
   THIS VARIABLE CONTAINS WEIGHTS THAT ADJUST THE WEIGHTED SAMPLE           
   TO MAKE IT REPRESENTATIVE FOR NORWAY (ALL OTHER COUNTRIES ARE            
   WEIGHTED BY "ZERO").  IT REPRODUCES THE REAL NUMBER OF CASES             
                                                                            
   WEIGHT RESULT FROM TARGET FINLAND ONLY (V17)                             
   --------------------------------------------                             
   THIS VARIABLE CONTAINS WEIGHTS THAT ADJUST THE WEIGHTED SAMPLE           
   TO MAKE IT REPRESENTATIVE FOR FINLAND (ALL OTHER COUNTRIES ARE           
   WEIGHTED BY "ZERO"). IT REPRODUCES THE REAL NUMBER OF CASES              
                                                                            
   THESE WEIGHT VARIABLES INCLUDE THE NATIONAL WEIGHTS FOR                  
   EACH SAMPLE AND CONTAIN THE ADJUSTMENT TO THE STANDARD SIZE              
                                                                            
   USE FILTER VARIABLE V535 FOR ANALYSIS USING THE ABOVE DESCRIBED          
   WEIGHTS.  TO EXCLUDE FINLAND AND NORWAY USE FILTER VARIABLE V538         
                                                                            
   ADDITIONAL WEIGHT VARIABLES                                              
   ---------------------------                                              
   WEIGHT VARIABLES (V18-V25) WERE GENERATED FOR ANALYSIS OF                
   NATIONALS AND NON-NATIONALS.  THESE VARIABLES ARE ANALOGOUS              
   TO WEIGHT VARIABLES V6, V8, V9, V11 TO V15                               
   VARIABLE V536 SHOULD BE USED AS A FILTER WHEN USING THESE                
   WEIGHT VARIABLES                                                         
                                                                            
   WEIGHT VARIABLES (V26-V33) WERE GENERATED FOR ANALYSIS OF                
   NATIONALS, NON-NATIONALS AND OVERSAMPLE.  THESE VARIABLES                
   ARE ANALOGOUS TO WEIGHT VARIABLES V6, V8, V9, V11 TO V15                 
   VARIABLE V537 SHOULD BE USED AS A FILTER WHEN USING THESE                
   WEIGHT VARIABLES                                                         
   */                                                                       
                                                                            
* SAS PROC FORMAT;                                                          
                                                                            
/*                                                                          
PROC FORMAT;                                                                
   VALUE V2FT (MAX=40)                                                      
   4 = "FOURTH ICPSR EDITION, FEBRUARY 1998";                               
   VALUE V3FT (MAX=40)                                                      
   1 = "PART ONE";                                                          
   VALUE V5FT (MAX=40)                                                      
   1 = "FRANCE"                                                             
   2 = "BELGIUM"                                                            
   3 = "NETHERLANDS"                                                        
   4 = "WEST GERMANY"                                                       
   5 = "ITALY"                                                              
   6 = "LUXEMBOURG"                                                         
   7 = "DENMARK"                                                            
   8 = "IRELAND"                                                            
   9 = "UNITED KINGDOM"                                                     
   10 = "GREECE"                                                            
   11 = "SPAIN"                                                             
   12 = "PORTUGAL"                                                          
   13 = "EAST GERMANY"                                                      
   14 = "NORWAY"                                                            
   15 = "FINLAND";                                                          
   VALUE V7FT (MAX=40)                                                      
   1 = "FRANCE"                                                             
   2 = "BELGIUM"                                                            
   3 = "NETHERLANDS"                                                        
   4 = "WEST GERMANY"                                                       
   5 = "ITALY"                                                              
   6 = "LUXEMBOURG"                                                         
   7 = "DENMARK"                                                            
   8 = "IRELAND"                                                            
   9 = "GREAT BRITAIN"                                                      
   10 = "NORTHERN IRELAND"                                                  
   11 = "GREECE"                                                            
   12 = "SPAIN"                                                             
   13 = "PORTUGAL"                                                          
   14 = "EAST GERMANY"                                                      
   15 = "NORWAY"                                                            
   16 = "FINLAND";                                                          
   VALUE V10FT (MAX=40)                                                     
   1 = "FRANCE"                                                             
   2 = "BELGIUM"                                                            
   3 = "NETHERLANDS"                                                        
   4 = "GERMANY"                                                            
   5 = "ITALY"                                                              
   6 = "LUXEMBOURG"                                                         
   7 = "DENMARK"                                                            
   8 = "IRELAND"                                                            
   9 = "GREAT BRITAIN"                                                      
   10 = "NORTHERN IRELAND"                                                  
   11 = "GREECE"                                                            
   12 = "SPAIN"                                                             
   13 = "PORTUGAL"                                                          
   14 = "NORWAY"                                                            
   15 = "FINLAND";                                                          
   VALUE V34FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "AT PRESENT ADDRESS"                                                 
   2 = "AT ANOTHER ADDRESS"                                                 
   3 = "DONT KNOW IF REGISTERED"                                            
   4 = "DOES NOT APPEAR"                                                    
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V35FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "BELGIUM"                                                            
   2 = "DENMARK"                                                            
   3 = "GERMANY"                                                            
   4 = "GREECE"                                                             
   5 = "SPAIN"                                                              
   6 = "FRANCE"                                                             
   7 = "IRELAND"                                                            
   8 = "ITALY"                                                              
   9 = "LUXEMBURG"                                                          
   10 = "NETHERLANDS"                                                       
   11 = "PORTUGAL"                                                          
   12 = "UNITED KINGDOM (GREAT BRITAIN, N IRELAND"                          
   13 = "OTHER COUNTRIES"                                                   
   14 = "DONT KNOW"                                                         
   99 = "<INAP, CODED 16 IN V7>";                                           
   VALUE V36FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "VERY SATISFIED"                                                     
   2 = "FAIRLY SATISFIED"                                                   
   3 = "NOT VERY SATISFIED"                                                 
   4 = "NOT AT ALL SATISFIED"                                               
   5 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V37FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "VERY SATISFIED"                                                     
   2 = "FAIRLY SATISFIED"                                                   
   3 = "NOT VERY SATISFIED"                                                 
   4 = "NOT AT ALL SATISFIED"                                               
   5 = "DK";                                                                
   VALUE V38FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FREQUENTLY"                                                         
   2 = "OCCASIONALLY"                                                       
   3 = "NEVER"                                                              
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V39FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "OFTEN"                                                              
   2 = "FROM TIME TO TIME"                                                  
   3 = "RARELY"                                                             
   4 = "NEVER"                                                              
   5 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7";                                             
   VALUE V40FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 15 & 16 IN V7>";                                       
   VALUE V41FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, 2 IN Q6, 15 & 16 IN V7>";                                    
   VALUE V42FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "X IS COMMON NAME FOR A TYPE OF PRODUCT"                             
   2 = "X IS PROD FR (FIRST ANSWER FROM Q.9)"                               
   9 = "<INAP, 2 IN Q6, 15 & 16 IN V7>";                                    
   VALUE V43FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "X IS COMMON NAME FOR A TYPE OF PRODUCT"                             
   2 = "X IS PROD FR (FIRST ANSWER FROM Q.9)"                               
   9 = "<INAP, 2 IN Q6, 15 & 16 IN V7>";                                    
   VALUE V44FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "X IS COMMON NAME FOR A TYPE OF PRODUCT"                             
   2 = "X IS PROD FR (FIRST ANSWER FROM Q.9)"                               
   9 = "<INAP, 2 IN Q6, 15 & 16 IN V7>";                                    
   VALUE V45FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "X IS COMMON NAME FOR A TYPE OF PRODUCT"                             
   2 = "X IS PROD FR (FIRST ANSWER FROM Q.9)"                               
   9 = "<INAP, 2 IN Q6, 15 & 16 IN V7>";                                    
   VALUE V46FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "X IS COMMON NAME FOR A TYPE OF PRODUCT"                             
   2 = "X IS PROD FR (FIRST ANSWER FROM Q.9)"                               
   9 = "<INAP, 2 IN Q6, 15 & 16 IN V7>";                                    
   VALUE V47FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 15 & 16 IN V7>";                                       
   VALUE V48FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 15 &  16 IN V7>";                                      
   VALUE V49FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "X IS COMMON NAME FOR A TYPE OF CHEESE"                              
   2 = "X IS A CHEESE FROM (FIRST ANSWER FR Q13)"                           
   9 = "<INAP 2 IN Q12, 15 & 16 IN V7>";                                    
   VALUE V50FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "X IS COMMON NAME FOR A TYPE OF CHEESE"                              
   2 = "X IS A CHEESE FROM (2ND ANSWER FR Q13)"                             
   9 = "<INAP 2 IN Q12, 15 & 16 IN V7>";                                    
   VALUE V51FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "X IS COMMON NAME FOR A TYPE OF CHEESE"                              
   2 = "X IS A CHEESE FROM (THIRD ANSWER FR Q13)"                           
   9 = "<INAP 2 IN Q12, 15 & 16 IN V7>";                                    
   VALUE V52FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "X IS COMMON NAME FOR A TYPE OF CHEESE"                              
   2 = "X IS A CHEESE FROM (4TH ANSWER FR Q13)"                             
   9 = "<INAP 2 IN Q12, 15 & 16 IN V7>";                                    
   VALUE V53FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "X IS COMMON NAME FOR A TYPE OF CHEESE"                              
   2 = "X IS A CHEESE FROM (FIFTH ANSWER FR Q13)"                           
   9 = "<INAP 2 IN Q12, 15 & 16 IN V7>";                                    
   VALUE V54FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "AT LEAST ONCE A WEEK"                                               
   2 = "ABOUT EVERY TWO WEEKS"                                              
   3 = "ABOUT EVERY MONTH"                                                  
   4 = "ABOUT EVERY 2-3 MONTHS"                                             
   5 = "LESS OFTEN"                                                         
   6 = "(PRACTICALLY) NEVER"                                                
   7 = "DK"                                                                 
   8 = "<UNDOCUMENTED CODE>"                                                
   9 = "<INAP, 15 &  16 IN V7>";                                            
   VALUE V55FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "AT LEAST ONCE A WEEK"                                               
   2 = "ABOUT EVERY TWO WEEKS"                                              
   3 = "ABOUT EVERY MONTH"                                                  
   4 = "ABOUT EVERY 2-3 MONTHS"                                             
   5 = "LESS OFTEN"                                                         
   6 = "(PRACTICALLY) NEVER"                                                
   7 = "DK"                                                                 
   8 = "<UNDOCUMENTED CODE>"                                                
   9 = "<INAP, 15 & 16 IN V7>";                                             
   VALUE V56FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "EVERYDAY"                                                           
   2 = "SEVERAL TIMES A WEEK"                                               
   3 = "ONCE OR TWICE A WEEK"                                               
   4 = "LESS OFTEN"                                                         
   5 = "NEVER"                                                              
   6 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V57FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "EVERYDAY"                                                           
   2 = "SEVERAL TIMES A WEEK"                                               
   3 = "ONCE OR TWICE A WEEK"                                               
   4 = "LESS OFTEN"                                                         
   5 = "NEVER"                                                              
   6 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V58FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "EVERYDAY"                                                           
   2 = "SEVERAL TIMES A WEEK"                                               
   3 = "ONCE OR TWICE A WEEK"                                               
   4 = "LESS OFTEN"                                                         
   5 = "NEVER"                                                              
   6 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V59FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "A GREAT DEAL"                                                       
   2 = "TO SOME EXTENT"                                                     
   3 = "NOT MUCH"                                                           
   4 = "NOT AT ALL"                                                         
   5 = "DK";                                                                
   VALUE V60FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "VERY WELL"                                                          
   2 = "QUITE WELL"                                                         
   3 = "NOT VERY WELL"                                                      
   4 = "NOT AT ALL WELL"                                                    
   5 = "DK";                                                                
   VALUE V61FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "A GOOD THING"                                                       
   2 = "A BAD THING"                                                        
   3 = "NEITHER GOOD NOR BAD"                                               
   4 = "DK";                                                                
   VALUE V62FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "BENEFITED"                                                          
   2 = "NOT BENEFITED"                                                      
   3 = "DK";                                                                
   VALUE V63FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "1 STANDING STILL"                                                   
   2 = "2"                                                                  
   3 = "3"                                                                  
   4 = "4"                                                                  
   5 = "5"                                                                  
   6 = "6"                                                                  
   7 = "7 AS FAST AS POSSIBLE"                                              
   8 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V64FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "1 STANDING STILL"                                                   
   2 = "2"                                                                  
   3 = "3"                                                                  
   4 = "4"                                                                  
   5 = "5"                                                                  
   6 = "6"                                                                  
   7 = "7 AS FAST AS POSSIBLE"                                              
   8 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V65FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V66FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V67FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V68FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V69FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V70FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V71FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V72FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V73FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V74FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V75FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V76FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V77FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V78FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V79FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V80FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V81FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V82FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V83FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "(NATIONAL) GOVERNMENT"                                              
   2 = "THE EUROPEAN COMMUNITY"                                             
   3 = "DK";                                                                
   VALUE V84FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "VERY SATISFIED"                                                     
   2 = "FAIRLY SATISFIED"                                                   
   3 = "NOT VERY SATISFIED"                                                 
   4 = "NOT AT ALL SATISFIED"                                               
   5 = "DK";                                                                
   VALUE V85FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, NOT GREECE>";                                                
   VALUE V86FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "VERY IMPORTANT"                                                     
   2 = "IMPORTANT"                                                          
   3 = "NOT VERY IMPORTANT"                                                 
   4 = "NOT AT ALL IMPORTANT"                                               
   5 = "DK"                                                                 
   9 = "<INAP, NOT GREECE>";                                                
   VALUE V87FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V88FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V89FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V90FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V91FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V92FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V93FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V94FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V95FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V96FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V97FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V98FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK";                                                                
   VALUE V99FT (MAX=40)                                                     
   0 = "<NA>"                                                               
   1 = "VERY HOPEFUL"                                                       
   2 = "RATHER HOPEFUL"                                                     
   3 = "RATHER FEARFUL"                                                     
   4 = "VERY FEARFUL"                                                       
   5 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V100FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 15 & 16 IN V7>";                                       
   VALUE V101FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "A POSITIVE EFFECT"                                                  
   2 = "NOT A POSITIVE EFFECT"                                              
   3 = "DK"                                                                 
   9 = "<INAP, 15 & 16 IN V7>";                                             
   VALUE V102FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK";                                                                
   VALUE V103FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES CORRECT DATE MENTIONED"                                         
   2 = "YES INCORRECT DATE MENTIONED"                                       
   3 = "NO, DOES NOT KNOW THE DATE"                                         
   9 = "<INAP, 15 & 16 IN V7>";                                             
   VALUE V104FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "WILL CERTAINLY GO AND VOTE"                                         
   2 = "WILL PROBABLY GO AND VOTE"                                          
   3 = "WILL PROBABLY NOT VOTE"                                             
   4 = "WILL CERTAINLY NOT VOTE"                                            
   5 = "OTHER ANSWER (SPONTANEOUS)"                                         
   6 = "DK"                                                                 
   9 = "<INAP, 15 & 16 IN V7>";                                             
   VALUE V105FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "NOT INTRSTD POLITICS OR ELECTIONS"                                  
   2 = "NOT INTRSTD EUROPEAN ELECTIONS"                                     
   3 = "LOST INTRST EUROPEAN MATTERS"                                       
   4 = "NEVER BEEN INTRSTD EUROPEAN MATTERS"                                
   5 = "ALWAYS BEEN AGAINST EUROPE"                                         
   6 = "AGAINST EVEN MORE EUROPE"                                           
   7 = "NOT WELL ENOUGH INFORMED TO VOTE"                                   
   8 = "RESULT IS FOREGONE CONCLUSION"                                      
   9 = "OTHER REASONS (SPONTANEOUS)"                                        
   10 = "DK"                                                                
   99 = "<INAP, NOT 2-6 Q34, 15 & 16 V7>";                                  
   VALUE V106FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "A) INDIVIDUAL CANDIDATES"                                           
   2 = "B) PARTIES"                                                         
   3 = "C) CONTENT PROPOSED POLICIES"                                       
   4 = "D) NONE OF THESE (SPONTANEOUS)"                                     
   5 = "E) DK"                                                              
   9 = "<INAP, NOT 1 OR 2 Q34, 15 & 16 V7>";                                
   VALUE V107FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "A) INDIVIDUAL CANDIDATES"                                           
   2 = "B) PARTIES"                                                         
   3 = "C) CONTENT PROPOSED POLICIES"                                       
   4 = "D) NONE OF THESE (SPONTANEOUS)"                                     
   5 = "E) DK"                                                              
   9 = "<INAP, NOT 1 OR 2 Q34, 15 & 16 V7>";                                
   VALUE V108FT (MAX=40)                                                    
   0 = "NO ANSWER"                                                          
   90 = "OTHER PARTY"                                                       
   95 = "WOULD VOTE BLANK/SPOIL VOTE"                                       
   96 = "WOULD NOT VOTE"                                                    
   98 = "DK"                                                                
   99 = "<INAP, NOT 1 OR 2 IN Q34, 15 & 16 V7>";                            
 * DOCUMENT V108 - Q37, PARTY CODING                                        
   FRANCE                                                                   
       (05)  <PSU> PARTI SOCIALISTE UNIFIE ET EXTREME GAUCHE                
             (LUTTE OUVRIERE) <UNIFIED SOCIALISTS AND EXTREME               
             LEFT (WORKERS STRUGGLE)>                                       
       (10)  <PCF> PARTI COMMUNISTE FRANCAIS <COMMUNIST PARTY>              
       (20)  <PS> PARTI SOCIALISTE <SOCIALIST PARTY>                        
       (30)  <MRG> MOUVEMENT DES RADICAUX DE GAUCHE <LEFT                   
             RADICALS>                                                      
       (50)  LES VERTS <GREEN PARTY>                                        
       (51)  <GE> GENERATION ECOLOGIE <ECOLOGISTS>                          
       (56)  <CPN> CHASSE PECHE ET NATURE <HUNTING, FISHING AND             
             NATURE>                                                        
       (59)  <CNI> CENTRE NACIONAL DES INDEPENDANTS <NATIONAL               
             CENTRE OF INDEPENDENTS>                                        
       (60)  <RPR> RASSEMBLEMENT POUR LA REPUBLIQUE <RALLY FOR              
             THE REPUBLIC>                                                  
       (70)  <PR-UDF> PARTI REPUBLICAIN -- UNION POUR LA                    
             DEMOCRATIE FRANCAIS <UNION FOR FRENCH DEMOCRACY --             
             REPUBLICAN PARTY>                                              
       (71)  <CDS-UDF> CENTRE DES DEMOCRATES SOCIAUX -- UNION               
             POUR LA DEMOCRATIE FRANCAIS <UNION FOR FRENCH                  
             DEMOCRACY -- SOCIAL DEMOCRATIC CENTRE>                         
       (72)  <RAD-UDF> RADICAUX -- UNION POR LA DEMOCRATIE                  
             FRANCAISE <UNION FOR FRENCH DEMOCRACY -- RADICAL               
             PARTY>                                                         
       (73)  <UPF> UNION POUR LE FRANCE <UNION FOR FRANCE>                  
       (80)  <FN> FRONT NATIONAL ET EXTREME DROITE <NATIONAL                
             FRONT AND EXTREME RIGHT>                                       
    BELGIUM                                                                 
       (10)  <PCB/KPB> PARTI COMMUNISTE BELGE <COMMUNIST PARTY>             
       (20)  <PSB> PARTI SOCIALISTE BELGE <SOCIALIST PARTY --               
             FRENCH>                                                        
       (21)  <BSP> BELGISCHE SOCIALISTISCHE PARTIJ <SOCIALIST               
             PARTY - FLEMISH>                                               
       (41)  <VLD> VLAAMSE LIBERALEN EN DEMOCRATEN (QUPEREVENT              
             PVV) <FLEMISH LIBERALS AND DEMOCRATS (FORMER                   
             <PVV>)>                                                        
       (50)  <VU> VOLKSUNIE <FLEMISH NATIONALISTS>                          
       (51)  <FDF-RW> FRONT DEMOCRATIQUE FRANCOPHONE ET                     
             RASSEMBLEMENT WALLON <FRANCOPHONE DEMOCRATIC FRONT             
             / WALLOON RALLY>                                               
       (52)  <VLB> VLAAMS BLOK <FLEMISH BLOCK>                              
       (53)  <PRL> PARTI REFORMATEUR LIBERAL (PARTI DES REFORMS             
             ET DE LA LIBERTE) <LIBERAL REFORM PARTY>                       
       (54)  (ROSSEM) RADICALE OMVORMERS STRIJDERS EN                       
             STRUBBELAARS VOOR EEN EERLIJKE MAATSCHAPPIJ                    
       (55)  <ECOLO> ECOLOGISTES CONFEDERES POUR L'ORGANISATION             
             DE LUTTES ORIGINALES <ECOLOGISTS>                              
       (56)  <AGALEV> ANDERS GAAN LEVEN <LIVE DIFFERENTLY --                
             ECOLOGISTS>                                                    
       (60)  <PSC> PARTI SOCIAL CHRETIEN <CHRISIAN SOCIAL PARTY             
             -- FRENCH>                                                     
       (61)  <CVP> CHRISTELIJKE VOLKSPARTIJ <CHRISTIAN PEOPLE'S             
             PARTY - FLEMISH>                                               
       (80)  <UDRT/RAD> UNION DEMOCRATIQUE POUR LE RESPECT DU               
             TRAVAIL - RESPEKT VOOR ARBEID EN DEMOKRATIE                    
             <DEMOCRATIC UNION FOR THE RESPECT OF LABOUR>                   
    NETHERLANDS                                                             
       (17)  GROEN LINKS (REGENBOOG) <GREEN LEFT>:                          
             <PPR> POLITIEKE PARTIJ                                         
             RADICALEN <RADICAL POLITICAL PARTY>                            
             <PSP> PACIFISTISCH-SOCIALISTISCHE PARTIJ                       
             <PACIFIST SOCIALISTY PARTY>                                    
             <CPN> COMMUNISTISCHE PERTIJ NEDERLAND                          
             <COMMUNIST PARTY>                                              
             <EVP> EVANGELISCHE VOLKSPARTIJ                                 
             <EVANGELICAL PEOPLE'S PARTY>                                   
       (20)  <PVDA> PARTIJ VAN DE ARBEID <LABOUR PARTY>                     
       (22)  <D'66> DEMOCRATEN 66 <DEMOCRATS '66>                           
       (57)  <CD>  CENTRUM DEMOCRATEN <CENTRE DEMOCRATS>                    
       (63)  <CDA>  CHRISTEN DEMOCRATISCH APPEL <CHRISTIAN                  
             DEMOCRATIC APPEAL>                                             
       (70)  <VVD>  VOLKSPARTIJ VOOR VRIJHEID EN DEMOCRATIE                 
             <LIBERAL PARTY>                                                
       (81)  <SGP> STAATKUNDIG GEREFORMEERDE PARTIJ <POLITICAL              
             REFORMED PARTY>                                                
       (82)  <GPV> GEREFORMEERD POLITIEK VERBOND <REFORMED                  
             POLITICAL UNION>                                               
       (84)  <RPF> REFORMATORISCHE POLITIEKE FEDERATIE <REFORMED            
             POLITICAL FEDERATION>                                          
    WEST GERMANY                                                            
       (10)  LINKE LISTE / PDS (PARTEI DES DEMOKRATISCHEN                   
             SOZIALISMUS) <PARTY OF DEMOCRATIC SOCIALISM -- LEFT            
             LIST>                                                          
       (20)  <SPD> SOZIALDEMOKRATISCHE PARTEI DEUTSCHLANDS                  
             <SOCIAL DEMOCRATIC PARTY>                                      
       (40)  <FDP> FREIE DEMOKRATISCHE PARTEI <FREE DEMOCRATS>              
       (50)  BUENDNIS 90 / DIE GRUENEN <ALLIANCE '90 / GREENS>              
       (59)  PARTEILOSEN <NON-PARTY-ALIGNED>                                
       (60)  <CDU-CSU> CHRISTLICH DEMOKRATISCHE UNION --                    
             CHRISTLICH SOZIALE UNION <CHRISTIAN DEMOCRATIC                 
             UNION / CHRISTIAN SOCIAL UNION>                                
       (80)  <NPD> NATIONALDEMOKRATISCHE PARTEI DEUTSCHLANDS                
             <NATIONAL DEMOCRATIC PARTY>                                    
       (81)  DIE REPUBLIKANER <REPUBLICANS>                                 
       (82)  <DVU> DEUTSCHE VOLKSUNION <GERMAN POPULAR UNION>               
    ITALY                                                                   
       (10)  <RC> RIFONDAZIONE COMMUNISTA <COMMUNIST                        
             REFOUNDATION (ORTHODOX)>                                       
       (11)  <PDS> PARTITO DEMOCRATICO DELLA SINISTRA                       
             <DEMOCRATIC PARTY OF THE LEFT>                                 
       (15)  LISTA PANNELLA <FORMER RADICAL LEADERS>                        
       (16)  LA RETE -- MOVIMENTO PER LA DEMOCRAZIA <MOVEMENT               
             FOR DEMOCRACY (ANTI-MAFIA PARTY)>                              
       (19)  PROGRESSISTI <PROGRESSIVE ALLIANCE: <PDS> + <RC> +             
             VERDI + LA RETE + <PSI> + <AD>>                                
       (20)  <PSI> PARTITO SOCIALISTA ITALIANO <SOCIALIST PARTY>            
       (31)  SOCIALDEMOCRAZIA PER LA LIBERTA                                
       (42)  <AD> ALLEANZA DEMOCRATICA <DEMOCRATIC ALLIANCE --              
             LIBERAL>                                                       
       (50)  VERDI -- FEDERAZIONE DEI VERDI/FEDERAZIONE DELLE               
             LISTE VERDI <GREENS>                                           
       (61)  <PPI> PARTITO POPOLARE ITALIANO <POPULAR PARTY -               
             TRANSFORMATION OF <DC>>                                        
       (62)  <CCD> CENTRO CRISTIANO DEMOCRATICO <CHRISTIAN                  
             DEMOCRATIC CENTRE -- SPLINTER OF <DC>>                         
       (64)  PATTO PER L'ITALIA <PACT FOR ITALY: <PPI> AND PATTO            
             SEGNI>                                                         
       (71)  FORZA ITALIA                                                   
       (72)  POLO PER LA LIBERTA <POLE OF FREEDOM: LEGA NORD +              
             FORZA ITALIA IN NORTHERN REGIONS>                              
       (73)  POLO DEL BUON GOVERNO <POLE OF GOOD GOVERNMENT:                
             FORZA ITALIA + <AN> IN SOUTHERN REGIONS>                       
       (75)  LEGA NORD <NORTHERN LEAGUE>                                    
       (80)  <AN> ALLEANZA NAZIONALE <NATIONAL ALLIANCE --                  
             FORMER <MSI>>                                                  
    LUXEMBOURG                                                              
       (10)  <KP/PC>  KOMMUNISTESCH PARTEI <COMMUNIST PARTY>                
       (20)  <LSAP-POSL> LETZEBUERGER SOZIALISTISCH                         
             ARBECHTERPARTEI <SOCIALIST WORKERS PARTY>                      
       (50)  <GAP/GLEI> DE GRENG ALTERNATIV -- GRENG LESCHT                 
             EKOLOGESCH INITIATIV <GREEN ALTERNATIVE PARTY --               
             GREEN ECOLOGICAL INITIATIVE LIST>                              
       (60)  <CSV> CHRESTLECH-SOZIAL VOLLEKSPARTEI <CHRISTIAN               
             SOCIAL PARTY>                                                  
       (70)  <DP/PD> DEMOKRATESCH PARTEI <DEMOCRATIC PARTY --               
             LIBERAL>                                                       
       (79)  <ADR / 5/6 RENTELESCHT> AKTIOUNSKOMITEE FIR                    
             DEMOKRATIE A RENTEGERECHTEGKEET / 5/6 RENTELESCHT              
             <PROTEST PARTY - EMERGED FROM AKTIOUNSKOMITEE 5/6              
             -- AKTIOUNSKOMITEE 5/6>                                        
       (80)  NATIONAL BEWEGUNG <NATIONAL MOVEMENT>                          
    DENMARK                                                                 
       (15)  <SF> SOCIALISTISK FOLKEPARTI <SOCIALIST PEOPLE'S               
             PARTY>                                                         
       (16)  FOLKEBEVAEGELSEN MOD EF <PEOPLE'S MOVEMENT>                    
       (20)  <S> SOCIALDEMOKRATIET <SOCIAL DEMOCRATS>                       
       (40)  <CD> CENTRUM-DEMOKRATERNE <CENTRE DEMOCRATS>                   
       (41)  <RV> RADIKALE VENSTRE <SOCIAL LIBERALS>                        
       (52)  JUNIBEVAEGELSEN <JUNE MOVEMENT (CONTINUATION OF                
             EUROPE92)>                                                     
       (60)  <KF> KONSERVATIVE FOLKEPARTI <CONSERVATIVE PEOPLE'S            
             PARTY>                                                         
       (61)  <KRF> KRISTELIGT FOLKEPARTI <CHRISTIAN PEOPLE'S                
             PARTY>                                                         
       (70)  <V> VENSTRE <LIBERALS>                                         
       (80)  <FP> FREMSKRIDTSPARTIET <PROGRESS PARTY>                       
    IRELAND                                                                 
       (15)  DEMOCRATIC LEFT                                                
       (20)  THE LABOUR PARTY                                               
       (21)  <WP> THE WORKERS' PARTY                                        
       (22)  <PD> PROGRESSIVE DEMOCRATIC PARTY                              
       (30)  <FG> FINE GAEL <UNITED IRELAND PARTY>                          
       (50)  THE GREEN PARTY                                                
       (59)  INDEPENDENTS                                                   
       (60)  <FF> FIANNA FAIL <SOLDIERS OF DESTINY -- REPUBLICAN            
             PARTY>                                                         
       (81)  <SF> SINN FEIN <POLITICAL WING OF IRISH REPUBLICAN             
             ARMY>                                                          
    GREAT BRITAIN                                                           
       (20)  THE LABOUR PARTY                                               
       (30)  <SDP> THE SOCIAL DEMOCRATIC PARTY                              
       (40)  <SLD> THE LIBERAL DEMOCRATS                                    
       (50)  <SNP> THE SCOTTISH NATIONALIST PARTY                           
       (51)  THE GREEN PARTY                                                
       (52)  PLAID CYMRU <WELSH NATIONALISTS>                               
       (60)  THE CONSERVATIVE PARTY                                         
    NORTHERN IRELAND                                                        
       (15)  <SDLP> SOCIAL DEMOCRATIC LABOUR PARTY                          
       (60)  CONSERVATIVES                                                  
       (61)  ULSTER UNIONIST PARTY                                          
       (62)  DEMOCRATIC UNIONIST PARTY                                      
       (64)  OTHER UNIONIST                                                 
       (65)  ALLIANCE                                                       
       (80)  <WP> THE WORKERS PARTY <NATIONALIST PARTY IN                   
             NORTHERN IRELAND>                                              
       (81)  <SF> SINN FEIN <POLITICAL WING OF IRISH REPUBLICAN             
             ARMY>                                                          
       (90)  OTHER PARTY                                                    
    GREECE                                                                  
       (10)  <KKE> KOMMUNISTIKOU KOMMA ELLADOS <COMMUNIST PARTY             
             OF GREECE -- EXTERIOR>                                         
       (15)  SYNASPISMOS TAE ARISTERAS <LEFT PROGRESSIVE                    
             ALLIANCE: KKE, EAR AND OTHERS>                                 
       (20)  PASOK PANHELLINIO SOCIALISTIKO KINEMA <PAN                     
             HELLENIC SOCIALIST MOVEMENT>                                   
       (60)  <ND> NEA DIMOKRATIA <NEW DEMOCRACY>                            
       (61)  <POLAN> POLITIKI ANIXI <POLITICAL SPRING (SPLINTER             
             FROM <ND>)>                                                    
       (71)  <DIANA> DIMOKRATIKI ANANEOSI <DEMOCRATIC RENEWAL>              
       (90)  OTHER PARTY (HELLENIE LIBERAL PARTY AND OTHERS)                
    SPAIN                                                                   
       (10)  <IU> IZQUIERDA UNIDA <UNITED LEFT>                             
       (20)  <PSOE> PARTIDO SOCIALISTA OBRERO ESPANOL <SOCIALIST            
             WORKERS' PARTY>                                                
       (50)  <PV> PARTIDO VERDE <GREEN PARTY>                               
       (51)  VERDES ECOLOGISTAS <ECOLOGICAL GREENS>                         
       (52)  <IP> IZQUIERDA DE LOS PUEBLOS <PEOPLE'S LEFT>                  
       (53)  <ERC> ESQUERRA REPUBLICANA DE CATALUNYA <CATALAN               
             REPUBLICAN LEFT>                                               
       (54)  <PA> PARTIDO ANDALUCISTA <ANDALUSIAN PARTY>                    
       (55)  <HB> HERRI BATASUNA <BASQUE UNITED PARTY -- LEFT               
             REGIONAL PARTY>                                                
       (56)  <CIU> CONVERGENCIA I UNIO <CONVERGENCE AND UNITY --            
             CENTRE CATALAN>                                                
       (57)  <VARIOUS CENTRE REGIONAL PARTIES:>                             
             <BNPG> BLOQUE NACIONALISTA POPOLAR GALEGO <GALICIAN            
             NATIONAL POPULAR BLOCK -- GALICIA/CATALUNA/                    
             MADRID>                                                        
             <AIC> AGRUPACION IDEPENDIENTE CANARIA <CANARY                  
             ISLANDS INDEPENDENTS -- CANARIAS>                              
             <PAR> PARTIDO ARAGONES NACIONALISTA <ARAGONESE                 
             REGIONALIST PARTY>                                             
             <UV> UNION VALENCIANA <VALENCIAN UNION -- PAIS                 
             VALENCIANO>                                                    
             <EA> EUSKO ALKARTASUNA <BASQUE SOLIDARITY -- PAIS              
             BOSCO>                                                         
       (58)  <PNV> PARTIDO NACIONALISTA VASCO <BASQUE                       
             NATIONALIST PARTY>                                             
       (59)  <CN> COALICION NACIONALISTA/AGRUPACION RIUZ MATEOS             
       (60)  <CDS> CENTRO DEMOCRATICO Y SOCIAL <DEMOCRATIC AND              
             SOCIAL CENTRE>                                                 
       (70)  <PP> PARTIDO POPULAR <POPULAR PARTY (FORMERLY:                 
             POPULAR ALLIANCE)>                                             
       (80)  <FE JONS> FALANGE ESPANOLA TRADICIONALISTA Y DE LAS            
             JUNTAS DE OFENSIVA NACIONAL SINDICALISTA <SPANISH              
             PHALANX OF THE BOARDS OF THE NATIONAL SYNDICALIST              
             OFFENSIVE>                                                     
    PORTUGAL                                                                
       (05)  <PRD> PARTIDO RENOVADOR DEMOCRATICO <DEMOCRATIC                
             RENEWAL PARTY>                                                 
       (10)  <CDU> COLIGACAO DEMOCRATICA SOCIAL <UNITED                     
             DEMOCRATICS COALITION>                                         
       (16)  <PSR> PARTIDO SOCIALISTA REVOLUCIONARIO                        
             <REVOLUTIONARY SOCIALIST PARTY>                                
       (17)  <PCTP/MRPP> PARTIDO COMUNISTA DOS TRABALHADORES                
             PORTUGUESES <COMMUNIST PARTY OF PORTUGUESE WORKERS>            
       (20)  <PS>  PARTIDO SOCIALISTA <SOCIALIST PARTY>                     
       (30)  <PSD> PARTIDO SOCIAL DEMOCRATA <SOCIAL DEMOCRATIC              
             PARTY>                                                         
       (40)  <PSN> PARTIDO DA SOLIDAREIDADE NACIONAL <PARTY OF              
             NATIONAL SOLIDARITY>                                           
       (60)  <CDS-PP> CENTRO DEMOCRATICO SOCIAL -- PARTIDO                  
             POPULAR <CENTRE SOCIAL DEMOCRATS -- POPULAR PARTY>             
       (81)  <PPM> PARTIDO POPULAR MONARQUICO <POPULAR                      
             MONARCHIST PARTY>                                              
    EAST GERMANY                                                            
       (10)  LINKE LISTE/PDS (PARTEI DES DEMOKRATISCHEN                     
             SOZIALISMUS) <LEFT LIST/PARTY OF DEMOCRATIC                    
             SOCIALISM>                                                     
       (20)  <SPD> SOZIALDEMOKRATISCHE PARTEI <SOCIAL DEMOCRATIC            
             PARTY>                                                         
       (40)  <FDP> FREIE DEMOKRATISCHE PARTEI <FREE DEMOCRATS>              
       (50)  BUENDNIS 90/DIE GRUENEN <ALLIANCE '90/THE GREENS>              
       (59)  PARTEILOSEN (NON-PARTY-ALIGNED)                                
       (60)  <CDU> CHRISTLICH DEMOKRATISCHE UNION <CHRISTIAN                
             DEMOCRATIC UNION>                                              
       (80)  <NPD> NATIONALDEMOKRATISCHE PARTEI DEUTSCHLANDS                
             <NATIONAL DEMOCRATIC PARTY>                                    
       (81)  DIE REPUBLIKANER <REPUBLICANS>                                 
       (82)  <DVU> DEUTSCHE VOLKSUNION <GERMAN POPULAR UNION> ;             
   VALUE V109FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YOUR OPIN ABOUT NATL ISSUES"                                        
   2 = "YOUR OPIN ABOUT EUROPE"                                             
   3 = "DK"                                                                 
   9 = "<INAP, NOT 1 OR 2 IN Q34, 15 & 16 V7>";                             
   VALUE V110FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "UNEMPLOYMENT/RECESSION"                                             
   2 = "DEMOCRACY IN EURO COMMUNITY"                                        
   3 = "WORKERS RIGHTS"                                                     
   4 = "SOCIAL BENEFITS/HEALTH CARE"                                        
   5 = "EDUCATION"                                                          
   6 = "RACISM"                                                             
   7 = "FOREIGN POLICY/DEFENCE"                                             
   8 = "PENSIONERSRIGHTS"                                                   
   9 = "HOMELESSNESS/POVERTY"                                               
   10 = "CRIME"                                                             
   11 = "THE ENVIRONMENT"                                                   
   12 = "TAXATION"                                                          
   13 = "MONETARY UNION"                                                    
   14 = "DK"                                                                
   99 = "<INAP, NOT 1 OR 2 IN Q34, 15 & 16 V7>";                            
   VALUE V111FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES, MORE POWER"                                                    
   2 = "NO, NOT MORE POWER"                                                 
   3 = "DK";                                                                
   VALUE V112FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, NOT WOMEN>";                                                 
   VALUE V113FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V114FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V115FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V116FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V117FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V118FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V119FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V120FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V121FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V122FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V123FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V124FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V125FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V126FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V127FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V128FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V129FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V130FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V131FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V132FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V133FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V134FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V135FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V136FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V137FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT WOMEN, 15 IN V7>";                                       
   VALUE V138FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "NO, NOT CROSSED SUCH BORDERS"                                       
   2 = "YES, CROSSED AND SAVED TIME"                                        
   3 = "YES, CROSSED BUT DIDNT SAVE TIME"                                   
   4 = "DK"                                                                 
   9 = "<INAP, 15 & 16 IN V7>";                                             
   VALUE V139FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES, HEARD ABOUT"                                                   
   2 = "NO, NOT HEARD ABOUT"                                                
   9 = "<INAP, 15 & 16 IN V7>";                                             
   VALUE V140FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES, BENEFITED"                                                     
   2 = "NO, NOT BENEFITED"                                                  
   3 = "DK"                                                                 
   9 = "<INAP, 2 IN Q45, 15 & 16 IN V7>";                                   
   VALUE V141FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 15 & 16 IN V7>";                                       
   VALUE V142FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 15 & 16 IN V7>";                                       
   VALUE V143FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK";                                                                
   VALUE V144FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK";                                                                
   VALUE V145FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK";                                                                
   VALUE V146FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK";                                                                
   VALUE V147FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V148FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V149FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V150FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V151FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V152FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V153FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V154FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V155FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1, 15 IN V7>";                                  
   VALUE V156FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1, 15 IN V7>";                                  
   VALUE V157FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1, 15 IN V7>";                                  
   VALUE V158FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1, 15 IN V7>";                                  
   VALUE V159FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1, 15 IN V7>";                                  
   VALUE V160FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1, 15 IN V7>";                                  
   VALUE V161FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1, 15 IN V7>";                                  
   VALUE V162FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1, 15 IN V7>";                                  
   VALUE V163FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES, DEFINITELY"                                                    
   2 = "YES, PROBABLY"                                                      
   3 = "NO, PROBABLY NOT"                                                   
   4 = "NO, DEFINITELY NOT"                                                 
   5 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q49C1-C8, 15 IN V7>";                               
   VALUE V164FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q49C1-C8>";                                         
   VALUE V165FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q49C1-C8>";                                         
   VALUE V166FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q49C1-C8>";                                         
   VALUE V167FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q49C1-C8>";                                         
   VALUE V168FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1-C8, 15 IN V7>";                               
   VALUE V169FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1-C8, 15 IN V7>";                               
   VALUE V170FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1-C8, 15 IN V7>";                               
   VALUE V171FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1-C8, 15 IN V7>";                               
   VALUE V172FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q49C1-C8, 15 IN V7>";                               
   VALUE V173FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "IMPORTANT"                                                          
   2 = "NOT IMPORTANT"                                                      
   3 = "DK";                                                                
   VALUE V174FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "IMPORTANT"                                                          
   2 = "NOT IMPORTANT"                                                      
   3 = "DK";                                                                
   VALUE V175FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "IMPORTANT"                                                          
   2 = "NOT IMPORTANT"                                                      
   3 = "DK";                                                                
   VALUE V176FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "IMPORTANT"                                                          
   2 = "NOT IMPORTANT"                                                      
   3 = "DK";                                                                
   VALUE V177FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "IMPORTANT"                                                          
   2 = "NOT IMPORTANT"                                                      
   3 = "DK";                                                                
   VALUE V178FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "IMPORTANT"                                                          
   2 = "NOT IMPORTANT"                                                      
   3 = "DK";                                                                
   VALUE V179FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "AN ADVANTAGE"                                                       
   2 = "A DISADVANTAGE"                                                     
   3 = "DK"                                                                 
   9 = "<INAP, 15 IN V7>";                                                  
   VALUE V180FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "AN ADVANTAGE"                                                       
   2 = "A DISADVANTAGE"                                                     
   3 = "DK"                                                                 
   9 = "<INAP, 15 IN V7>";                                                  
   VALUE V181FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "STRONGLY IN FAVOUR"                                                 
   2 = "SOMEWHAT IN FAVOUR"                                                 
   3 = "SOMEWHAT OPPOSED"                                                   
   4 = "STRONGLY OPPOSED"                                                   
   5 = "DK";                                                                
   VALUE V182FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 15 & 16 IN V7>";                                       
   VALUE V183FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q58, 15 & 16 IN V7>";                               
   VALUE V184FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "A) PRICE"                                                           
   2 = "B) QUALITY"                                                         
   3 = "C) BRAND NAME"                                                      
   4 = "D) COUNTRY OF ORIGIN/MFR"                                           
   5 = "E) PRESENTATION/PACKAGING"                                          
   6 = "F) YOUR PROD KNOWLEDGE"                                             
   7 = "G) HAS QUALITY LABEL"                                               
   8 = "H) SOMETHING ELSE"                                                  
   9 = "I) NONE OF THESE (SPONTANEOUS)"                                     
   10 = "J) DK";                                                            
   VALUE V185FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V186FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V187FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V188FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V189FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V190FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V191FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V192FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V193FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V194FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V195FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK";                                                                
   VALUE V196FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK";                                                                
   VALUE V197FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK";                                                                
   VALUE V198FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK";                                                                
   VALUE V199FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK";                                                                
   VALUE V200FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V201FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V202FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V203FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V204FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V205FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V206FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V207FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V208FT (MAX=40)                                                    
   990 = "OTHERS"                                                           
   998 = "<NA, INCL ALL NOR, FIN>";                                         
 * DOCUMENT Q63 - MOTHERTONGUE                                              
    FRANCE                                                                  
      (01)  FRENCH                                                          
      (02)  POLISH                                                          
      (03)  GERMAN                                                          
      (04)  PATOIS AUVERGNAT                                                
      (05)  DANISH                                                          
      (06)  SPANISH                                                         
      (07)  ALSACIEN                                                        
      (08)  ARABIC                                                          
      (09)  ENGLISH                                                         
      (10)  BRETON                                                          
      (11)  PORTUGUESE                                                      
      (12)  DUTCH                                                           
      (13)  PROVENCAL                                                       
      (14)  RUSSIAN                                                         
      (15)  YIDDISH                                                         
      (16)  ITALIAN                                                         
      (17)  MALGACHE                                                        
      (18)  ARMENIAN                                                        
      (19)  KABYL                                                           
      (20)  YOUGOSLAVIAN                                                    
      (21)  BASQUE                                                          
      (22)  CORSICAN                                                        
      (23)  MAROCAIN (ARABIC)                                               
      (24)  VIETNAMANIAN                                                    
      (25)  HUNGARIAN                                                       
      (26)  MALIEN                                                          
      (27)  OCCITAN                                                         
      (28)  UKRANIAN                                                        
      (29)  HOUEDA (BENIN)                                                  
      (30)  LAOTIEN                                                         
      (31)  TURKISH                                                         
      (32)  GREEK                                                           
    BELGIUM                                                                 
      (01)  FRENCH                                                          
      (02)  DUTCH                                                           
      (03)  GERMAN                                                          
      (04)  GREEK                                                           
      (05)  LUXEMBURGS                                                      
      (06)  RUSSIAN                                                         
      (07)  ARABIC                                                          
      (08)  ITALIAN                                                         
      (11-32) UNDOCUMENTED CODES                                            
    NETHERLANDS                                                             
      (01)  DUTCH                                                           
      (02)  FRIES                                                           
      (03)  ENGLISH                                                         
      (04)  FRENCH                                                          
      (05)  GERMAN                                                          
      (06)  TURKISH                                                         
      (07)  MAROCAIN                                                        
      (08)  SURINAAMS                                                       
      (09)  PAPIAMENTO                                                      
      (10)  INDONESIAN/MALASIAN                                             
    ITALY                                                                   
      (01)  DANISH                                                          
      (02)  GERMAN                                                          
      (03)  FRENCH                                                          
      (04)  ITALIAN                                                         
      (05)  DUTCH                                                           
      (06)  ENGLISH                                                         
      (07)  SPANISH                                                         
      (08)  PORTUGUESE                                                      
      (09)  GREEK                                                           
    LUXEMBOURG                                                              
      (01)  LUXEMBURGS                                                      
      (02)  GERMAN                                                          
      (03)  FRENCH                                                          
      (04)  ITALIAN                                                         
      (05)  PORTUGUESE                                                      
      (06)  DUTCH                                                           
      (07)  YOUGOSLAVIAN                                                    
      (08)  SPANISH                                                         
      (09)  POLISH                                                          
      (10)  ENGLISH                                                         
    DENMARK                                                                 
      (01)  DANISH                                                          
      (02)  GERMANY                                                         
      (03)  FRENCH                                                          
      (04)  ITALIAN                                                         
      (05)  DUTCH                                                           
      (06)  ENGLISH                                                         
      (07)  SPANISH                                                         
      (08)  PORTUGUESE                                                      
      (09)  GREEK                                                           
      (11-99) UNDOCUMENTED CODES                                            
    IRELAND                                                                 
      (01)  ENGLISH                                                         
      (02)  IRISH                                                           
      (03)  DANISH                                                          
      (04)  DUTCH                                                           
      (05)  FRENCH                                                          
      (06)  GERMAN                                                          
      (07)  GREEK                                                           
      (08)  ITALIAN                                                         
      (09)  PORTUGUESE                                                      
      (10)  SPANISH                                                         
    GREAT BRITAIN                                                           
      (01)  ARABIC                                                          
      (02)  BENGALI                                                         
      (03)  CANTONESE                                                       
      (04)  DANISH                                                          
      (05)  DUTCH                                                           
      (06)  ENGLISH                                                         
      (07)  FRENCH                                                          
      (08)  GERMAN                                                          
      (09)  GREEK                                                           
      (10)  GUJERATI                                                        
      (11)  HINDI                                                           
      (12)  HUNGARIAN                                                       
      (13)  ITALIAN                                                         
      (14)  MANDARIN                                                        
      (15)  POLISH                                                          
      (16)  PUNJABI                                                         
      (17)  SPANISH                                                         
      (18)  SWEDISH                                                         
      (19)  SYLHETI                                                         
      (20)  TURKISH                                                         
      (21)  UKRAINIAN                                                       
      (22)  URDU                                                            
    NORTHERN IRELAND                                                        
      (01)  ENGLISH                                                         
      (02)  IRISH                                                           
      (03)  DANISH                                                          
      (04)  DUTCH                                                           
      (05)  FRENCH                                                          
      (06)  GERMAN                                                          
      (07)  GREEK                                                           
      (08)  ITALIAN                                                         
      (09)  PORTUGUESE                                                      
      (10)  SPANISH                                                         
    GREECE                                                                  
      (01)  GREEK                                                           
      (02)  TURKISH                                                         
      (03)  BULGARIAN                                                       
      (04)  SERVOCROATIAN                                                   
      (05)  RUSSIAN                                                         
      (06)  RUMANIAN                                                        
      (07)  ENGLISH                                                         
      (08)  GERMAN                                                          
      (09)  FRENCH                                                          
    SPAIN                                                                   
      (01)  CASTILIAN/SPANISH                                               
      (02)  CATALONIAN                                                      
      (03)  BASQUE/EUSKERA                                                  
      (04)  GALICIAN                                                        
      (05)  PORTUGUESE                                                      
      (06)  FRENCH                                                          
      (07)  ENGLISH                                                         
      (08)  GERMAN                                                          
      (09)  ITALIAN                                                         
      (10)  VALENCIAN                                                       
      (11)  BABLE/ASTURIAN                                                  
      (12)  ARABIC                                                          
      (13)  MAJORCAN                                                        
    PORTUGAL                                                                
      (01)  PORTUGUESE                                                      
      (02)  GREEK                                                           
      (03)  SPANISH                                                         
      (04)  INDIAN                                                          
    GERMANY                                                                 
      (01)  DANISH                                                          
      (02)  GERMAN                                                          
      (03)  FRENCH                                                          
      (04)  ITALIAN                                                         
      (05)  DUTCH                                                           
      (06)  ENGLISH                                                         
      (07)  SPANISH                                                         
      (08)  POTUGUESE                                                       
      (09)  GREEK                                                           
      (10)  POLISH                                                          
      (11)  RUSSIAN                                                         
      (12)  RUMANIAN                                                        
      (13)  YOUGOSLAVIAN                                                    
      (14)  TURKISH                                                         
    NORWAY                                                                  
      (01)  NORWEGIAN                                                       
      (02)  ENGLISH                                                         
      (03)  ITALIAN                                                         
      (04)  SWEDISH                                                         
      (05)  DANISH                                                          
      (06)  GERMAN                                                          
      (07)  HUNGARIAN                                                       
      (08)  DUTCH                                                           
      (09)  SAMISK                                                          
      (10)  POLISH ;                                                        
   VALUE V209FT (MAX=40)                                                    
   0 = "<NA, INCL ALL NOR, FIN>"                                            
   1 = "DANISH"                                                             
   2 = "GERMAN"                                                             
   3 = "FRENCH"                                                             
   4 = "ITALIAN"                                                            
   5 = "DUTCH"                                                              
   6 = "ENGLISH"                                                            
   7 = "SPANISH"                                                            
   8 = "PORTUGUESE"                                                         
   9 = "GREEK"                                                              
   10 = "OTHER";                                                            
   VALUE V210FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V211FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V212FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V213FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V214FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V215FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V216FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V217FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V218FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V219FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V220FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V221FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V222FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V223FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V224FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V225FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V226FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V227FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V228FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V229FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V230FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V231FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V232FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V233FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V234FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V235FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V236FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V237FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V238FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V239FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V240FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V241FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V242FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V243FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V244FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V245FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V246FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V247FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V248FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V249FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V250FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V251FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>";                                                              
   VALUE V252FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "LESS THAN 5 CIGARETTES"                                             
   2 = "5 TO 9"                                                             
   3 = "10 TO 14"                                                           
   4 = "15 TO 19"                                                           
   5 = "20 TO 24"                                                           
   6 = "25 TO 29"                                                           
   7 = "30 TO 34"                                                           
   8 = "35 TO 39"                                                           
   9 = "40 OR MORE"                                                         
   10 = "DO NOT SMOKE EVERY DAY"                                            
   11 = "DK"                                                                
   99 = "<INAP, NOT 1 IN Q67C1-C2>";                                        
   VALUE V253FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK";                                                                
   VALUE V254FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK";                                                                
   VALUE V255FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK";                                                                
   VALUE V256FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK";                                                                
   VALUE V257FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK";                                                                
   VALUE V258FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK";                                                                
   VALUE V259FT (MAX=40)                                                    
   0 = "DONT WANT TO STOP/CUT DOWN"                                         
   1 = "YES"                                                                
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q67C1-C3>";                                         
   VALUE V260FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q67C1-C3>";                                         
   VALUE V261FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q67C1-C3>";                                         
   VALUE V262FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q67C1-C3>";                                         
   VALUE V263FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q67C1-C3>";                                         
   VALUE V264FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q67C1-C3>";                                         
   VALUE V265FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "PERHAPS (SPONTANEOUS)"                                              
   4 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q67C1-C3>";                                         
   VALUE V266FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK";                                                                
   VALUE V267FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK";                                                                
   VALUE V268FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK";                                                                
   VALUE V269FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK";                                                                
   VALUE V270FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK";                                                                
   VALUE V271FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK";                                                                
   VALUE V272FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "SMOKING IS INDIV MATTER STRICTLY"                                   
   2 = "SMOKING AFFECTS OTHRS/SHOULD BE REGULATD"                           
   3 = "DK";                                                                
   VALUE V273FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V274FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q73, 16 IN V7>";                                    
   VALUE V275FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q73, 16 IN V7>";                                    
   VALUE V276FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q73, 16 IN V7>";                                    
   VALUE V277FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q73, 16 IN V7>";                                    
   VALUE V278FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q73, 16 IN V7>";                                    
   VALUE V279FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q73, 16 IN V7>";                                    
   VALUE V280FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q73, 16 IN V7>";                                    
   VALUE V281FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q73, 16 IN V7>";                                    
   VALUE V282FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q73, 16 IN V7>";                                    
   VALUE V283FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q73, 16 IN V7>";                                    
   VALUE V284FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 1 IN Q73, 16 IN V7>";                                    
   VALUE V285FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TRUE"                                                               
   2 = "FALSE"                                                              
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V286FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TRUE"                                                               
   2 = "FALSE"                                                              
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V287FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TRUE"                                                               
   2 = "FALSE"                                                              
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V288FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TRUE"                                                               
   2 = "FALSE"                                                              
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V289FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TRUE"                                                               
   2 = "FALSE"                                                              
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V290FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TRUE"                                                               
   2 = "FALSE"                                                              
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V291FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TRUE"                                                               
   2 = "FALSE"                                                              
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V292FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TRUE"                                                               
   2 = "FALSE"                                                              
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V293FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TRUE"                                                               
   2 = "FALSE"                                                              
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V294FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TRUE"                                                               
   2 = "FALSE"                                                              
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V295FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ONCE OR MORE A DAY"                                                 
   2 = "ONCE EVERY 2-6 DAYS"                                                
   3 = "ONCE EVERY 1-4 WEEKS"                                               
   4 = "ONCE EVERY MONTH"                                                   
   5 = "ONCE EVERY 2 MONTHS"                                                
   6 = "ONCE EVERY 3-4 MONTHS"                                              
   7 = "ONCE EVERY 5-6 MONTHS"                                              
   8 = "ONCE EVERY 7-12 MONTHS"                                             
   9 = "LESS THAN ONCE/YEAR"                                                
   10 = "NEVER"                                                             
   11 = "DK"                                                                
   99 = "<INAP, NOT 1 IN Q75_1, 16 IN V7>";                                 
   VALUE V296FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q75_1, 16 IN V7>";                                  
   VALUE V297FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ONLY ONCE"                                                          
   2 = "A FEW TIMES"                                                        
   3 = "MANY TIMES"                                                         
   4 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q77, 16 IN V7>";                                    
   VALUE V298FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "IN THE LAST YEAR"                                                   
   2 = "MORE THAN ONE YR UP TO 3 YRS AGO"                                   
   3 = "OVER 3 YEARS AGO"                                                   
   4 = "DK, CANT REMEMBER (SPONTANEOUS)"                                    
   9 = "<INAP, NOT 1 IN Q77, 16 IN V7>";                                    
   VALUE V299FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, NOT 2 IN Q77, 16 IN V7>";                                    
   VALUE V300FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ONCE OR MORE A DAY"                                                 
   2 = "ONCE EVERY 2-6 DAYS"                                                
   3 = "ONCE EVERY 1-4 WEEKS"                                               
   4 = "ONCE EVERY MONTH"                                                   
   5 = "ONCE EVERY 2 MONTHS"                                                
   6 = "ONCE EVERY 3-4 MONTHS"                                              
   7 = "ONCE EVERY 5-6 MONTHS"                                              
   8 = "ONCE EVERY 7-12 MONTHS"                                             
   9 = "LESS THAN ONCE A YEAR"                                              
   10 = "NEVER"                                                             
   11 = "DK"                                                                
   99 = "<INAP, CODED 16 IN V7>";                                           
   VALUE V301FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V302FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ONLY ONCE"                                                          
   2 = "A FEW TIMES"                                                        
   3 = "MANY TIMES"                                                         
   4 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN Q82, 16 IN V7>";                                    
   VALUE V303FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "IN THE LAST YEAR"                                                   
   2 = "MORE THAN ONE YR UP TO 3 YEARS AGO"                                 
   3 = "OVER 3 YEARS AGO"                                                   
   4 = "DK, CANT REMEMBER (SPONTANEOUS)"                                    
   9 = "<INAP, NOT 1 IN Q82, 16 IN V7>";                                    
   VALUE V304FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V305FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V306FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V307FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V308FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V309FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V310FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V311FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V312FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V313FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V314FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V315FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V316FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V317FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 3 IN Q84, 16 IN V7>";                                    
   VALUE V318FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, NOT 2 IN Q82, 16 IN V7>";                                    
   VALUE V319FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V320FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V321FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V322FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V323FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V324FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V325FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V326FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V327FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V328FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V329FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V330FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V331FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V332FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 2 IN Q86, 16 IN V7>";                                    
   VALUE V333FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK/DONT REMEMBER (SPONTANEOUS)"                                     
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V334FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V335FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V336FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V337FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V338FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V339FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V340FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V341FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V342FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V343FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V344FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V345FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V346FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V347FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V348FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V349FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V350FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V351FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V352FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V353FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V354FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V355FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V356FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V357FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V358FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V359FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ACCEPT BLOOD GIVEN BY SELF"                                         
   2 = "ACCEPT BLOOD DONAT BY RELAT/FRIEND"                                 
   3 = "ACCEPT BLOOD DONAT BY ANYONE"                                       
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V360FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "SHLD BE GIVEN FOR FREE"                                             
   2 = "COVER COST COLLECTING/TEST/DISTRIB"                                 
   3 = "CHARGE OVER COLLECTION COST"                                        
   4 = "SOLD LIKE ANY OTHER PRODUCT"                                        
   5 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V361FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V362FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V363FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V364FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V365FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V366FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V367FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V368FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V369FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V370FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V371FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V372FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V373FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V374FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V375FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V376FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V377FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V378FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "VERY IMPORTANT"                                                     
   2 = "SOMEWHAT IMPORTANT"                                                 
   3 = "NOT VERY IMPORTANT"                                                 
   4 = "NOT IMPORTANT AT ALL"                                               
   5 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V379FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "EACH COUNTRY SEPARATELY"                                            
   2 = "ALL COUNTRIES WORKING TOGETHER"                                     
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V380FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "SAFER"                                                              
   2 = "AS SAFE"                                                            
   3 = "LESS SAFE"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V381FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V382FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "OTHER EC/UE/(EC) COUNTRIES"                                         
   2 = "OTHER EUROPEAN COUNTRIES"                                           
   3 = "UNITED STATES OF AMERICA"                                           
   4 = "CANADA"                                                             
   5 = "JAPAN"                                                              
   6 = "OTHERS (SPECIFY)"                                                   
   7 = "DK"                                                                 
   9 = "<INAP, NOT 2 IN Q100, 16 IN V7>";                                   
   VALUE V383FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "MORE AFRAID"                                                        
   2 = "NOT MORE AFRAID"                                                    
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V384FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "MORE AFRAID"                                                        
   2 = "NOT MORE AFRAID"                                                    
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V385FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "MORE AFRAID"                                                        
   2 = "NOT MORE AFRAID"                                                    
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V386FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "MORE AFRAID"                                                        
   2 = "NOT MORE AFRAID"                                                    
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V387FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "MORE AFRAID"                                                        
   2 = "NOT MORE AFRAID"                                                    
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V388FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V389FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V390FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V391FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TEND TO AGREE"                                                      
   2 = "TEND TO DISAGREE"                                                   
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V392FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V393FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V394FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V395FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V396FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V397FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V398FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V399FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V400FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V401FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V402FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V403FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "POSSIBLY"                                                           
   3 = "NOT"                                                                
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V404FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V405FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V406FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V407FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V408FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V409FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V410FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V411FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V412FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V413FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V414FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V415FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V416FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INCREASE"                                                           
   2 = "DECREASE"                                                           
   3 = "NO EFFECT"                                                          
   4 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V417FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "RATHER LEFT"                                                        
   2 = "MIDDLE/NEITHER NOR (SPONT)"                                         
   3 = "RATHER RIGHT"                                                       
   4 = "REFUSAL"                                                            
   5 = "DK"                                                                 
   9 = "<INAP, CODED 15 & 16 IN V7>";                                       
   VALUE V418FT (MAX=40)                                                    
   1 = "NOT VERY LEFT"                                                      
   5 = "VERY LEFT"                                                          
   7 = "REFUSAL"                                                            
   8 = "DK"                                                                 
   9 = "<NA/INAP, CODED 15 & 16 IN V7>";                                    
   VALUE V419FT (MAX=40)                                                    
   1 = "NOT VERY RIGHT"                                                     
   5 = "VERY RIGHT"                                                         
   7 = "REFUSAL"                                                            
   8 = "DK"                                                                 
   9 = "<NA/INAP, CODED 15 & 16 IN V7>";                                    
   VALUE V420FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "LEFT"                                                               
   10 = "RIGHT"                                                             
   97 = "REFUSAL"                                                           
   98 = "DK"                                                                
   99 = "<INAP, CODED 15 & 16 IN V7>";                                      
   VALUE V421FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "VERY CLOSE"                                                         
   2 = "FAIRLY CLOSE"                                                       
   3 = "MERELY A SYMPATHISER"                                               
   4 = "CLOSE TO NO PARTICULAR PARTY"                                       
   5 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V422FT (MAX=40)                                                    
   0 = "NO ANSWER"                                                          
   90 = "OTHER PARTY"                                                       
   95 = "WOULD VOTE BLANK/SPOIL VOTE"                                       
   96 = "WOULD NOT VOTE"                                                    
   98 = "DK"                                                                
   99 = "<NA>";                                                             
 * DOCUMENT V422 - D4, VOTE INTENTION                                       
    FRANCE                                                                  
       (05)  <PSU> PARTI SOCIALISTE UNIFIE ET EXTREME                       
             GAUCHE (LUTTE OUVRIERE) <UNIFIED SOCIALISTS AND                
             EXTREME LEFT (WORKERS STRUGGLE)>                               
       (10)  <PCF> PARTI COMMUNISTE FRANCAIS <COMMUNIST                     
             PARTY>                                                         
       (20)  <PS> PARTI SOCIALISTE <SOCIALIST PARTY>                        
       (30)  <MRG> MOUVEMENT DES RADICAUX DE GAUCHE <LEFT                   
             RADICALS>                                                      
       (50)  LES VERTS <GREEN PARTY>                                        
       (51)  <GE> GENERATION ECOLOGIE <ECOLOGISTS>                          
       (56)  <CPN> CHASSE PECHE ET NATURE <HUNTING,                         
             FISHING AND NATURE>                                            
       (59)  <CNI> CENTRE NACIONAL DES INDEPENDANTS                         
             <NATIONAL CENTRE OF INDEPENDENTS>                              
       (60)  <RPR> RASSEMBLEMENT POUR LA REPUBLIQUE                         
             <RALLY FOR THE REPUBLIC>                                       
       (70)  <PR-UDF> PARTI REPUBLICAIN - UNION POUR LA                     
             DEMOCRATIE FRANCAIS <UNION FOR FRENCH DEMOCRACY -              
             REPUBLICAN PARTY>                                              
       (71)  <CDS-UDF> CENTRE DES DEMOCRATES SOCIAUX -                      
             UNION POUR LA DEMOCRATIE FRANCAIS <UNION FOR FRENCH            
             DEMOCRACY - SOCIAL DEMOCRATIC CENTRE>                          
       (72)  <RAD-UDF> RADICAUX - UNION POR LA DEMOCRATIE                   
             FRANCAISE <UNION FOR FRENCH DEMOCRACY - RADICAL                
             PARTY>                                                         
       (73)  <UPF> UNION POUR LE FRANCE <UNION FOR                          
             FRANCE>                                                        
       (80)  <FN> FRONT NATIONAL ET EXTREME DROITE                          
             <NATIONAL FRONT AND EXTREME RIGHT>                             
    BELGIUM                                                                 
       (10)  <PCB/KPB> PARTI COMMUNISTE BELGE <COMMUNIST                    
             PARTY>                                                         
       (20)  <PSB> PARTI SOCIALISTE BELGE <SOCIALIST                        
             PARTY - FRENCH>                                                
       (21)  <BSP> BELGISCHE SOCIALISTISCHE PARTIJ                          
             <SOCIALIST PARTY - FLEMISH>                                    
       (41)  <VLD> VLAAMSE LIBERALEN EN DEMOCRATEN                          
             (QUPEREVENT PVV) <FLEMISH LIBERALS AND DEMOCRATS               
             (FORMER <PVV>)>                                                
       (50)  <VU> VOLKSUNIE <FLEMISH NATIONALISTS>                          
       (51)  <FDF-RW> FRONT DEMOCRATIQUE FRANCOPHONE ET                     
             RASSEMBLEMENT WALLON <FRANCOPHONE DEMOCRATIC FRONT /           
             WALLOON RALLY>                                                 
       (52)  <VLB> VLAAMS BLOK <FLEMISH BLOCK>                              
       (53)  <PRL> PARTI REFORMATEUR LIBERAL (PARTI DES                     
             REFORMS ET DE LA LIBERTE) <LIBERAL REFORM PARTY>               
       (54)  (ROSSEM) RADICALE OMVORMERS STRIJDERS EN                       
             STRUBBELAARS VOOR EEN EERLIJKE MAATSCHAPPIJ                    
       (55)  <ECOLO> ECOLOGISTES CONFEDERES POUR                            
             L'ORGANISATION DE LUTTES ORIGINALES <ECOLOGISTS>               
       (56)  <AGALEV> ANDERS GAAN LEVEN <LIVE DIFFERENTLY                   
             - ECOLOGISTS>                                                  
       (60)  <PSC> PARTI SOCIAL CHRETIEN <CHRISIAN SOCIAL                   
             PARTY - FRENCH>                                                
       (61)  <CVP> CHRISTELIJKE VOLKSPARTIJ <CHRISTIAN                      
             PEOPLE'S PARTY - FLEMISH>                                      
       (80)  <UDRT/RAD> UNION DEMOCRATIQUE POUR LE                          
             RESPECT DU TRAVAIL - RESPEKT VOOR ARBEID EN DEMOKRATIE         
             <DEMOCRATIC UNION FOR THE RESPECT OF LABOUR>                   
    NETHERLANDS                                                             
       (17)  GROEN LINKS (REGENBOOG) <GREEN LEFT>: <PPR>                    
             POLITIEKE PARTIJ RADICALEN <RADICAL POLITICAL PARTY>           
             <PSP> PACIFISTISCH-SOCIALISTISCHE PARTIJ <PACIFIST             
             SOCIALISTY PARTY> <CPN> COMMUNISTISCHE PERTIJ NEDERLAND        
             <COMMUNIST PARTY> <EVP> EVANGELISCHE VOLKSPART                 
       (20)  <PVDA> PARTIJ VAN DE ARBEID <LABOUR PARTY>                     
       (22)  <D'66> DEMOCRATEN 66 <DEMOCRATS '66>                           
       (57)  <CD> CENTRUM DEMOCRATEN <CENTRE DEMOCRATS>                     
       (63)  <CDA> CHRISTEN DEMOCRATISCH APPEL                              
             <CHRISTIAN DEMOCRATIC APPEAL>                                  
       (70)  <VVD> VOLKSPARTIJ VOOR VRIJHEID EN                             
             DEMOCRATIE <LIBERAL PARTY>                                     
       (81)  <SGP> STAATKUNDIG GEREFORMEERDE PARTIJ                         
             <POLITICAL REFORMED PARTY>                                     
       (82)  <GPV> GEREFORMEERD POLITIEK VERBOND                            
             <REFORMED POLITICAL UNION>                                     
       (84)  <RPF> REFORMATORISCHE POLITIEKE FEDERATIE                      
             <REFORMED POLITICAL FEDERATION>                                
    WEST GERMANY                                                            
       (10)  LINKE LISTE / PDS (PARTEI DES DEMOKRATISCHEN                   
             SOZIALISMUS) <PARTY OF DEMOCRATIC SOCIALISM -                  
             LEFT LIST>                                                     
       (20)  <SPD> SOZIALDEMOKRATISCHE PARTEI                               
             DEUTSCHLANDS <SOCIAL DEMOCRATIC PARTY>                         
       (40)  <FDP> FREIE DEMOKRATISCHE PARTEI <FREE                         
             DEMOCRATS>                                                     
       (50)  BUENDNIS 90 / DIE GRUENEN <ALLIANCE '90 /                      
             GREENS>                                                        
       (59)  PARTEILOSEN <NON-PARTY-ALIGNED>                                
       (60)  <CDU-CSU> CHRISTLICH DEMOKRATISCHE UNION -                     
             CHRISTLICH SOZIALE UNION <CHRISTIAN DEMOCRATIC                 
             UNION / CHRISTIAN SOCIAL UNION>                                
       (80)  <NPD> NATIONALDEMOKRATISCHE PARTEI                             
             DEUTSCHLANDS <NATIONAL DEMOCRATIC PARTY>                       
       (81)  DIE REPUBLIKANER <REPUBLICANS>                                 
       (82)  <DVU> DEUTSCHE VOLKSUNION <GERMAN POPULAR                      
             UNION>                                                         
    ITALY                                                                   
       (10)  <RC> RIFONDAZIONE COMMUNISTA <COMMUNIST                        
             REFOUNDATION (ORTHODOX)>                                       
       (11)  <PDS> PARTITO DEMOCRATICO DELLA SINISTRA                       
             <DEMOCRATIC PARTY OF THE LEFT>                                 
       (15)  LISTA PANNELLA <FORMER RADICAL LEADERS>                        
       (16)  LA RETE - MOVIMENTO PER LA DEMOCRAZIA                          
             <MOVEMENT FOR DEMOCRACY (ANTI-MAFIA PARTY)>                    
       (19)  PROGRESSISTI <PROGRESSIVE ALLIANCE: <PDS> +                    
             <RC> + VERDI + LA RETE + <PSI> + <AD>>                         
       (20)  <PSI> PARTITO SOCIALISTA ITALIANO <SOCIALIST                   
             PARTY>                                                         
       (31)  SOCIALDEMOCRAZIA PER LA LIBERTA                                
       (42)  <AD> ALLEANZA DEMOCRATICA <DEMOCRATIC                          
             ALLIANCE - LIBERAL>                                            
       (50)  VERDI - FEDERAZIONE DEI VERDI/FEDERAZIONE                      
             DELLE LISTE VERDI <GREENS>                                     
       (61)  <PPI> PARTITO POPOLARE ITALIANO <POPULAR                       
             PARTY - TRANSFORMATION OF <DC>>                                
       (62)  <CCD> CENTRO CRISTIANO DEMOCRATICO                             
             <CHRISTIAN DEMOCRATIC CENTRE - SPLINTER OF <DC>>               
       (64)  PATTO PER L'ITALIA <PACT FOR ITALY: <PPI>                      
             AND PATTO SEGNI>                                               
       (71)  FORZA ITALIA                                                   
       (75)  LEGA NORD <NORTHERN LEAGUE>                                    
       (80)  <AN> ALLEANZA NAZIONALE <NATIONAL ALLIANCE -                   
             FORMER <MSI>>                                                  
    LUXEMBOURG                                                              
       (10)  <KP/PC> KOMMUNISTESCH PARTEI <COMMUNIST                        
             PARTY>                                                         
       (20)  <LSAP-POSL> LETZEBUERGER SOZIALISTISCH                         
             ARBECHTERPARTEI <SOCIALIST WORKERS PARTY>                      
       (50)  <GAP/GLEI> DE GRENG ALTERNATIV - GRENG                         
             LESCHT EKOLOGESCH INITIATIV <GREEN ALTERNATIVE                 
             PARTY - GREEN ECOLOGICAL INITIATIVE LIST>                      
       (60)  <CSV/PCS> CHRESTLECH-SOZIAL VOLLEKSPARTEI                      
             <CHRISTIAN SOCIAL PARTY>                                       
       (70)  <DP/PD> DEMOKRATESCH PARTEI <DEMOCRATIC                        
             PARTY - LIBERAL>                                               
       (79)  <ADR / 5/6 RENTELESCHT> AKTIOUNSKOMITEE FIR                    
             DEMOKRATIE A RENTEGERECHTEGKEET / 5/6 RENTELESCHT              
             <PROTEST PARTY - EMERGED FROM AKTIOUNSKOMITEE 5/6 -            
             AKTIOUNSKOMITEE 5/6>                                           
       (80)  NATIONAL BEWEGUNG <NATIONAL MOVEMENT>                          
    DENMARK                                                                 
       (14)  ENHEDSLISTEN - DE ROD-GRONNE <UNITED                           
             RED-GREEN>                                                     
       (15)  <SF> SOCIALISTISK FOLKEPARTI <SOCIALIST                        
             PEOPLE'S PARTY>                                                
       (20)  <S> SOCIALDEMOKRATIET <SOCIAL DEMOCRATS>                       
       (40)  <CD> CENTRUM-DEMOKRATERNE <CENTRE DEMOCRATS>                   
       (41)  <RV> RADIKALE VENSTRE <SOCIAL LIBERALS>                        
       (60)  <KF> KONSERVATIVE FOLKEPARTI <CONSERVATIVE                     
             PEOPLE'S PARTY>                                                
       (61)  <KRF> KRISTELIGT FOLKEPARTI <CHRISTIAN                         
             PEOPLE'S PARTY>                                                
       (70)  <V> VENSTRE <LIBERALS>                                         
       (80)  <FP> FREMSKRIDTSPARTIET <PROGRESS PARTY>                       
    IRELAND                                                                 
       (15)  DEMOCRATIC LEFT                                                
       (20)  THE LABOUR PARTY                                               
       (21)  <WP> THE WORKERS' PARTY                                        
       (22)  <PD> PROGRESSIVE DEMOCRATIC PARTY                              
       (30)  <FG> FINE GAEL <UNITED IRELAND PARTY>                          
       (50)  THE GREEN PARTY                                                
       (59)  INDEPENDENTS                                                   
       (60)  <FF> FIANNA FAIL <SOLDIERS OF DESTINY -                        
             REPUBLICAN PARTY>                                              
       (81)  <SF> SINN FEIN <POLITICAL WING OF IRISH                        
             REPUBLICAN ARMY>                                               
    GREAT BRITAIN                                                           
       (20)  THE LABOUR PARTY                                               
       (30)  <SDP> THE SOCIAL DEMOCRATIC PARTY                              
       (40)  <SLD> THE LIBERAL DEMOCRATS                                    
       (50)  <SNP> THE SCOTTISH NATIONALIST PARTY                           
       (51)  THE GREEN PARTY                                                
       (52)  PLAID CYMRU <WELSH NATIONALISTS>                               
       (60)  THE CONSERVATIVE PARTY                                         
    NORTHERN IRELAND                                                        
       (15)  <SDLP> SOCIAL DEMOCRATIC LABOUR PARTY                          
       (60)  CONSERVATIVES                                                  
       (61)  ULSTER UNIONIST PARTY                                          
       (62)  DEMOCRATIC UNIONIST PARTY                                      
       (64)  OTHER UNIONIST                                                 
       (65)  ALLIANCE                                                       
       (80)  <WP> THE WORKERS PARTY <NATIONALIST PARTY IN                   
             NORTHERN IRELAND>                                              
       (81)  <SF> SINN FEIN <POLITICAL WING OF IRISH                        
             REPUBLICAN ARMY>                                               
       (90)  OTHER PARTY                                                    
    GREECE                                                                  
       (10)  <KKE> KOMMUNISTIKOU KOMMA ELLADOS <COMMUNIST                   
             PARTY OF GREECE - EXTERIOR>                                    
       (15)  <SAP> SYNASPISMOS TAES ARISTERAS <LEFT                         
             PROGRESSIVE ALLIANCE: KKE, EAR AND OTHERS>                     
       (20)  PASOK PANHELLINIO SOCIALISTIKO KINEMA <PAN                     
             HELLENIC SOCIALIST MOVEMENT>                                   
       (60)  <ND> NEA DIMOKRATIA <NEW DEMOCRACY>                            
       (61)  <POLAN> POLITIKI ANIXI <POLITICAL SPRING                       
             (SPLINTER FROM <ND>)>                                          
    SPAIN                                                                   
       (10)  <IU> IZQUIERDA UNIDA <UNITED LEFT>                             
       (20)  <PSOE> PARTIDO SOCIALISTA OBRERO ESPANOL                       
             <SOCIALIST WORKERS' PARTY>                                     
       (50)  <PV> PARTIDO VERDE <GREEN PARTY>                               
       (51)  VERDES ECOLOGISTAS <ECOLOGICAL GREENS>                         
       (52)  <IP> IZQUIERDA DE LOS PUEBLOS <PEOPLE'S                        
             LEFT>                                                          
       (53)  <ERC> ESQUERRA REPUBLICANA DE CATALUNYA                        
             <CATALAN REPUBLICAN LEFT>                                      
       (54)  <PA> PARTIDO ANDALUCISTA <ANDALUSIAN PARTY>                    
       (55)  <HB> HERRI BATASUNA <BASQUE UNITED PARTY -                     
             LEFT REGIONAL PARTY>                                           
       (56)  <CIU> CONVERGENCIA I UNIO <CONVERGENCE AND                     
             UNITY - CENTRE CATALAN>                                        
       (57)  <AIC> AGRUPACION IDEPENDIENTE CANARIA                          
             <CANARY ISLANDS INDEPENDENTS - CANARIAS>                       
       (57)  <BNPG> BLOQUE NACIONALISTA POPOLAR GALEGO                      
             <GALICIAN NATIONAL POPULAR BLOCK -                             
             GALICIA/CATALUNA/MADRID>                                       
       (57)  <EA> EUSKO ALKARTASUNA <BASQUE SOLIDARITY -                    
             PAIS BOSCO>                                                    
       (57)  <PAR> PARTIDO ARAGONES NACIONALISTA                            
             <ARAGONESE REGIONALIST PARTY>                                  
       (57)  <UV> UNION VALENCIANA <VALENCIAN UNION -                       
             PAIS VALENCIANO>                                               
       (58)  <PNV> PARTIDO NACIONALISTA VASCO <BASQUE                       
             NATIONALIST PARTY>                                             
       (59)  <CN> COALICION NACIONALISTA                                    
       (60)  <CDS> CENTRO DEMOCRATICO Y SOCIAL                              
             <DEMOCRATIC AND SOCIAL CENTRE>                                 
       (70)  <PP> PARTIDO POPULAR <POPULAR PARTY                            
             (FORMERLY: POPULAR ALLIANCE)>                                  
       (80)  <FE JONS> FALANGE ESPANOLA TRADICIONALISTA Y                   
             DE LAS JUNTAS DE OFENSIVA NACIONAL SINDICALISTA                
             <SPANISH PHALANX OF THE BOARDS OF THE NATIONAL                 
             SYNDICALIST OFFENSIVE>                                         
    PORTUGAL                                                                
       (05)  <PRD> PARTIDO RENOVADOR DEMOCRATICO                            
             <DEMOCRATIC RENEWAL PARTY>                                     
       (10)  <CDU> COLIGACAO DEMOCRATICA SOCIAL <UNITED                     
             DEMOCRATICS COALITION>                                         
       (16)  <PSR> PARTIDO SOCIALISTA REVOLUCIONARIO                        
             <REVOLUTIONARY SOCIALIST PARTY>                                
       (17)  <PCTP/MRPP> PARTIDO COMUNISTA DOS                              
             TRABALHADORES PORTUGUESES <COMMUNIST PARTY OF                  
             PORTUGUESE WORKERS>                                            
       (20)  <PS> PARTIDO SOCIALISTA <SOCIALIST PARTY>                      
       (30)  <PSD> PARTIDO SOCIAL DEMOCRATA <SOCIAL                         
             DEMOCRATIC PARTY>                                              
       (40)  <PSN> PARTIDO DA SOLIDAREIDADE NACIONAL                        
             <PARTY OF NATIONAL SOLIDARITY>                                 
       (60)  <CDS-PP> CENTRO DEMOCRATICO SOCIAL - PARTIDO                   
             POPULAR <CENTRE SOCIAL DEMOCRATS - POPULAR PARTY>              
       (81)  <PPM> PARTIDO POPULAR MONARQUICO <POPULAR                      
             MONARCHIST PARTY>                                              
    EAST GERMANY                                                            
       (10)  LINKE LISTE / PDS (PARTEI DES DEMOKRATISCHEN                   
             SOZIALISMUS) <LEFT LIST / PARTY OF DEMOCRATIC                  
             SOCIALISM>                                                     
       (20)  <SPD> SOZIALDEMOKRATISCHE PARTEI <SOCIAL                       
             DEMOCRATIC PARTY>                                              
       (40)  <FDP> FREIE DEMOKRATISCHE PARTEI <FREE                         
             DEMOCRATS>                                                     
       (50)  BUENDNIS 90/DIE GRUENEN <ALLIANCE '90 / THE                    
             GREENS>                                                        
       (59)  PARTEILOSE <NON-PARTY-ALIGNED>                                 
       (60)  <CDU-CSU> CHRISTLICH DEMOKRATISCHE UNION -                     
             CHRISTLICH SOZIALE UNION <CHRISTIAN DEMOCRATIC UNION /         
             CHRISTIAN SOCIAL UNION>                                        
       (80)  <NPD> NATIONALDEMOKRATISCHE PARTEI                             
             DEUTSCHLANDS <NATIONAL DEMOCRATIC PARTY>                       
       (81)  DIE REPUBLIKANER <REPUBLICANS>                                 
       (82)  <DVU> DEUTSCHE VOLKSUNION <GERMAN POPULAR                      
             UNION>                                                         
    NORWAY                                                                  
       (10)  <AKP/RV/NKP> NORGES KOMMUNISTISKE PARTI                        
             <COMMUNIST PARTY>                                              
       (15)  <SV> SOSIALISTISK VENSTREPARTI <SOCIALIST                      
             LEFT>                                                          
       (20)  <DNA> DET NORSKE ARBEIDERPARTIET <LABOUR                       
             PARTY>                                                         
       (40)  <V> VENSTRE <LIBERALS>                                         
       (45)  <SP> SENTERPARTIET <CENTRE PARTY>                              
       (60)  <H> HOYRE <CONSERVATIVES>                                      
       (61)  <KRF> KRISTELIG FOLKEPARTI <CHRISTIAN                          
             PEOPLE'S PARTY>                                                
       (80)  <FRP> FEMSKRITTSPARTIET <PROGRESS PARTY>                       
    FINLAND                                                                 
       (10)  <VAS> VASEMMISTOLIITTO <LEFT-WING ALLIANCE>                    
       (20)  <SDP> SOSIALIDEMOKRAATTINEN PUOLUE <SOCIAL                     
             DEMOCRATIC PARTY>                                              
       (40)  <RKP> RUOTSALAINEN KANSANPUOLUE (SVENSKA                       
             FOLKEPARTIET) <SWEDISH PEOPLE'S PARTY>                         
       (41)  <LKP> LIBERAALINEN KANSANPUOLUE <LIBERAL                       
             PARTY>                                                         
       (50)  <VIHR> VIHREAE LIITTO <GREENS>                                 
       (60)  <KESK> SUOMEN KESKUSTA <CENTRE PARTY>                          
       (61)  <SKL> SUOMEN KRISTILLINEN LIITTO <CHRISTIAN                    
             LEAGUE>                                                        
       (70)  <KOK> KANSALLINEN KOKOOMUS <NATIONAL COALITION>                
       (71)  <SMP> SUOMEN MAASEUDUN PUOLUE <RURAL PARTY>;                   
   VALUE V423FT (MAX=40)                                                    
   0 = "NO ANSWER"                                                          
   90 = "OTHER PARTY"                                                       
   95 = "WOULD VOTE BLANK/SPOIL VOTE"                                       
   96 = "WOULD NOT VOTE"                                                    
   98 = "DK"                                                                
   99 = "<NA>";                                                             
 * DOCUMENT V423 - D5, VOTE BEHAVIOR LAST ELECTION                          
    FRANCE                                                                  
       (05)  <PSU> PARTI SOCIALISTE UNIFIE ET EXTREME GAUCHE                
             (LUTTE OUVRIERE) <UNIFIED SOCIALISTS AND EXTREME               
             LEFT (WORKERS STRUGGLE)>                                       
       (10)  <PCF> PARTI COMMUNISTE FRANCAIS <COMMUNIST PARTY>              
       (20)  <PS> PARTI SOCIALISTE <SOCIALIST PARTY>                        
       (30)  <MRG> MOUVEMENT DES RADICAUX DE GAUCHE <LEFT                   
             RADICALS>                                                      
       (50)  LES VERTS <GREEN PARTY>                                        
       (51)  <GE>  GENERATION ECOLOGIE <ECOLOGISTS>                         
       (56)  <CPN> CHASSE PECHE ET NATURE <HUNTING, FISHING AND             
             NATURE>                                                        
       (59)  <CNI> CENTRE NACIONAL DES INDEPENDANTS <NATIONAL               
             CENTRE OF INDEPENDENTS>                                        
       (60)  <RPR> RASSEMBLEMENT POUR LA REPUBLIQUE <RALLY FOR              
             THE REPUBLIC>                                                  
       (70)  <PR-UDF>  PARTI REPUBLICAIN - UNION POUR LA                    
             DEMOCRATIE FRANCAIS <UNION FOR FRENCH DEMOCRACY -              
             REPUBLICAN PARTY>                                              
       (71)  <CDS-UDF> CENTRE DES DEMOCRATES SOCIAUX - UNION                
             POUR LA DEMOCRATIE FRANCAIS <UNION FOR FRENCH                  
             DEMOCRACY - SOCIAL DEMOCRATIC CENTRE>                          
       (72)  <RAD-UDF> RADICAUX - UNION POR LA DEMOCRATIE                   
             FRANCAISE <UNION FOR FRENCH DEMOCRACY - RADICAL                
             PARTY>                                                         
       (73)  <UPF> UNION POUR LE FRANCE <UNION FOR FRANCE>                  
       (80)  <FN>  FRONT NATIONAL ET EXTREME DROITE <NATIONAL               
             FRONT AND EXTREME RIGHT>                                       
    BELGIUM                                                                 
       (10)  <PCB/KPB> PARTI COMMUNISTE BELGE <COMMUNIST PARTY>             
       (20)  <PSB> PARTI SOCIALISTE BELGE <SOCIALIST PARTY -                
             FRENCH>                                                        
       (21)  <BSP> BELGISCHE SOCIALISTISCHE PARTIJ <SOCIALIST               
             PARTY - FLEMISH>                                               
       (41)  <VLD> VLAAMSE LIBERALEN EN DEMOCRATEN (QUPEREVENT              
             PVV) <FLEMISH LIBERALS AND DEMOCRATS (FORMER                   
             <PVV>)>                                                        
       (50)  <VU> VOLKSUNIE <FLEMISH NATIONALISTS>                          
       (51)  <FDF-RW> FRONT DEMOCRATIQUE FRANCOPHONE ET                     
             RASSEMBLEMENT WALLON <FRANCOPHONE DEMOCRATIC FRONT             
             / WALLOON RALLY>                                               
       (52)  <VLB> VLAAMS BLOK <FLEMISH BLOCK>                              
       (53)  <PRL> PARTI REFORMATEUR LIBERAL (PARTI DES REFORMS             
             ET DE LA LIBERTE) <LIBERAL REFORM PARTY>                       
       (54)  (ROSSEM) RADICALE OMVORMERS STRIJDERS EN                       
             STRUBBELAARS VOOR EEN EERLIJKE MAATSCHAPPIJ                    
       (55)  <ECOLO> ECOLOGISTES CONFEDERES POUR L'ORGANISATION             
             DE LUTTES ORIGINALES <ECOLOGISTS>                              
       (56)  <AGALEV> ANDERS GAAN LEVEN <LIVE DIFFERENTLY -                 
             ECOLOGISTS>                                                    
       (60)  <PSC> PARTI SOCIAL CHRETIEN <CHRISIAN SOCIAL PARTY             
             - FRENCH>                                                      
       (61)  <CVP> CHRISTELIJKE VOLKSPARTIJ <CHRISTIAN PEOPLE'S             
             PARTY - FLEMISH>                                               
       (80)  <UDRT/RAD> UNION DEMOCRATIQUE POUR LE RESPECT DU               
             TRAVAIL - RESPEKT VOOR ARBEID EN DEMOKRATIE                    
             <DEMOCRATIC UNION FOR THE RESPECT OF LABOUR>                   
    NETHERLANDS                                                             
       (17)  GROEN LINKS (REGENBOOG) <GREEN LEFT>: <PPR>                    
             POLITIEKE PARTIJ RADICALEN <RADICAL POLITICAL                  
             PARTY> <PSP> PACIFISTISCH-SOCIALISTISCHE PARTIJ                
             <PACIFIST SOCIALISTY PARTY> <CPN> COMMUNISTISCHE               
             PERTIJ NEDERLAND <COMMUNIST PARTY> <EVP>                       
             EVANGELISCHE VOLKSPART                                         
       (20)  <PVDA> PARTIJ VAN DE ARBEID <LABOUR PARTY>                     
       (22)  <D'66> DEMOCRATEN 66 <DEMOCRATS '66>                           
       (57)  <CD>  CENTRUM DEMOCRATEN <CENTRE DEMOCRATS>                    
       (63)  <CDA>  CHRISTEN DEMOCRATISCH APPEL <CHRISTIAN                  
             DEMOCRATIC APPEAL>                                             
       (70)  <VVD>  VOLKSPARTIJ VOOR VRIJHEID EN DEMOCRATIE                 
             <LIBERAL PARTY>                                                
       (81)  <SGP> STAATKUNDIG GEREFORMEERDE PARTIJ <POLITICAL              
             REFORMED PARTY>                                                
       (82)  <GPV> GEREFORMEERD POLITIEK VERBOND <REFORMED                  
             POLITICAL UNION>                                               
       (84)  <RPF> REFORMATORISCHE POLITIEKE FEDERATIE <REFORMED            
             POLITICAL FEDERATION>                                          
    WEST GERMANY                                                            
       (10)  LINKE LISTE / PDS (PARTEI DES DEMOKRATISCHEN                   
             SOZIALISMUS) <PARTY OF DEMOCRATIC SOCIALISM - LEFT             
             LIST>                                                          
       (20)  <SPD> SOZIALDEMOKRATISCHE PARTEI DEUTSCHLANDS                  
             <SOCIAL DEMOCRATIC PARTY>                                      
       (40)  <FDP> FREIE DEMOKRATISCHE PARTEI <FREE DEMOCRATS>              
       (50)  BUENDNIS 90 / DIE GRUENEN <ALLIANCE '90 / GREENS>              
       (60)  <CDU-CSU> CHRISTLICH DEMOKRATISCHE UNION -                     
             CHRISTLICH SOZIALE UNION <CHRISTIAN DEMOCRATIC                 
             UNION / CHRISTIAN SOCIAL UNION>                                
       (80)  <NPD> NATIONALDEMOKRATISCHE PARTEI DEUTSCHLANDS                
             <NATIONAL DEMOCRATIC PARTY>                                    
       (81)  DIE REPUBLIKANER <REPUBLICANS>                                 
    ITALY                                                                   
       (10)  <RC> RIFONDAZIONE COMMUNISTA <COMMUNIST                        
             REFOUNDATION (ORTHODOX)>                                       
       (11)  <PDS> PARTITO DEMOCRATICO DELLA SINISTRA                       
             <DEMOCRATIC PARTY OF THE LEFT>                                 
       (15)  LISTA PANNELLA <FORMER RADICAL LEADERS>                        
       (16)  LA RETE - MOVIMENTO PER LA DEMOCRAZIA <MOVEMENT FOR            
             DEMOCRACY (ANTI-MAFIA PARTY)>                                  
       (19)  PROGRESSISTI <PROGRESSIVE ALLIANCE: <PDS> + <RC> +             
             VERDI + LA RETE + <PSI> + <AD>>                                
       (20)  <PSI> PARTITO SOCIALISTA ITALIANO <SOCIALIST PARTY>            
       (31)  SOCIALDEMOCRAZIA PER LA LIBERTA                                
       (42)  <AD> ALLEANZA DEMOCRATICA <DEMOCRATIC ALLIANCE -               
             LIBERAL>                                                       
       (50)  VERDI - FEDERAZIONE DEI VERDI/FEDERAZIONE DELLE                
             LISTE VERDI <GREENS>                                           
       (61)  <PPI> PARTITO POPOLARE ITALIANO <POPULAR PARTY -               
             TRANSFORMATION OF <DC>>                                        
       (62)  <CCD> CENTRO CRISTIANO DEMOCRATICO <CHRISTIAN                  
             DEMOCRATIC CENTRE - SPLINTER OF <DC>>                          
       (64)  PATTO PER L'ITALIA <PACT FOR ITALY: <PPI> AND PATTO            
             SEGNI>                                                         
       (71)  FORZA ITALIA                                                   
       (72)  POLO PER LA LIBERTA <POLE OF FREEDOM: LEGA NORD +              
             FORZA ITALIA IN NORTHERN REGIONS>                              
       (73)  POLO DEL BUON GOVERNO <POLE OF GOOD GOVERNMENT:                
             FORZA ITALIA + <AN> IN SOUTHERN REGIONS>                       
       (75)  LEGA NORD <NORTHERN LEAGUE>                                    
       (80)  <AN> ALLEANZA NAZIONALE <NATIONAL ALLIANCE - FORMER            
             <MSI>>                                                         
    LUXEMBOURG                                                              
       (10)  <KP/PC>  KOMMUNISTESCH PARTEI <COMMUNIST PARTY>                
       (20)  <LSAP-POSL> LETZEBUERGER SOZIALISTISCH                         
             ARBECHTERPARTEI <SOCIALIST WORKERS PARTY>                      
       (50)  <GAP/GLEI> DE GRENG ALTERNATIV - GRENG LESCHT                  
             EKOLOGESCH INITIATIV <GREEN ALTERNATIVE PARTY -                
             GREEN ECOLOGICAL INITIATIVE LIST>                              
       (60)  <CSV/PCS> CHRESTLECH-SOZIAL VOLLEKSPARTEI                      
             <CHRISTIAN SOCIAL PARTY>                                       
       (70)  <DP/PD> DEMOKRATESCH PARTEI <DEMOCRATIC PARTY -                
             LIBERAL>                                                       
       (79)  <ADR / 5/6 RENTELESCHT> AKTIOUNSKOMITEE FIR                    
             DEMOKRATIE A RENTEGERECHTEGKEET / 5/6 RENTELESCHT              
             <PROTEST PARTY - EMERGED FROM AKTIOUNSKOMITEE 5/6 -            
             AKTIOUNSKOMITEE 5/6>                                           
       (80)  NATIONAL BEWEGUNG <NATIONAL MOVEMENT>                          
    DENMARK                                                                 
       (14)  ENHEDSLISTEN - DE ROD-GRONNE <UNITED RED-GREEN>                
       (15)  <SF> SOCIALISTISK FOLKEPARTI <SOCIALIST PEOPLE'S               
             PARTY>                                                         
       (20)  <S> SOCIALDEMOKRATIET <SOCIAL DEMOCRATS>                       
       (30)  <FK> FAELLES KURS <COMMON COURSE>                              
       (40)  <CD> CENTRUM-DEMOKRATERNE <CENTRE DEMOCRATS>                   
       (41)  <RV> RADIKALE VENSTRE <SOCIAL LIBERALS>                        
       (50)  DE GRONNE <THE GREENS>                                         
       (51)  RETSFORBUNDET <SINGLE TAXERS>                                  
       (60)  <KF> KONSERVATIVE FOLKEPARTI <CONSERVATIVE PEOPLE'S            
             PARTY>                                                         
       (61)  <KRF> KRISTELIGT FOLKEPARTI <CHRISTIAN PEOPLE'S                
             PARTY>                                                         
       (70)  <V> VENSTRE <LIBERALS>                                         
       (80)  <FP> FREMSKRIDTSPARTIET <PROGRESS PARTY>                       
       (90)  OTHER PARTY (<HP> DET HUMANISTISKE PARTI AND                   
             OTHERS)                                                        
    IRELAND                                                                 
       (15)  DEMOCRATIC LEFT                                                
       (20)  THE LABOUR PARTY                                               
       (21)  <WP> THE WORKERS' PARTY                                        
       (22)  <PD> PROGRESSIVE DEMOCRATIC PARTY                              
       (30)  <FG> FINE GAEL <UNITED IRELAND PARTY>                          
       (50)  THE GREEN PARTY                                                
       (59)  INDEPENDENTS                                                   
       (60)  <FF> FIANNA FAIL <SOLDIERS OF DESTINY - REPUBLICAN             
             PARTY>                                                         
       (81)  <SF> SINN FEIN <POLITICAL WING OF IRISH REPUBLICAN             
             ARMY>                                                          
    GREAT BRITAIN                                                           
       (20)  THE LABOUR PARTY                                               
       (30)  <SDP> THE SOCIAL DEMOCRATIC PARTY                              
       (40)  <SLD> THE LIBERAL DEMOCRATS                                    
       (50)  <SNP> THE SCOTTISH NATIONALIST PARTY                           
       (51)  THE GREEN PARTY                                                
       (52)  PLAID CYMRU <WELSH NATIONALISTS>                               
       (60)  THE CONSERVATIVE PARTY                                         
    NORTHERN IRELAND                                                        
       (15)  <SDLP> SOCIAL DEMOCRATIC LABOUR PARTY                          
       (60)  CONSERVATIVES                                                  
       (61)  ULSTER UNIONIST PARTY                                          
       (62)  DEMOCRATIC UNIONIST PARTY                                      
       (64)  OTHER UNIONIST                                                 
       (65)  ALLIANCE                                                       
       (80)  <WP> THE WORKERS PARTY <NATIONALIST PARTY IN                   
             NORTHERN IRELAND>                                              
       (81)  <SF> SINN FEIN <POLITICAL WING OF IRISH REPUBLICAN             
             ARMY>                                                          
       (90)  OTHER PARTY                                                    
    GREECE                                                                  
       (10)  <KKE> KOMMUNISTIKOU KOMMA ELLADOS <COMMUNIST PARTY             
             OF GREECE - EXTERIOR>                                          
       (15)  <SAP> SYNASPISMOS TAES ARISTERAS <LEFT PROGRESSIVE             
             ALLIANCE: KKE, EAR AND OTHERS>                                 
       (20)  PASOK PANHELLINIO SOCIALISTIKO KINEMA <PAN                     
             HELLENIC SOCIALIST MOVEMENT>                                   
       (60)  <ND> NEA DIMOKRATIA <NEW DEMOCRACY>                            
       (61)  <POLAN> POLITIKI ANIXI <POLITICAL SPRING (SPLINTER             
             FROM <ND>)>                                                    
    SPAIN                                                                   
       (10)  <IU> IZQUIERDA UNIDA <UNITED LEFT>                             
       (20)  <PSOE> PARTIDO SOCIALISTA OBRERO ESPANOL <SOCIALIST            
             WORKERS' PARTY>                                                
       (50)  <PV> PARTIDO VERDE <GREEN PARTY>                               
       (51)  VERDES ECOLOGISTAS <ECOLOGICAL GREENS>                         
       (52)  <EE> EUSKADIKO ESKERRA <BASQUE LEFT>                           
       (53)  <ERC> ESQUERRA REPUBLICANA DE CATALUNYA <CATALAN               
             REPUBLICAN LEFT>                                               
       (54)  <PA> PARTIDO ANDALUCISTA <ANDALUSIAN PARTY>                    
       (55)  <HB> HERRI BATASUNA <BASQUE UNITED PARTY - LEFT                
             REGIONAL PARTY>                                                
       (56)  <CIU> CONVERGENCIA I UNIO <CONVERGENCE AND UNITY -             
             CENTRE CATALAN>                                                
       (57)  <AIC> AGRUPACION IDEPENDIENTE CANARIA <CANARY                  
             ISLANDS INDEPENDENTS - CANARIAS>                               
       (57)  <BNPG> BLOQUE NACIONALISTA POPOLAR GALEGO <GALICIAN            
             NATIONAL POPULAR BLOCK - GALICIA/CATALUNA/MADRID>              
       (57)  <EA> EUSKO ALKARTASUNA <BASQUE SOLIDARITY - PAIS               
             BOSCO>                                                         
       (57)  <PAR> PARTIDO ARAGONES NACIONALISTA <ARAGONESE                 
             REGIONALIST PARTY>                                             
       (57)  <UV> UNION VALENCIANA <VALENCIAN UNION - PAIS                  
             VALENCIANO>                                                    
       (58)  <PNV> PARTIDO NACIONALISTA VASCO <BASQUE                       
             NATIONALIST PARTY>                                             
       (60)  <CDS> CENTRO DEMOCRATICO Y SOCIAL <DEMOCRATIC AND              
             SOCIAL CENTRE>                                                 
       (70)  <PP> PARTIDO POPULAR <POPULAR PARTY (FORMERLY:                 
             POPULAR ALLIANCE)>                                             
       (80)  <FE JONS> FALANGE ESPANOLA TRADICIONALISTA Y DE LAS            
             JUNTAS DE OFENSIVA NACIONAL SINDICALISTA <SPANISH              
             PHALANX OF THE BOARDS OF THE NATIONAL SYNDICALIST              
             OFFENSIVE>                                                     
    PORTUGAL                                                                
       (05)  <PRD> PARTIDO RENOVADOR DEMOCRATICO <DEMOCRATIC                
             RENEWAL PARTY>                                                 
       (10)  <CDU> COLIGACAO DEMOCRATICA SOCIAL <UNITED                     
             DEMOCRATICS COALITION>                                         
       (16)  <PSR> PARTIDO SOCIALISTA REVOLUCIONARIO                        
             <REVOLUTIONARY SOCIALIST PARTY>                                
       (17)  <PCTP/MRPP> PARTIDO COMUNISTA DOS TRABALHADORES                
             PORTUGUESES <COMMUNIST PARTY OF PORTUGUESE WORKERS>            
       (20)  <PS>  PARTIDO SOCIALISTA <SOCIALIST PARTY>                     
       (30)  <PSD> PARTIDO SOCIAL DEMOCRATA <SOCIAL DEMOCRATIC              
             PARTY>                                                         
       (40)  <PSN> PARTIDO DA SOLIDAREIDADE NACIONAL <PARTY OF              
             NATIONAL SOLIDARITY>                                           
       (60)  <CDS-PP> CENTRO DEMOCRATICO SOCIAL - PARTIDO                   
             POPULAR <CENTRE SOCIAL DEMOCRATS - POPULAR PARTY>              
       (81)  <PPM> PARTIDO POPULAR MONARQUICO <POPULAR                      
             MONARCHIST PARTY>                                              
    EAST GERMANY                                                            
       (10)  PDS (PARTEI DES DEMOKRATISCHEN SOZIALISMUS / LINKE             
             LISTE) <PARTY OF DEMOCRATIC SOCIALISM / LEFT LIST>             
       (20)  <SPD> SOZIALDEMOKRATISCHE PARTEI <SOCIAL DEMOCRATIC            
             PARTY>                                                         
       (40)  <FDP> FREIE DEMOKRATISCHE PARTEI <FREE DEMOCRATS>              
       (50)  BUENDNIS 90/DIE GRUENEN <ALLIANCE '90 / THE GREENS>            
       (60)  <CDU-CSU> CHRISTLICH DEMOKRATISCHE UNION -                     
             CHRISTLICH SOZIALE UNION <CHRISTIAN DEMOCRATIC                 
             UNION / CHRISTIAN SOCIAL UNION>                                
       (61)  <DSU> DEUTSCHE SOZIALE UNION <GERMAN SOCIAL UNION>             
       (81)  DIE REPUBLIKANER <REPUBLICANS>                                 
    NORWAY                                                                  
       (10)  <AKP/RV/NKP> NORGES KOMMUNISTISKE PARTI <COMMUNIST             
             PARTY>                                                         
       (15)  <SV> SOSIALISTISK VENSTREPARTI <SOCIALIST LEFT>                
       (20)  <DNA> DET NORSKE ARBEIDERPARTIET <LABOUR PARTY>                
       (40)  <V> VENSTRE <LIBERALS>                                         
       (45)  <SP> SENTERPARTIET <CENTRE PARTY>                              
       (60)  <H> HOYRE <CONSERVATIVES>                                      
       (61)  <KRF> KRISTELIG FOLKEPARTI <CHRISTIAN PEOPLE'S                 
             PARTY>                                                         
       (80)  <FRP> FEMSKRITTSPARTIET <PROGRESS PARTY>                       
    FINLAND                                                                 
       (10)  <VAS> VASEMMISTOLIITTO <LEFT-WING ALLIANCE>                    
       (20)  <SDP> SOSIALIDEMOKRAATTINEN PUOLUE <SOCIAL                     
             DEMOCRATIC PARTY>                                              
       (40)  <RKP> RUOTSALAINEN KANSANPUOLUE (SVENSKA                       
             FOLKEPARTIET) <SWEDISH PEOPLE'S PARTY>                         
       (41)  <LKP> LIBERAALINEN KANSANPUOLUE <LIBERAL                       
             PARTY>                                                         
       (50)  <VIHR> VIHREAE LIITTO <GREENS>                                 
       (60)  <KESK> SUOMEN KESKUSTA <CENTRE PARTY>                          
       (61)  <SKL> SUOMEN KRISTILLINEN LIITTO <CHRISTIAN                    
             LEAGUE>                                                        
       (70)  <KOK> KANSALLINEN KOKOOMUS <NATIONAL COALITION>                
       (71)  <SMP> SUOMEN MAASEUDUN PUOLUE <RURAL PARTY>;                   
   VALUE V424FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V425FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V426FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "SINGLE"                                                             
   2 = "MARRIED"                                                            
   3 = "LIVING AS MARRIED"                                                  
   4 = "DIVORCED"                                                           
   5 = "SEPARATED"                                                          
   6 = "WIDOWED"                                                            
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V427FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   997 = "ILLITERATE/NVR STDY (POR)"                                        
   998 = "STILL STUDYING"                                                   
   999 = "<INAP, 16 IN V7>";                                                
   VALUE V428FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   998 = "NO"                                                               
   999 = "<INAP, 997-999 V427; 16 V7>";                                     
   VALUE V429FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   998 = "NO"                                                               
   999 = "<INAP, 997-999 V427; 16 V7>";                                     
   VALUE V430FT (MAX=40)                                                    
   1 = "MALE"                                                               
   2 = "FEMALE";                                                            
   VALUE V431FT (MAX=40)                                                    
   0 = "<NA>";                                                              
   VALUE V432FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "15-24"                                                              
   2 = "25-39"                                                              
   3 = "40-54"                                                              
   4 = "55+";                                                               
   VALUE V433FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "15-24"                                                              
   2 = "25-34"                                                              
   3 = "35-44"                                                              
   4 = "45-54"                                                              
   5 = "55-64"                                                              
   6 = "65+";                                                               
   VALUE V434FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ONE PERSON"                                                         
   2 = "2 PERSONS"                                                          
   3 = "3 PERSONS"                                                          
   4 = "4 PERSONS"                                                          
   5 = "5 PERSONS"                                                          
   6 = "6 PERSONS"                                                          
   7 = "7 PERSONS"                                                          
   8 = "8 PERSONS"                                                          
   9 = "9 AND MORE PERSONS";                                                
   VALUE V435FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ONE CHILD"                                                          
   2 = "TWO CHILDREN"                                                       
   3 = "THREE CHILDREN"                                                     
   4 = "FOUR CHILDREN"                                                      
   5 = "FIVE CHILDREN"                                                      
   6 = "SIX CHILDREN"                                                       
   7 = "SEVEN CHILDREN"                                                     
   8 = "EIGHT CHILDREN"                                                     
   9 = "NINE CHILDREN OR MORE"                                              
   10 = "NONE/NO CHILD";                                                    
   VALUE V436FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V437FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V438FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V439FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V440FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V441FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V442FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V443FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V444FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V445FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V446FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "LOOKING AFTER HH"                                                   
   2 = "STUDENT"                                                            
   3 = "UNEMPLOYED"                                                         
   4 = "RETIRED"                                                            
   5 = "FARMER"                                                             
   6 = "FISHERMAN"                                                          
   7 = "PROFESSIONAL"                                                       
   8 = "SHOPOWNER, CRAFTSMEN"                                               
   9 = "BUSINESS PROPRIETORS"                                               
   10 = "EMPLOYED PROFESSIONAL"                                             
   11 = "GENERAL MANAGEMENT"                                                
   12 = "MIDDLE MANAGEMENT"                                                 
   13 = "EMPLOYED AT DESK"                                                  
   14 = "EMPLOYED TRAVELLING"                                               
   15 = "EMPLOYED SERVICE"                                                  
   16 = "SUPERVISOR"                                                        
   17 = "SKILLED MANUAL WORKER"                                             
   18 = "OTHER MANUAL WORKER"                                               
   99 = "<INAP, CODED 16 IN V7>";                                           
   VALUE V447FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "FARMER"                                                             
   2 = "FISHERMAN"                                                          
   3 = "PROFESSIONAL"                                                       
   4 = "SHOPOWNER, CRAFTSMEN"                                               
   5 = "BUSINESS PROPRIETORS"                                               
   6 = "EMPLOYED PROFESSIONAL"                                              
   7 = "GENERAL MANAGEMENT"                                                 
   8 = "MIDDLE MANAGEMENT"                                                  
   9 = "EMPLOYED AT DESK"                                                   
   10 = "EMPLOYED TRAVELLING"                                               
   11 = "EMPLOYED SERVICE"                                                  
   12 = "SUPERVISOR"                                                        
   13 = "SKILLED MANUAL WORKER"                                             
   14 = "OTHER MANUAL WORKER"                                               
   15 = "NEVER DID ANY PAID WORK"                                           
   99 = "<INAP, NOT 1-4 IN D15A, 16 IN V7>";                                
   VALUE V448FT (MAX=40)                                                    
   998 = "<NA>"                                                             
   999 = "<INAP, 5-18 IN D15A, 16 IN V7>";                                  
   VALUE V449FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "NONE"                                                               
   2 = "1 TO 4"                                                             
   3 = "5 TO 9"                                                             
   4 = "10 AND OVER"                                                        
   5 = "DK"                                                                 
   9 = "<INAP, NOT 5-18 D15A, 1-14 D15B, 16 V7>";                           
   VALUE V450FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "PUBLIC EMPLOYMENT"                                                  
   2 = "NATIONALISED INDUSTRY"                                              
   3 = "PRIVATE INDUSTRY"                                                   
   4 = "PRIVATE SERVICES"                                                   
   5 = "DOES NOT KNOW"                                                      
   9 = "<INAP-NOT 10-18 D15A, 6-14 D15B, 16 V7>";                           
   VALUE V451FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "<UNDOCUMENTED CODE>"                                                
   9 = "<INAP, 16 IN V7>";                                                  
   VALUE V452FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "<UNDOCUMENTED CODE>"                                                
   9 = "<INAP, 16 IN V7>";                                                  
   VALUE V453FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   97 = "ILLITERATE/NVR STDY <POR ONLY>"                                    
   98 = "STILL STUDYING"                                                    
   99 = "<INAP, NOT CODE 2 D19B, 16 V7>";                                   
   VALUE V454FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "LOOKING AFTER HH"                                                   
   2 = "STUDENT"                                                            
   3 = "UNEMPLOYED"                                                         
   4 = "RETIRED"                                                            
   5 = "FARMER"                                                             
   6 = "FISHERMAN"                                                          
   7 = "PROFESSIONAL"                                                       
   8 = "SHOPOWNER, CRAFTSMEN"                                               
   9 = "BUSINESS PROPRIETORS"                                               
   10 = "EMPLOYED PROFESSIONAL"                                             
   11 = "GENERAL MANAGEMENT"                                                
   12 = "MIDDLE MANAGEMENT"                                                 
   13 = "EMPLOYED AT DESK"                                                  
   14 = "EMPLOYED TRAVELLING"                                               
   15 = "EMPLOYED SERVICE"                                                  
   16 = "SUPERVISOR"                                                        
   17 = "SKILLED MANUAL WORKER"                                             
   18 = "OTHER MANUAL WORKER"                                               
   99 = "<INAP, NOT 2 IN D19B, 16 IN V7>";                                  
   VALUE V455FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "FARMER"                                                             
   2 = "FISHERMAN"                                                          
   3 = "PROFESSIONAL"                                                       
   4 = "SHOPOWNER, CRAFTSMEN"                                               
   5 = "BUSINESS PROPRIETORS"                                               
   6 = "EMPLOYED PROFESSIONAL"                                              
   7 = "GENERAL MANAGEMENT"                                                 
   8 = "MIDDLE MANAGEMENT"                                                  
   9 = "EMPLOYED AT DESK"                                                   
   10 = "EMPLOYED TRAVELLING"                                               
   11 = "EMPLOYED SERVICE"                                                  
   12 = "SUPERVISOR"                                                        
   13 = "SKILLED MANUAL WORKER"                                             
   14 = "OTHER MANUAL WORKER"                                               
   15 = "NEVER DID ANY PAID WORK"                                           
   99 = "<INAP, NOT 1-4 IN D21A, 16 IN V7>";                                
   VALUE V456FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "NONE"                                                               
   2 = "1 TO 4"                                                             
   3 = "5 TO 9"                                                             
   4 = "10 AND OVER"                                                        
   5 = "DK"                                                                 
   9 = "<INAP, NOT 5-18 D21A, 1-14 D21B, 16 V7>";                           
   VALUE V457FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "MIDDLE CLASS"                                                       
   2 = "LOWER MIDDLE CLASS"                                                 
   3 = "WORKING CLASS"                                                      
   4 = "UPPER CLASS"                                                        
   5 = "UPPER MIDDLE CLASS"                                                 
   6 = "REFUSES TO BE CLASSIFIED"                                           
   7 = "OTHER"                                                              
   8 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V458FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "OWN HOUSE"                                                          
   2 = "OWN APARTMENT"                                                      
   3 = "RENT PRIV HOUSE"                                                    
   4 = "RENT PRIV APARTMENT"                                                
   5 = "RENT CORPOR HOUSE"                                                  
   6 = "RENT CORPOR APARTMENT"                                              
   7 = "OTHER"                                                              
   8 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V459FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "RURAL AREA OR VILLAGE"                                              
   2 = "SMALL OR MIDDLE SIZE TOWN"                                          
   3 = "LARGE TOWN"                                                         
   4 = "DK";                                                                
   VALUE V460FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ROMAN CATHOLIC"                                                     
   2 = "PROTESTANT"                                                         
   3 = "ORTHODOX"                                                           
   4 = "JEWISH"                                                             
   5 = "MUSLIM"                                                             
   6 = "BUDDHIST"                                                           
   7 = "HINDU"                                                              
   8 = "OTHER"                                                              
   9 = "NONE"                                                               
   10 = "DK"                                                                
   99 = "<INAP, CODED 16 IN V7>";                                           
   VALUE V461FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "SEVERAL TIMES A WEEK"                                               
   2 = "ONCE A WEEK"                                                        
   3 = "A FEW TIMES A YEAR"                                                 
   4 = "ONCE A YEAR OR LESS"                                                
   5 = "NEVER"                                                              
   6 = "DK"                                                                 
   9 = "<INAP, NOT 1-4 IN D26, 16 IN V7>";                                  
   VALUE V462FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "RELIGIOUS"                                                          
   2 = "NOT RELIGIOUS"                                                      
   3 = "AN AGNOSTIC"                                                        
   4 = "AN ATHEIST"                                                         
   5 = "DK"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V463FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   97 = "REFUSAL"                                                           
   98 = "DK";                                                               
  * DOCUMENT V463 - D29, HH INCOME                                          
    FRANCE                                                                  
      (01)  LESS THAN 4000 FRF                                              
      (02)  4000 TO 4999 FRF                                                
      (03)  5000 TO 5999 FRF                                                
      (04)  6000 TO 6999 FRF                                                
      (05)  7000 TO 7999 FRF                                                
      (06)  8000 TO 8999 FRF                                                
      (07)  9000 TO 9999 FRF                                                
      (08)  10000 TO 10999 FRF                                              
      (09)  11000 TO 12499 FRF                                              
      (10)  12500 TO 14999 FRF                                              
      (11)  15000 TO 17499 FRF                                              
      (12)  17500 FRF OR MORE                                               
    BELGIUM                                                                 
      (01)  LESS THAN 20000 BEF                                             
      (02)  20000 TO 29999 BEF                                              
      (03)  30000 TO 39999 BEF                                              
      (04)  40000 TO 49999 BEF                                              
      (05)  50000 TO 59999 BEF                                              
      (06)  60000 TO 69999 BEF                                              
      (07)  70000 TO 79999 BEF                                              
      (08)  80000 TO 89999 BEF                                              
      (09)  90000 TO 99999 BEF                                              
      (10)  100000 TO 109999 BEF                                            
      (11)  110000 TO 119999 BEF                                            
      (12)  120000 BEF OR MORE                                              
    NETHERLANDS                                                             
      (01)  LESS THAN 1500 NLG                                              
      (02)  1500 TO 1999 NLG                                                
      (03)  2000 TO 2499 NLG                                                
      (04)  2500 TO 2749 NLG                                                
      (05)  2750 TO 3249 NLG                                                
      (06)  3250 TO 3749 NLG                                                
      (07)  3750 TO 4249 NLG                                                
      (08)  4250 TO 4749 NLG                                                
      (09)  4750 TO 5249 NLG                                                
      (10)  5250 TO 6249 NLG                                                
      (11)  6250 TO 7249 NLG                                                
      (12)  7250 NLG OR MORE                                                
    WEST GERMANY                                                            
      (01)  LESS THAN 1500 DEM                                              
      (02)  1501 TO 1750 DEM                                                
      (03)  1751 TO 2000 DEM                                                
      (04)  2001 TO 2250 DEM                                                
      (05)  2251 TO 2500 DEM                                                
      (06)  2501 TO 2750 DEM                                                
      (07)  2751 TO 3000 DEM                                                
      (08)  3001 TO 3500 DEM                                                
      (09)  3501 TO 4000 DEM                                                
      (10)  4001 TO 4500 DEM                                                
      (11)  4501 TO 5000 DEM                                                
      (12)  5001 DEM OR MORE                                                
    ITALY                                                                   
      (01)  LESS THAN 750000 ITL                                            
      (02)  750000 TO 1000000 ITL                                           
      (03)  1000001 TO 1500000 ITL                                          
      (04)  1500001 TO 1750000 ITL                                          
      (05)  1750001 TO 2000000 ITL                                          
      (06)  2000001 TO 2500000 ITL                                          
      (07)  2500001 TO 3000000 ITL                                          
      (08)  3000001 TO 3500000 ITL                                          
      (09)  3500001 TO 4000000 ITL                                          
      (10)  4000001 TO 4500000 ITL                                          
      (11)  4500001 TO 5000000 ITL                                          
      (12)  5000000 ITL OR MORE                                             
    LUXEMBOURG                                                              
      (01)  LESS THAN 50000 LUF                                             
      (02)  50000 TO 59999 LUF                                              
      (03)  60000 TO 69999 LUF                                              
      (04)  70000 TO 79999 LUF                                              
      (05)  80000 TO 89999 LUF                                              
      (06)  90000 TO 94999 LUF                                              
      (07)  95000 TO 99999 LUF                                              
      (08)  100000 TO 109999 LUF                                            
      (09)  110000 TO 119999 LUF                                            
      (10)  120000 TO 129999 LUF                                            
      (11)  130000 TO 139999 LUF                                            
      (12)  140000 LUF OR MORE                                              
    DENMARK                                                                 
      (01)  LESS THAN 70000 DKK                                             
      (02)  70000 - 99999 DKK                                               
      (03)  100000 - 129999 DKK                                             
      (04)  130000 - 169999 DKK                                             
      (05)  170000 - 199999 DKK                                             
      (06)  200000 - 239999 DKK                                             
      (07)  240000 - 269999 DKK                                             
      (08)  270000 - 299999 DKK                                             
      (09)  300000 - 349999 DKK                                             
      (10)  350000 - 399999 DKK                                             
      (11)  400000 - 449999 DKK                                             
      (12)  450000 DKK OR MORE                                              
    IRELAND                                                                 
      (01)  LESS THAN 240 IEP                                               
      (02)  240 - 319 IEP                                                   
      (03)  320 - 399 IEP                                                   
      (04)  400 - 479 IEP                                                   
      (05)  480 - 599 IEP                                                   
      (06)  600 - 729 IEP                                                   
      (07)  730 - 829 IEP                                                   
      (08)  830 - 999 IEP                                                   
      (09)  1000 - 1149 IEP                                                 
      (10)  1150 - 1664 IEP                                                 
      (11)  1665 - 2000 IEP                                                 
      (12)  2001 IEP AND OVER                                               
    GREAT BRITAIN                                                           
      (01)  LESS THAN 240 GBP                                               
      (02)  240 - 319 GBP                                                   
      (03)  320 - 399 GBP                                                   
      (04)  400 - 479 GBP                                                   
      (05)  480 - 599 GBP                                                   
      (06)  600 - 729 GBP                                                   
      (07)  730 - 829 GBP                                                   
      (08)  830 - 999 GBP                                                   
      (09)  1000 - 1149 GBP                                                 
      (10)  1150 - 1664 GBP                                                 
      (11)  1665 - 2000 GBP                                                 
      (12)  2001 GBP AND OVER                                               
    NORTHERN IRELAND                                                        
      (01)  LESS THAN 240 GBP                                               
      (02)  240 - 319 GBP                                                   
      (03)  320 - 399 GBP                                                   
      (04)  400 - 479 GBP                                                   
      (05)  480 - 599 GBP                                                   
      (06)  600 - 729 GBP                                                   
      (07)  730 - 829 GBP                                                   
      (08)  830 - 999 GBP                                                   
      (09)  1000 - 1149 GBP                                                 
      (10)  1150 - 1664 GBP                                                 
      (11)  1665 - 2000 GBP                                                 
      (12)  2001 GBP AND OVER                                               
    GREECE                                                                  
      (01)  LESS THAN 40000 GRD                                             
      (02)  40001 - 70000 GRD                                               
      (03)  70001 - 100000 GRD                                              
      (04)  100001 - 130000 GRD                                             
      (05)  130001 - 160000 GRD                                             
      (06)  160001 - 190000 GRD                                             
      (07)  190001 - 220000 GRD                                             
      (08)  220001 - 250000 GRD                                             
      (09)  250001 - 280000 GRD                                             
      (10)  280001 - 310000 GRD                                             
      (11)  310001 - 340000 GRD                                             
      (12)  340001 GRD OR MORE                                              
    SPAIN                                                                   
      (01)  LESS THAN 50000 PTE                                             
      (02)  50001 TO 60000 PTE                                              
      (03)  60001 TO 70000 PTE                                              
      (04)  70001 TO 80000 PTE                                              
      (05)  80001 TO 90000 PTE                                              
      (06)  90001 TO 100000 PTE                                             
      (07)  100001 TO 125000 PTE                                            
      (08)  125001 TO 150000 PTE                                            
      (09)  150001 TO 175000 PTE                                            
      (10)  175001 TO 200000 PTE                                            
      (11)  200001 TO 225000 PTE                                            
      (12)  225001 PTE OR MORE                                              
    PORTUGAL                                                                
      (01)  LESS THAN 30000 ESP                                             
      (02)  30000 TO 39999 ESP                                              
      (03)  40000 TO 49999 ESP                                              
      (04)  50000 TO 59999 ESP                                              
      (05)  60000 TO 69999 ESP                                              
      (06)  70000 TO 79999 ESP                                              
      (07)  80000 TO 99999 ESP                                              
      (08)  100000 TO 109999 ESP                                            
      (09)  110000 TO 129999 ESP                                            
      (10)  130000 TO 149999 ESP                                            
      (11)  150000 TO 169999 ESP                                            
      (12)  1700000 ESP OR MORE                                             
    EAST GERMANY                                                            
      (01)  LESS THAN 750 DEM                                               
      (02)  751 TO 1000 DEM                                                 
      (03)  1001 TO 1250 DEM                                                
      (04)  1251 TO 1500 DEM                                                
      (05)  1501 TO 1750 DEM                                                
      (06)  1751 TO 2000 DEM                                                
      (07)  2001 TO 2250 DEM                                                
      (08)  2251 TO 2500 DEM                                                
      (09)  2501 TO 2750 DEM                                                
      (10)  2751 TO 3000 DEM                                                
      (11)  3001 TO 3250 DEM                                                
      (12)  3251 DEM AND MORE                                               
    NORWAY                                                                  
      (01)  LESS THAN 5000 KR                                               
      (02)  5000 TO 7999 KR                                                 
      (03)  8000 TO 9999 KR                                                 
      (04)  10000 TO 13999 KR                                               
      (05)  14000 TO 13999 KR                                               
      (06)  17000 TO 19999 KR                                               
      (07)  20000 TO 22999 KR                                               
      (08)  23000 TO 25999 KR                                               
      (09)  26000 TO 29999 KR                                               
      (10)  30000 TO 34999 KR                                               
      (11)  35000 TO 39999 KR                                               
      (12)  40000 KR. OR MORE                                               
    FINLAND                                                                 
      (01)  LESS THAN 60000 FIM                                             
      (02)  60001 TO 90000 FIM                                              
      (03)  90001 TO 120000 FIM                                             
      (04)  120001 TO 150000 FIM                                            
      (05)  150001 TO 180000 FIM                                            
      (06)  180001 TO 210000 FIM                                            
      (07)  210001 TO 240000 FIM                                            
      (08)  240001 TO 270000 FIM                                            
      (09)  270001 TO 300000 FIM                                            
      (10)  300001 FIM AND MORE;                                            
   VALUE V464FT (MAX=40)                                                    
   1 = "+ +"                                                                
   2 = "+"                                                                  
   3 = "-"                                                                  
   4 = "- -"                                                                
   5 = "DK/REFUSAL"                                                         
   9 = "<INAP, 15 &  16 IN V7>";                                            
   VALUE V465FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V466FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V467FT (MAX=40)                                                    
   98 = "<NA>"                                                              
   99 = "<INAP, CODED 16 IN V7>";                                           
   VALUE V468FT (MAX=40)                                                    
   98 = "<NA>"                                                              
   99 = "<INAP, CODED 16 IN V7>";                                           
   VALUE V469FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   999 = "<INAP, CODED 16 IN V7>";                                          
   VALUE V470FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TWO, INTERVIEWER/RESPONDENT"                                        
   2 = "THREE"                                                              
   3 = "FOUR"                                                               
   4 = "FIVE OR MORE"                                                       
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V471FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "EXCELLENT"                                                          
   2 = "FAIR"                                                               
   3 = "AVERAGE"                                                            
   4 = "BAD"                                                                
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V472FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   99 = "<INAP, CODED 16 IN V7>";                                           
 * DOCUMENT V472 - P6, SIZE OF COMMUNITY                                    
    FRANCE                                                                  
      (01)  < 2000                                                          
      (02)  2000 - < 20000 INHABITANTS                                      
      (03)  20001 - < 100000 INHABITANTS                                    
      (04)  > 100000 INHABITANTS                                            
      (05)  PARIS                                                           
    BELGIUM                                                                 
      (01)  GRAND CENTRE                                                    
      (02)  LOCALITE URBAINE                                                
      (03)  LOCALITE SECONDAIRE                                             
      (04)  AUTRE LOCALITE                                                  
    NETHERLANDS                                                             
      (01)  < 5000 INHABITANTS                                              
      (02)  5000 < 10000 INHABITANTS                                        
      (03)  10000 < 20000 INHABITANTS                                       
      (04)  20000 < 50000 INHABITANTS                                       
      (05)  50000 < 100000 INHABITANTS                                      
      (06)  100000 < 400000 INHABITANTS                                     
      (07)  > 400000 INHABITANTS                                            
    WEST GERMANY                                                            
      (01)  < 2000 INHABITANTS                                              
      (02)  2000 < 5000 INHABITANTS                                         
      (03)  5000 < 20000 INHABITANTS                                        
      (04)  20000 < 50000 INHABITANTS                                       
      (05)  50000 < 100000 INHABITANTS                                      
      (06)  100000 < 500000 INHABITANTS                                     
      (07)  > 500000 INHABITANTS                                            
    ITALY                                                                   
      (01)  < 10000 INHABITANTS                                             
      (02)  10001 - 100000 INHABITANTS                                      
      (03)  100111 - 250000 INHABITANTS                                     
      (04)  > 250000 INHABITANTS                                            
    LUXEMBOURG                                                              
      (01)  < 2500 INHABITANTS                                              
      (02)  2501 < 5000 INHABITANTS                                         
      (03)  5001 < 10000 INHABITANTS                                        
      (04)  10001 < 20000 INHABITANTS                                       
      (05)  20001 < 50000 INHABITANTS                                       
      (06)  > 50000 (LUXEMBOURG VILLE)                                      
    DENMARK                                                                 
      (01)  < 2000 INHABITANTS                                              
      (02)  2000 < 4999 INHABITANTS                                         
      (03)  5000 < 9999 INHABITANTS                                         
      (04)  10000 < 19999 INHABITANTS                                       
      (05)  20000 < 49999 INHABITANTS                                       
      (06)  50000 < 99999 INHABITANTS                                       
      (07)  > 100000 INHABITANTS                                            
    IRELAND                                                                 
      (01)  < 2000 INHABITANTS                                              
      (02)  2001 < 20000 INHABITANTS                                        
      (03)  20001 < 100000 INHABITANTS                                      
      (04)  > 100000 INHABITANTS                                            
    GREAT BRITAIN                                                           
      (01)  METROPOLITAN COUNTRY                                            
      (02)  OTHER 100 % URBAN                                               
      (03)  MIXED URBAN/RURAL                                               
      (04)  RURAL                                                           
    NORTHERN IRELAND                                                        
      (01)  < 2000 INHABITANTS                                              
      (02)  2001 < 20000 INHABITANTS                                        
      (03)  20001 < 100000 INHABITANTS                                      
      (04)  > 100000 INHABITANTS                                            
    GREECE                                                                  
      (01)  < 2000 INHABITANTS                                              
      (02)  2001 < 10000 INHABITANTS                                        
      (03)  10001 < 50000 INHABITANTS                                       
      (04)  50001 < 1000000 INHABITANTS                                     
      (05)  > 1000001 INHABITANTS                                           
    SPAIN                                                                   
      (01)  < 2000 INHABITANTS                                              
      (02)  2001 < 10000 INHABITANTS                                        
      (03)  10001 < 50000 INHABITANTS                                       
      (04)  50001 < 100000 INHABITANTS                                      
      (05)  100001 < 300000 INHABITANTS                                     
      (06)  300001 < 500000 INHABITANTS                                     
      (07)  500001 < 1000000 INHABITANTS                                    
      (08)  > 1000000 INHABITANTS                                           
    PORTUGAL                                                                
      (01)  < 100 INHABITANTS                                               
      (02)  101 < 200 INHABITANTS                                           
      (03)  201 < 500 INHABITANTS                                           
      (04)  501 < 1000 INHABITANTS                                          
      (05)  1001 < 2000 INHABITANTS                                         
      (06)  2001 < 5000 INHABITANTS                                         
      (07)  5001 < 10000 INHABITANTS                                        
      (08)  10001 < 30000 INHABITANTS                                       
      (09)  30001 < 100000 INHABITANTS                                      
      (10)  100001 < 500000 INHABITANTS                                     
      (11)  > 500000 INHABITANTS                                            
    EAST GERMANY                                                            
      (01)  < 2000 INHABITANTS                                              
      (02)  2000 < 5000 INHABITANTS                                         
      (03)  5000 < 20000 INHABITANTS                                        
      (04)  20000 < 50000 INHABITANTS                                       
      (05)  50000 < 100000 INHABITANTS                                      
      (06)  100000 < 500000 INHABITANTS                                     
      (07)  > 500000 INHABITANTS                                            
    GERMANY                                                                 
      (01)  < 2000 INHABITANTS                                              
      (02)  2000 < 5000 INHABITANTS                                         
      (03)  5000 < 20000 INHABITANTS                                        
      (04)  20000 < 50000 INHABITANTS                                       
      (05)  50000 < 100000 INHABITANTS                                      
      (06)  100000 < 500000 INHABITANTS                                     
      (07)  > 500000 INHABITANTS                                            
    NORWAY                                                                  
      (01)  OSLO                                                            
      (02)  BERGEN, TRONDHEIM                                               
      (03)  ANNEN BY                                                        
      (04)  TETTBYGD STROK                                                  
      (05)  SPREDT BEBYGGLES ;                                              
   VALUE V473FT (MAX=40)                                                    
   99 = "<INAP, CODED 10 IN V7>";                                           
 * DOCUMENT V473 - P7.1 REGION I (NUTS 2 LEVEL)                             
           (LABELED "PROVINCE" IN EARLIER EUROBAROMETERS)                   
    FRANCE                                                                  
      (01)  ILE-DE -FRANCE                                                  
      (02)  CHAMPAGNE-ARDENNE                                               
      (03)  PICARDIE                                                        
      (04)  HAUTE-NORMANDIE                                                 
      (05)  CENTRE                                                          
      (06)  BASSE-NORMANDIE                                                 
      (07)  BOURGOGNE                                                       
      (08)  NORD PAS DE CALAIS                                              
      (09)  LORRAINE                                                        
      (10)  ALSACE                                                          
      (11)  FRANCHE-COMTE                                                   
      (12)  PAYS DE LA LOIRE                                                
      (13)  BRETAGNE                                                        
      (14)  POITOU-CHARENTES                                                
      (15)  AQUITAINE                                                       
      (16)  MIDI-PYRENEES                                                   
      (17)  LIMOUSIN                                                        
      (18)  RHONE-ALPES                                                     
      (19)  AUVERGNE                                                        
      (20)  LANGUEDOC-ROUSSILLON                                            
      (21)  PROVENCE-ALPES-COTE D'AZUR                                      
      (22)  CORSE                                                           
    BELGIUM                                                                 
      (01)  HAINAUT                                                         
      (02)  LIMBURG                                                         
      (03)  NAMUR                                                           
      (04)  OOST-VLAANDEREN                                                 
      (05)  WEST-VLAANDEREN                                                 
      (06)  LIEGE                                                           
      (07)  LUXEMBOURG                                                      
      (08)  VLAAMS BRABANT                                                  
      (09)  ANTWERPEN                                                       
      (10)  BRUXELLES                                                       
      (11)  BRABANT WALLON                                                  
    NETHERLANDS                                                             
      (01)  GRONINGEN                                                       
      (02)  FRIESLAND                                                       
      (03)  DRENTE                                                          
      (04)  OVERIJSSEL                                                      
      (05)  GELDERLAND                                                      
      (06)  FLEVOLAND                                                       
      (07)  UTRECHT                                                         
      (08)  NOORD HOLLAND                                                   
      (09)  ZUID HOLLAND                                                    
      (10)  ZEELAND                                                         
      (11)  NOORD BRABANT                                                   
      (12)  LIMBURG                                                         
    WEST GERMANY                                                            
      SCHLESWIG HOLSTEIN                                                    
      (10)  SCHLESWIG HOLSTEIN                                              
      HAMBURG                                                               
      (20)  HAMBURG                                                         
      NIEDERSACHSEN                                                         
      (31)  RB BRAUNSCHWEIG (INCLUDES HILDESHEIM)                           
      (32)  RB HANNOVER                                                     
      (33)  RB LUENEBURG (INCLUDES STADE)                                   
      (34)  RB WESER-EMS (INCLUDES OSNABRUECK AURICH OLDENBURG)             
      BREMEN                                                                
      (40)  BREMEN                                                          
      NORDRHEINGWESTFALEN                                                   
      (51)  DUESSELDORF                                                     
      (53)  KOELN                                                           
      (55)  MUENSTER                                                        
      (57)  DETMOLD                                                         
      (59)  ARNSBERG                                                        
      HESSEN                                                                
      (64)  DARMSTADT                                                       
      (65)  GIESSEN                                                         
      (66)  KASSEL                                                          
      RHEINLAND PFALZ                                                       
      (71)  KOBLENZ                                                         
      (72)  TRIER                                                           
      (73)  RHEINHESSEN-PFALZ                                               
      BADEN WUERTTEMBERG                                                    
      (82)  NORDWUERTTEMBERG -- STUTTGART                                   
      (82)  NORDBADEN -- KARLSRUHE                                          
      (83)  SUEDBADEN -- FREIBURG                                           
      (84)  SUEDWUERTTEMBERG -- TUEBINGEN                                   
      BAYERN                                                                
      (91)  OBERBAYERN                                                      
      (92)  NIEDERBAYERN                                                    
      (93)  OBERPFALZ                                                       
      (94)  OBERFRANKEN                                                     
      (95)  MITTELFRANKEN                                                   
      (96)  UNTERFRANKEN                                                    
      (97)  SCHWABEN                                                        
      SAARLAND                                                              
      (100)  SAARLAND                                                       
      WEST-BERLIN                                                           
      (110)  BERLIN (WEST)                                                  
    ITALY                                                                   
      (01)  VALLE D'AOSTA E PIEMONTE                                        
      (02)  LIGURIA                                                         
      (03)  LOMBARDIA                                                       
      (04)  MILANO                                                          
      (05)  TRENTINO                                                        
      (06)  VENETO                                                          
      (07)  FRIULI, VENEZIA, GIULIA                                         
      (08)  EMILIA ROMAGNA                                                  
      (09)  TOSCANA                                                         
      (10)  MARCHE                                                          
      (11)  UMBRIA                                                          
      (12)  LAZIO                                                           
      (13)  MOLISE E ABRUZZI                                                
      (14)  CAMPANIA                                                        
      (15)  PUGLIE                                                          
      (16)  BASILICATA                                                      
      (17)  CALABRIA                                                        
      (18)  SICILIA                                                         
      (19)  SARDEGNA                                                        
    LUXEMBOURG                                                              
      (01)  CENTRUM                                                         
      (02)  SUDEN                                                           
      (03)  NORDEN                                                          
      (04)  OSTEN                                                           
    DENMARK                                                                 
      (01)  HOVEDSTADSOMRADET (COPENHAGEN AREA)                             
      (02)  SJAELLAND, LOLLAND-FALSTER BORNHOLM (EXCL HOVEDSTADOMRADET)     
      (03)  FYN                                                             
      (04)  JYLLAND                                                         
    IRELAND                                                                 
      (01)  DONEGAL                                                         
      (02)  NORTH WEST                                                      
      (03)  NORTH EAST                                                      
      (04)  WEST                                                            
      (05)  MIDLANDS                                                        
      (06)  EAST                                                            
      (07)  MID WEST                                                        
      (08)  SOUTH EAST                                                      
      (09)  SOUTH WEST                                                      
    GREAT BRITAIN                                                           
      (01)  CLEVELAND,DURHAM                                                
      (02)  CUMBRIA                                                         
      (03)  NORTHUMBERLAND,TYNE AND WEAR                                    
      (04)  HUMBERSIDE                                                      
      (05)  NORTH YORKSHIRE                                                 
      (06)  SOUTH YORKSHIRE                                                 
      (07)  WEST YORKSHIRE                                                  
      (08)  DERBYSHIRE,NOTTINGHAMSHIRE                                      
      (09)  LEICESTERSHIRE,NORTHAMPTONSHIRE                                 
      (10)  LINCOLNSHIRE                                                    
      (11)  EAST ANGLIA                                                     
      (12)  BEDFORDSHIRE,HERTFORDSHIRE                                      
      (13)  BERKSSHIRE,BUCKINGHAMSHIRE,OXFORDSHIRE                          
      (14)  SURREY,EAST/WEST SUSSEX                                         
      (15)  ESSEX                                                           
      (16)  GREATER LONDON                                                  
      (17)  HAMPSHIRE,ISLE OF WIGHT                                         
      (18)  KENT                                                            
      (19)  AVON,GLOUCESTERSHIRE,WILTSHIRE                                  
      (20)  CORNWALL,DEVON                                                  
      (21)  DORSET,SOMERSET                                                 
      (22)  HEREFORD AND WORCESTER,WILTSHIRE                                
      (23)  SCHROPSHIRE,STAFFORDSHIRE                                       
      (24)  WEST MIDLANDS (COUNTY)                                          
      (25)  CHESHIRE                                                        
      (26)  GREATER MANCHESTER                                              
      (27)  LANCASHIRE                                                      
      (28)  MERSEYSIDE                                                      
      (29)  CLWYD,DYFED,GWYNEDD,POWYS                                       
      (30)  GWENT,MID-S-W GLAMORGAN                                         
      (31)  BORDERS,CENTRAL,FIFE,LOTHIAN,TAYSIDE                            
      (32)  DUMPHRIES-GALLOWAY,STRATHCLYDE                                  
      (33)  HIGHLANDS,ISLANDS                                               
      (34)  GRAMPIAN                                                        
    GREECE                                                                  
      (01)  MACEDONIA                                                       
      (02)  THESSALIA                                                       
      (03)  ANATOLIKI MAKEDONIA                                             
      (04)  THRAKI                                                          
      (05)  ANATOLIKI STEREA KAI NISSIA                                     
      (06)  PELOPONNISOS KAI DYTIKI STEREA                                  
      (07)  IPEIROS                                                         
      (08)  KRITI                                                           
      (09)  NISIA ANATOLIKOU AIGAIOU                                        
    SPAIN                                                                   
      (01)  ANDALUCIA                                                       
      (02)  ARAGON                                                          
      (03)  ASTURIAS                                                        
      (04)  BALEARES                                                        
      (05)  CANARIAS                                                        
      (06)  CANTABRIA                                                       
      (07)  CASTILLA-LEON                                                   
      (08)  CASTILLA-LA MANCHA                                              
      (09)  CATALUNA                                                        
      (10)  EXTREMADURA                                                     
      (11)  GALICIA                                                         
      (12)  MADRID                                                          
      (13)  MURCIA                                                          
      (14)  NAVARRA                                                         
      (15)  LA RIOJA                                                        
      (16)  PAIS VALENCIANO                                                 
      (17)  PAIS VASCO                                                      
    PORTUGAL                                                                
      (01)  NORTE                                                           
      (02)  CENTRO                                                          
      (03)  LISBOA ET VALE DO TEJO                                          
      (04)  ALENTEJO                                                        
      (05)  ALGARVE                                                         
      (06)  ACORES                                                          
      (07)  MADEIRA                                                         
    EAST GERMANY                                                            
      (01)  ROSTOCK                                                         
      (02)  SCHWERIN                                                        
      (03)  NEUBRANDENBURG                                                  
      (04)  POTSDAM                                                         
      (05)  FRANKFURT                                                       
      (06)  COTTBUS                                                         
      (07)  MAGDEBURG                                                       
      (08)  HALLE                                                           
      (09)  ERFURT                                                          
      (10)  GERA                                                            
      (11)  SUHL                                                            
      (12)  DRESDEN                                                         
      (13)  LEIPZIG                                                         
      (14)  CHEMNITZ                                                        
      (15)  OST BERLIN                                                      
    NORWAY                                                                  
      (01)  OSTFOLD                                                         
      (02)  AKERSHUS                                                        
      (03)  OSLO                                                            
      (04)  HEDMARK                                                         
      (05)  OPPLAND                                                         
      (06)  BUSKERUD                                                        
      (07)  VESTFOLD                                                        
      (08)  TELEMARK                                                        
      (09)  AUST-AGDER                                                      
      (10)  VEST-AGDER                                                      
      (11)  ROGALAND                                                        
      (12)  HORDALAND                                                       
      (13)  SOGN OG FJORDANE                                                
      (14)  MORE OG ROMSDAL                                                 
      (15)  SOR-TRONDELAG                                                   
      (16)  NORD-TRONDELAG                                                  
      (17)  NORDLAND                                                        
      (18)  TROMS                                                           
      (19)  FINMARK                                                         
    FINLAND                                                                 
      (01)  UUDENMAAN LAANI (SOUTHERN)                                      
      (02)  TURUN JA PORIN LAANI (SOUTHERN)                                 
      (03)  HAMEEN LAANI (SOUTHERN)                                         
      (04)  KYMEN LAANI (SOUTHERN)                                          
      (05)  MIKKELIN LAANI (MIDDLE)                                         
      (06)  KUOPION LAANI (MIDDLE)                                          
      (07)  KESKI SUOMEN LAANI (MIDDLE)                                     
      (08)  VAASAN LAANI (MIDDLE)                                           
      (09)  PHJOIS-KARJALAN LAANI (NORTHERN)                                
      (10)  OULUN LAANI (NORTHERN)                                          
      (11)  LAPIN LAANI (NORTHERN) ;                                        
   VALUE V474FT (MAX=40)                                                    
   99 = "<INAP, 6-8, 11, 13, 16 IN V7>";                                    
 * DOCUMENT V474 - P7.2 REGION II  (NUTS 1 LEVEL)                           
    FRANCE                                                                  
      (01)  ILE DE FRANCE                                                   
      (02)  BASSIN PARISIEN                                                 
      (03)  NORD-PAS DE CALAIS                                              
      (04)  EAST                                                            
      (05)  WEST                                                            
      (06)  SOUTH WEST                                                      
      (07)  CENTRE EAST                                                     
      (08)  MEDITERRANEE                                                    
    BELGIUM                                                                 
      (01)  WALLONIE                                                        
      (02)  BRUXELLES                                                       
      (03)  VLAANDEREN                                                      
    NETHERLANDS                                                             
      (01)  NORTH                                                           
      (02)  EAST                                                            
      (03)  WEST                                                            
      (04)  SOUTH                                                           
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
    UNITED KINGDOM                                                          
      (01)  SCOTLAND                                                        
      (02)  NORTH + YORKS&HUMBERSIDE + NORTH WEST                           
      (03)  EAST/WEST MIDLANDS + EAST ANGLIA                                
      (04)  WALES                                                           
      (05)  GLC (CODE 12 - 18 IN V761)                                      
      (06)  SOUTH EAST + SOUTH WEST                                         
      (07)  NORTHERN IRELAND                                                
    SPAIN                                                                   
      (01)  GALICIA                                                         
      (02)  NORTH                                                           
      (03)  NORTH EAST                                                      
      (04)  ARAGON RIOJA                                                    
      (05)  MADRID                                                          
      (06)  CENTRE                                                          
      (07)  CATALUNA                                                        
      (08)  EAST                                                            
      (09)  SOUTH                                                           
      (10)  CANARIAS                                                        
    EAST GERMANY                                                            
      (11)  BERLIN (OST)                                                    
      (12)  BRANDENBURG                                                     
      (13)  MECKLENBURG-VORPOMMERN                                          
      (14)  SACHSEN                                                         
      (15)  SACHSEN-ANHALT                                                  
      (16)  THUERINGEN                                                      
    NORWAY                                                                  
      (01)  OSLO/AKERSHUS                                                   
      (02)  REST EASTLAND                                                   
      (03)  SOUTH/WESTERN                                                   
      (04)  TRONDELAG/NORTHERN ;                                            
   VALUE V475FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V476FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "NO, DK THIS OFFICE"                                                 
   2 = "YES, KNOW OFFC, SEND CHK"                                           
   3 = "YES, KNOW OFFC, NO CHK"                                             
   4 = "NSP"                                                                
   9 = "<INAP, NOT 2 IN V7>";                                               
   VALUE V477FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "AN ADVANTAGE"                                                       
   2 = "A DISADVANTAGE"                                                     
   3 = "DOESNT MATTER"                                                      
   4 = "NOT NOTICED BEFORE TODAY"                                           
   5 = "DK"                                                                 
   9 = "<INAP, NOT 7 IN V7>";                                               
   VALUE V478FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES"                                                                
   2 = "NO"                                                                 
   3 = "DK"                                                                 
   9 = "<INAP, NOT 4 NOR 14 IN V7>";                                        
   VALUE V479FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "TOO MUCH"                                                           
   2 = "JUST RIGHT"                                                         
   3 = "NOT ENOUGH"                                                         
   4 = "DK"                                                                 
   9 = "<INAP, NOT 4 NOR 14 IN V7>";                                        
   VALUE V480FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "A LOT AFFECTED LIFE/WORK"                                           
   2 = "A LITTLE AFFECTED LIFE/WORK"                                        
   3 = "NOT AFFECTED LIFE/WORK"                                             
   4 = "DK"                                                                 
   9 = "<INAP, NOT 11 IN V7>";                                              
   VALUE V481FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 12 IN V7>";                                              
   VALUE V482FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 12 IN V7>";                                              
   VALUE V483FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 12 IN V7>";                                              
   VALUE V484FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 12 IN V7>";                                              
   VALUE V485FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 12 IN V7>";                                              
   VALUE V486FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 12 IN V7>";                                              
   VALUE V487FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 12 IN V7>";                                              
   VALUE V488FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 12 IN V7>";                                              
   VALUE V489FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 12 IN V7>";                                              
   VALUE V490FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                      
   1 = "MENTIONED"                                                          
   8 = "<NA>"                                                               
   9 = "<INAP, NOT 12 IN V7>";                                              
   VALUE V491FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "MORE PROTECTION"                                                    
   2 = "LESS PROTECTION"                                                    
   3 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN V7>";                                               
   VALUE V492FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "MORE PROTECTION"                                                    
   2 = "LESS PROTECTION"                                                    
   3 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN V7>";                                               
   VALUE V493FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "MORE PROTECTION"                                                    
   2 = "LESS PROTECTION"                                                    
   3 = "DK"                                                                 
   9 = "<INAP, NOT 1 IN V7>";                                               
   VALUE V494FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "IN FAVOUR"                                                          
   2 = "OPPOSED"                                                            
   3 = "DK"                                                                 
   9 = "<INAP, NOT 8 IN V7>";                                               
   VALUE V495FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "PARTICIPATE W/OUT PROBLEMS"                                         
   2 = "PARTICIPATE WITH DELAY"                                             
   3 = "NOT ABLE TO PARTCICIPATE"                                           
   4 = "DK"                                                                 
   9 = "<INAP, NOT 5 IN V7>";                                               
   VALUE V496FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "GOOD THING"                                                         
   2 = "BAD THING"                                                          
   3 = "NO EFFECT"                                                          
   4 = "NSP"                                                                
   9 = "<INAP, NOT 13 IN V7>";                                              
   VALUE V497FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "GOOD"                                                               
   2 = "BAD"                                                                
   3 = "GOOD AND BAD"                                                       
   4 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V498FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "INDEPENDENT/DURABLE SOLUTION"                                       
   2 = "STEP ON ROAD TO MEMBERSHIP"                                         
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V499FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "VERY IMPORTANT"                                                     
   2 = "FAIRLY IMPORTANT"                                                   
   3 = "NOT IMPORTANT"                                                      
   4 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V500FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "FOR"                                                                
   2 = "AGAINST"                                                            
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V501FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "WOULD DEF VOTE FOR"                                                 
   2 = "WOULD PROB VOTE FOR"                                                
   3 = "WOULD PROB VOTE AGAINST"                                            
   4 = "WOULD DEF VOTE AGAINST"                                             
   5 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V502FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "DECISIVE"                                                           
   2 = "SOME"                                                               
   3 = "NONE AT ALL"                                                        
   4 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V503FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "YES, VERY MUCH IMPORTANCE"                                          
   2 = "YES, MUCH IMPORTANCE"                                               
   3 = "YES, A LITTLE IMPORTANCE"                                           
   4 = "YES, VERY LITTLE IMPORTANCE"                                        
   5 = "NO, DONT THINK SO"                                                  
   6 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V504FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "GREAT IMPORTANCE"                                                   
   2 = "SOME IMPORTANCE"                                                    
   3 = "LITTLE IMPORTANCE"                                                  
   4 = "NO IMPORTANCE"                                                      
   5 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V505FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "NOR REF FIRST"                                                      
   2 = "NOR REF BEFORE SWEDEN"                                              
   3 = "NOR REF SAME TIME AS SWEDEN"                                        
   4 = "NOR REF AFTER SWEDEN"                                               
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V506FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "NOR REF FIRST"                                                      
   2 = "NOR REF BEFORE SWEDEN"                                              
   3 = "NOR REF SAME TIME AS SWEDEN"                                        
   4 = "NOR REF AFTER SWEDEN"                                               
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V507FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "WOULD DEFENITELY VOTE FOR"                                          
   2 = "WOULD PROBABLY VOTE FOR"                                            
   3 = "WOULD PROBABLY VOTE AGAINST"                                        
   4 = "WOULD DEFENITELY VOTE AGAINST"                                      
   5 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V508FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "VERY POSITIVELY"                                                    
   2 = "FAIRLY POSITIVELY"                                                  
   3 = "FAIRLY NEGATIVELY"                                                  
   4 = "VERY NEGATIVELY"                                                    
   5 = "WILL NOT HAVE ANY INFLUENCE"                                        
   6 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V509FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "MORE POSITIVE TOWARDS MEMBERSHIP"                                   
   2 = "MORE NEGATIVE TOWARDS MEMBERSHIP"                                   
   3 = "MORE INSECURE"                                                      
   4 = "OR NOT CHANGED OPNION"                                              
   5 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V510FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "GREAT CONFIDENCE"                                                   
   2 = "MUCH CONFIDENCE"                                                    
   3 = "A LITTLE CONFIDENCE"                                                
   4 = "VERY LITTLE CONFIDENCE"                                             
   5 = "NO CONFIDENCE AT ALL"                                               
   6 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V511FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "GREAT CONFIDENCE"                                                   
   2 = "MUCH CONFIDENCE"                                                    
   3 = "A LITTLE CONFIDENCE"                                                
   4 = "VERY LITTLE CONFIDENCE"                                             
   5 = "NO CONFIDENCE AT ALL"                                               
   6 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V512FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "GREAT CONFIDENCE"                                                   
   2 = "MUCH CONFIDENCE"                                                    
   3 = "A LITTLE CONFIDENCE"                                                
   4 = "VERY LITTLE CONFIDENCE"                                             
   5 = "NO CONFIDENCE AT ALL"                                               
   6 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V513FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "GREAT CONFIDENCE"                                                   
   2 = "MUCH CONFIDENCE"                                                    
   3 = "A LITTLE CONFIDENCE"                                                
   4 = "VERY LITTLE CONFIDENCE"                                             
   5 = "NO CONFIDENCE AT ALL"                                               
   6 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V514FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "GREAT CONFIDENCE"                                                   
   2 = "MUCH CONFIDENCE"                                                    
   3 = "A LITTLE CONFIDENCE"                                                
   4 = "VERY LITTLE CONFIDENCE"                                             
   5 = "NO CONFIDENCE AT ALL"                                               
   6 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V515FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "GREAT CONFIDENCE"                                                   
   2 = "MUCH CONFIDENCE"                                                    
   3 = "A LITTLE CONFIDENCE"                                                
   4 = "VERY LITTLE CONFIDENCE"                                             
   5 = "NO CONFIDENCE AT ALL"                                               
   6 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V516FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "GREAT CONFIDENCE"                                                   
   2 = "MUCH CONFIDENCE"                                                    
   3 = "A LITTLE CONFIDENCE"                                                
   4 = "VERY LITTLE CONFIDENCE"                                             
   5 = "NO CONFIDENCE AT ALL"                                               
   6 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V517FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "GREAT CONFIDENCE"                                                   
   2 = "MUCH CONFIDENCE"                                                    
   3 = "A LITTLE CONFIDENCE"                                                
   4 = "VERY LITTLE CONFIDENCE"                                             
   5 = "NO CONFIDENCE AT ALL"                                               
   6 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V518FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ADVANTAGE"                                                          
   2 = "DISADVANTAGE"                                                       
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V519FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ADVANTAGE"                                                          
   2 = "DISADVANTAGE"                                                       
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V520FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ADVANTAGE"                                                          
   2 = "DISADVANTAGE"                                                       
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V521FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ADVANTAGE"                                                          
   2 = "DISADVANTAGE"                                                       
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V522FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ADVANTAGE"                                                          
   2 = "DISADVANTAGE"                                                       
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V523FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ADVANTAGE"                                                          
   2 = "DISADVANTAGE"                                                       
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V524FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ADVANTAGE"                                                          
   2 = "DISADVANTAGE"                                                       
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V525FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ADVANTAGE"                                                          
   2 = "DISADVANTAGE"                                                       
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V526FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "ADVANTAGE"                                                          
   2 = "DISADVANTAGE"                                                       
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V527FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "DID NOT VOTE IN 1972"                                               
   2 = "VOTED FOR"                                                          
   3 = "VOTED AGAINST"                                                      
   4 = "DONT REMEMBER"                                                      
   5 = "NO ANSWER"                                                          
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V528FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "DO BELEIVE"                                                         
   2 = "DO NOT BELIEVE"                                                     
   3 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V529FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "VERY INTERESTED"                                                    
   2 = "FAIRLY INTERESTED"                                                  
   3 = "A LITTLE INTERESTED"                                                
   4 = "NOT MUCH INTERESTED"                                                
   5 = "NOT INTERESTED AT ALL"                                              
   6 = "DK"                                                                 
   9 = "<INAP, NOT 15 IN V7>";                                              
   VALUE V530FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "+ + HIGH"                                                           
   2 = "+"                                                                  
   3 = "-"                                                                  
   4 = "- - LOW"                                                            
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V531FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "FARMER &  FISHER"                                                   
   2 = "PROFESSIONALS"                                                      
   3 = "SHOPOWNER, CRAFTSMEN"                                               
   4 = "BUSINESS PROPRIETORS"                                               
   5 = "EMPLOYED PROFESSIONAL"                                              
   6 = "GENERAL MANAGEMENT"                                                 
   7 = "MIDDLE MANAGEMENT"                                                  
   8 = "EMPLOYED AT A DESK"                                                 
   9 = "EMPLOYED TRAVELLING"                                                
   10 = "EMPLOYED SERVICE"                                                  
   11 = "SUPERVISORS"                                                       
   12 = "SKILLED MANUAL WORKERS"                                            
   13 = "OTHER MANUAL WORKER"                                               
   99 = "<INAP, CODED 16 IN V7>";                                           
   VALUE V532FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "+++"                                                                
   2 = "++"                                                                 
   3 = "--"                                                                 
   4 = "---"                                                                
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V533FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "A"                                                                  
   2 = "B"                                                                  
   3 = "C"                                                                  
   4 = "D"                                                                  
   5 = "E1"                                                                 
   6 = "E2"                                                                 
   7 = "E3"                                                                 
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V534FT (MAX=40)                                                    
   0 = "<NA>"                                                               
   1 = "SELF-EMPLOYED"                                                      
   2 = "MANAGERS"                                                           
   3 = "OTHER WHITE COLLARS"                                                
   4 = "MANUAL WORKERS"                                                     
   5 = "HOUSE PERSON"                                                       
   6 = "UNEMPLOYED"                                                         
   9 = "<INAP, CODED 16 IN V7>";                                            
   VALUE V535FT (MAX=40)                                                    
   0 = "NON NAT+OVERSAMPLE"                                                 
   1 = "NATIONALS ONLY";                                                    
   VALUE V536FT (MAX=40)                                                    
   0 = "OVERSAMPLE"                                                         
   1 = "NATIONALS+NON NAT"                                                  
   9 = "<INAP, 15 &  16 IN V7>";                                            
   VALUE V537FT (MAX=40)                                                    
   0 = "V451 NOT CODED 1"                                                   
   1 = "ALL V451 CODED 1"                                                   
   9 = "<INAP, 15 &  16 IN V7>";                                            
   VALUE V538FT (MAX=40)                                                    
   0 = "NON NATIONALS"                                                      
   1 = "NATIONALS";                                                         
   VALUE V540FT (MAX=40)                                                    
   1 = "VERS A: EUR COMMUNITY"                                              
   2 = "VERS B: EUR UNION (EUR COMMTY)"                                     
   9 = "INAP, NOT PART OF SPLIT BALLOT";                                    
   */                                                                       
                                                                            
* SAS DATA, INFILE, INPUT STATEMENTS;                                       
                                                                            
DATA;                                                                       
INFILE "physical-filename" LRECL=752;                                       
INPUT                                                                       
   V1 1-4                   V2 5-5                   V3 6-6                 
   V4 7-11                  V5 12-13                 V6 14-20 .4            
   V7 21-22                 V8 23-29 .4              V9 30-36 .4            
   V10 37-38                V11 39-45 .4             V12 46-52 .4           
   V13 53-59 .4             V14 60-66 .4             V15 67-73 .4           
   V16 74-80 .4             V17 81-87 .4             V18 88-94 .4           
   V19 95-101 .4            V20 102-108 .4           V21 109-115 .4         
   V22 116-122 .4           V23 123-129 .4           V24 130-136 .4         
   V25 137-143 .4           V26 144-150 .4           V27 151-157 .4         
   V28 158-164 .4           V29 165-171 .4           V30 172-178 .4         
   V31 179-185 .4           V32 186-192 .4           V33 193-199 .4         
   V34 200-200              V35 201-202              V36 203-203            
   V37 204-204              V38 205-205              V39 206-206            
   V40 207-207              V41 208-208              V42 209-209            
   V43 210-210              V44 211-211              V45 212-212            
   V46 213-213              V47 214-214              V48 215-215            
   V49 216-216              V50 217-217              V51 218-218            
   V52 219-219              V53 220-220              V54 221-221            
   V55 222-222              V56 223-223              V57 224-224            
   V58 225-225              V59 226-226              V60 227-227            
   V61 228-228              V62 229-229              V63 230-230            
   V64 231-231              V65 232-232              V66 233-233            
   V67 234-234              V68 235-235              V69 236-236            
   V70 237-237              V71 238-238              V72 239-239            
   V73 240-240              V74 241-241              V75 242-242            
   V76 243-243              V77 244-244              V78 245-245            
   V79 246-246              V80 247-247              V81 248-248            
   V82 249-249              V83 250-250              V84 251-251            
   V85 252-252              V86 253-253              V87 254-254            
   V88 255-255              V89 256-256              V90 257-257            
   V91 258-258              V92 259-259              V93 260-260            
   V94 261-261              V95 262-262              V96 263-263            
   V97 264-264              V98 265-265              V99 266-266            
   V100 267-267             V101 268-268             V102 269-269           
   V103 270-270             V104 271-271             V105 272-273           
   V106 274-274             V107 275-275             V108 276-277           
   V109 278-278             V110 279-280             V111 281-281           
   V112 282-282             V113 283-283             V114 284-284           
   V115 285-285             V116 286-286             V117 287-287           
   V118 288-288             V119 289-289             V120 290-290           
   V121 291-291             V122 292-292             V123 293-293           
   V124 294-294             V125 295-295             V126 296-296           
   V127 297-297             V128 298-298             V129 299-299           
   V130 300-300             V131 301-301             V132 302-302           
   V133 303-303             V134 304-304             V135 305-305           
   V136 306-306             V137 307-307             V138 308-308           
   V139 309-309             V140 310-310             V141 311-311           
   V142 312-312             V143 313-313             V144 314-314           
   V145 315-315             V146 316-316             V147 317-317           
   V148 318-318             V149 319-319             V150 320-320           
   V151 321-321             V152 322-322             V153 323-323           
   V154 324-324             V155 325-325             V156 326-326           
   V157 327-327             V158 328-328             V159 329-329           
   V160 330-330             V161 331-331             V162 332-332           
   V163 333-333             V164 334-334             V165 335-335           
   V166 336-336             V167 337-337             V168 338-338           
   V169 339-339             V170 340-340             V171 341-341           
   V172 342-342             V173 343-343             V174 344-344           
   V175 345-345             V176 346-346             V177 347-347           
   V178 348-348             V179 349-349             V180 350-350           
   V181 351-351             V182 352-352             V183 353-353           
   V184 354-355             V185 356-356             V186 357-357           
   V187 358-358             V188 359-359             V189 360-360           
   V190 361-361             V191 362-362             V192 363-363           
   V193 364-364             V194 365-365             V195 366-366           
   V196 367-367             V197 368-368             V198 369-369           
   V199 370-370             V200 371-371             V201 372-372           
   V202 373-373             V203 374-374             V204 375-375           
   V205 376-376             V206 377-377             V207 378-378           
   V208 379-381             V209 382-383             V210 384-384           
   V211 385-385             V212 386-386             V213 387-387           
   V214 388-388             V215 389-389             V216 390-390           
   V217 391-391             V218 392-392             V219 393-393           
   V220 394-394             V221 395-395             V222 396-396           
   V223 397-397             V224 398-398             V225 399-399           
   V226 400-400             V227 401-401             V228 402-402           
   V229 403-403             V230 404-404             V231 405-405           
   V232 406-406             V233 407-407             V234 408-408           
   V235 409-409             V236 410-410             V237 411-411           
   V238 412-412             V239 413-413             V240 414-414           
   V241 415-415             V242 416-416             V243 417-417           
   V244 418-418             V245 419-419             V246 420-420           
   V247 421-421             V248 422-422             V249 423-423           
   V250 424-424             V251 425-425             V252 426-427           
   V253 428-428             V254 429-429             V255 430-430           
   V256 431-431             V257 432-432             V258 433-433           
   V259 434-434             V260 435-435             V261 436-436           
   V262 437-437             V263 438-438             V264 439-439           
   V265 440-440             V266 441-441             V267 442-442           
   V268 443-443             V269 444-444             V270 445-445           
   V271 446-446             V272 447-447             V273 448-448           
   V274 449-449             V275 450-450             V276 451-451           
   V277 452-452             V278 453-453             V279 454-454           
   V280 455-455             V281 456-456             V282 457-457           
   V283 458-458             V284 459-459             V285 460-460           
   V286 461-461             V287 462-462             V288 463-463           
   V289 464-464             V290 465-465             V291 466-466           
   V292 467-467             V293 468-468             V294 469-469           
   V295 470-471             V296 472-472             V297 473-473           
   V298 474-474             V299 475-475             V300 476-477           
   V301 478-478             V302 479-479             V303 480-480           
   V304 481-481             V305 482-482             V306 483-483           
   V307 484-484             V308 485-485             V309 486-486           
   V310 487-487             V311 488-488             V312 489-489           
   V313 490-490             V314 491-491             V315 492-492           
   V316 493-493             V317 494-494             V318 495-495           
   V319 496-496             V320 497-497             V321 498-498           
   V322 499-499             V323 500-500             V324 501-501           
   V325 502-502             V326 503-503             V327 504-504           
   V328 505-505             V329 506-506             V330 507-507           
   V331 508-508             V332 509-509             V333 510-510           
   V334 511-511             V335 512-512             V336 513-513           
   V337 514-514             V338 515-515             V339 516-516           
   V340 517-517             V341 518-518             V342 519-519           
   V343 520-520             V344 521-521             V345 522-522           
   V346 523-523             V347 524-524             V348 525-525           
   V349 526-526             V350 527-527             V351 528-528           
   V352 529-529             V353 530-530             V354 531-531           
   V355 532-532             V356 533-533             V357 534-534           
   V358 535-535             V359 536-536             V360 537-537           
   V361 538-538             V362 539-539             V363 540-540           
   V364 541-541             V365 542-542             V366 543-543           
   V367 544-544             V368 545-545             V369 546-546           
   V370 547-547             V371 548-548             V372 549-549           
   V373 550-550             V374 551-551             V375 552-552           
   V376 553-553             V377 554-554             V378 555-555           
   V379 556-556             V380 557-557             V381 558-558           
   V382 559-559             V383 560-560             V384 561-561           
   V385 562-562             V386 563-563             V387 564-564           
   V388 565-565             V389 566-566             V390 567-567           
   V391 568-568             V392 569-569             V393 570-570           
   V394 571-571             V395 572-572             V396 573-573           
   V397 574-574             V398 575-575             V399 576-576           
   V400 577-577             V401 578-578             V402 579-579           
   V403 580-580             V404 581-581             V405 582-582           
   V406 583-583             V407 584-584             V408 585-585           
   V409 586-586             V410 587-587             V411 588-588           
   V412 589-589             V413 590-590             V414 591-591           
   V415 592-592             V416 593-593             V417 594-594           
   V418 595-595             V419 596-596             V420 597-598           
   V421 599-599             V422 600-601             V423 602-603           
   V424 604-604             V425 605-605             V426 606-606           
   V427 607-609             V428 610-612             V429 613-615           
   V430 616-616             V431 617-618             V432 619-619           
   V433 620-620             V434 621-621             V435 622-623           
   V436 624-624             V437 625-625             V438 626-626           
   V439 627-627             V440 628-628             V441 629-629           
   V442 630-630             V443 631-631             V444 632-632           
   V445 633-633             V446 634-635             V447 636-637           
   V448 638-640             V449 641-641             V450 642-642           
   V451 643-643             V452 644-644             V453 645-646           
   V454 647-648             V455 649-650             V456 651-651           
   V457 652-652             V458 653-653             V459 654-654           
   V460 655-656             V461 657-657             V462 658-658           
   V463 659-660             V464 661-661             V465 662-663           
   V466 664-664             V467 665-666             V468 667-668           
   V469 669-671             V470 672-672             V471 673-673           
   V472 674-675             V473 676-678             V474 679-680           
   V475 681-681             V476 682-682             V477 683-683           
   V478 684-684             V479 685-685             V480 686-686           
   V481 687-687             V482 688-688             V483 689-689           
   V484 690-690             V485 691-691             V486 692-692           
   V487 693-693             V488 694-694             V489 695-695           
   V490 696-696             V491 697-697             V492 698-698           
   V493 699-699             V494 700-700             V495 701-701           
   V496 702-702             V497 703-703             V498 704-704           
   V499 705-705             V500 706-706             V501 707-707           
   V502 708-708             V503 709-709             V504 710-710           
   V505 711-711             V506 712-712             V507 713-713           
   V508 714-714             V509 715-715             V510 716-716           
   V511 717-717             V512 718-718             V513 719-719           
   V514 720-720             V515 721-721             V516 722-722           
   V517 723-723             V518 724-724             V519 725-725           
   V520 726-726             V521 727-727             V522 728-728           
   V523 729-729             V524 730-730             V525 731-731           
   V526 732-732             V527 733-733             V528 734-734           
   V529 735-735             V530 736-736             V531 737-738           
   V532 739-739             V533 740-740             V534 741-741           
   V535 742-742             V536 743-743             V537 744-744           
   V538 745-745             V539 746-751             V540 752-752;          
                                                                            
* SAS LABEL STATEMENT;                                                      
                                                                            
LABEL                                                                       
   V1 = "ICPSR STUDY NUMBER - 6422"                                         
   V2 = "ICPSR EDITION NUMBER"                                              
   V3 = "ICPSR PART NUMBER"                                                 
   V4 = "ICPSR CASE ID"                                                     
   V5 = "NATION I (UNITED KINGDOM)"                                         
   V6 = "W2: WEIGHT SPECIAL UNITED KINGDOM (NAT)"                           
   V7 = "NATION II (GB AND NORTHERN IRELAND)"                               
   V8 = "W3: WEIGHT RESULT FROM TARGET (NAT)"                               
   V9 = "W4: WEIGHT ADJSTD TO STANDARD SIZE (NAT)"                          
   V10 = "NATION III (UNITED GERMANY)"                                      
   V11 = "W1: WEIGHT SPECIAL GERMANY (NAT)"                                 
   V12 = "W5: WEIGHT EURO 6 (NAT)"                                          
   V13 = "W6: WEIGHT EURO 10 (NAT)"                                         
   V14 = "W7: WEIGHT EURO 12 (NAT)"                                         
   V15 = "W8: WEIGHT EUROPE 12 + (NAT)"                                     
   V16 = "W3_1: WEIGHT NORWAY"                                              
   V17 = "W3_2: WEIGHT FINLAND"                                             
   V18 = "WN_1: WEIGHT SPECIAL GERMANY NAT+NON-NAT"                         
   V19 = "WN_2: WEIGHT SPECIAL UK (NAT + NON-NAT)"                          
   V20 = "WN_3: WEIGHT RESLT FR TARGET NAT+NON-NAT"                         
   V21 = "WN_4: WEIGHT ADJSTD STD SIZE NAT+NON-NAT"                         
   V22 = "WN_5: WEIGHT EURO 6 (NAT + NON-NAT)"                              
   V23 = "WN_6: WEIGHT EURO 10 (NAT + NON-NAT)"                             
   V24 = "WN_7: WEIGHT EURO 12 (NAT + NON-NAT)"                             
   V25 = "WN_8: WEIGHT EUROPE 12 + (NAT + NON-NAT)"                         
   V26 = "WO_1: WEIGHT SPECIAL GER NAT+NON-NAT+OVR"                         
   V27 = "WO_2: WEIGHT SPECIAL UK NAT+NON-NAT+OVER"                         
   V28 = "WO_3: WEIGHT RSLT FR TGT NAT+NON-NAT+OVR"                         
   V29 = "WO_4: WEIGHT ADJ STD SIZ NAT+NONNAT+OVER"                         
   V30 = "WO_5: WEIGHT EURO 6 (NAT+NON-NAT+OVER)"                           
   V31 = "WO_6: WEIGHT EURO 10 (NAT+NON-NAT+OVER)"                          
   V32 = "WO_7: WEIGHT EURO 12 (NAT+NON-NAT+OVER)"                          
   V33 = "WO_8: WEIGHT EUROPE 12+ NAT+NON-NAT+OVER"                         
   V34 = "Q1A: ELECTORAL REGISTER"                                          
   V35 = "Q1B: NATIONALITY"                                                 
   V36 = "Q2: LIFE SATISFACTION"                                            
   V37 = "Q3: DEMOCRACY SATISFACTION"                                       
   V38 = "Q4: POLITICAL DISCUSSION - FREQUENCY"                             
   V39 = "Q5: POLITCL DISCUSSION - CONVNCE FRIENDS"                         
   V40 = "Q6: EVER SEEN OR HEARD OF THE NAME X"                             
   V41 = "Q8: NAME X PLACE ASSOCIATION"                                     
   V42 = "Q10A: NAME X COMMON OR PRODUCT OF Q9 1ST"                         
   V43 = "Q10B: NAME X COMMON OR PRODUCT OF Q9 2ND"                         
   V44 = "Q10C: NAME X COMMON OR PRODUCT OF Q9 3RD"                         
   V45 = "Q10D: NAME X COMMON OR PRODUCT OF Q9 4TH"                         
   V46 = "Q10E: NAME X COMMON OR PRODUCT OF Q9 5TH"                         
   V47 = "Q11: HEARD OF NAME X CHEESE"                                      
   V48 = "Q12: CHEESE X PLACE ASSOCIATION"                                  
   V49 = "Q14A: CHEESE X COMMON/PRODUCT OF Q13 1ST"                         
   V50 = "Q14B: CHEESE X COMMON/PRODUCT OF Q13 2ND"                         
   V51 = "Q14C: CHEESE X COMMON/PRODUCT OF Q13 3RD"                         
   V52 = "Q14D: CHEESE X COMMON/PRODUCT OF Q13 4TH"                         
   V53 = "Q14E: CHEESE X COMMON/PRODUCT OF Q13 5TH"                         
   V54 = "Q15_1: HH CONSUMPTION FREQ CHEESE X"                              
   V55 = "Q15_2: HH CONSUMPTION FREQ ANY CHEESE"                            
   V56 = "Q16_1: TELEVISION USE - NEWS"                                     
   V57 = "Q16_2: DAILY NEWSPAPER USE - NEWS"                                
   V58 = "Q16_3: RADIO USE - NEWS"                                          
   V59 = "Q17: INTEREST IN EUROPEAN POLITICS"                               
   V60 = "Q18: EC KNOWLEDGE IN GENERAL"                                     
   V61 = "Q19: EC MEMBERSHIP - GOOD/BAD"                                    
   V62 = "Q20: EC MEMBERSHIP - COUNTRY BENEFIT"                             
   V63 = "Q21: EUROP UNIFICATION SPEED - NOWADAYS"                          
   V64 = "Q22: EUROP UNIFICATION SPEED - PREFERNCE"                         
   V65 = "Q23: EUROPEAN GOVERNMENT - FOR/AGAINST"                           
   V66 = 'Q24_1: EC COMMON POLICY DEF/SECURITY&DEF'                         
   V67 = "Q24_2: EC COMMON POLICY ENVIRNMNT PROTEC"                         
   V68 = "Q24_3: EC COMMON POLICY CURRENCY"                                 
   V69 = "Q24_4: EC COMMON POLICY COOP THIRD WORLD"                         
   V70 = "Q24_5: EC COMMON POLICY HEALTH & WELFARE"                         
   V71 = "Q24_6: EC COMMON POLICY EDUCATION"                                
   V72 = "Q24_7: EC COMMON POLICY RULES FOR PRESS"                          
   V73 = "Q24_8: EC COMMON POLICY SCIENTIFIC RES"                           
   V74 = "Q24_9: EC COMMON POLICY RATES OF VAT"                             
   V75 = "Q24_10: EC COMMON POLICY FOREIGN POLICY"                          
   V76 = "Q24_11: EC COMMON POLICY WORKERS BOARDS"                          
   V77 = "Q24_12: EC COMMON POLICY INDUSTRL POLICY"                         
   V78 = "Q24_13: EC COMMON POLICY CULTURAL POLICY"                         
   V79 = "Q24_14: EC COMMON POLICY IMMIGRAT POLICY"                         
   V80 = "Q24_15: EC COMMON POLICY POLITICL ASYLUM"                         
   V81 = "Q24_16: EC COMMON POLICY WORKER SAFETY"                           
   V82 = "Q24_17: EC COMMON POLICY UNEMPLOY/FIGHT"                          
   V83 = "Q24_18: EC COMMON POLICY FIGHT AG DRUGS"                          
   V84 = "Q25: EC DEMOCRACY SATISFACTION"                                   
   V85 = "Q26: EC PRESIDENCY GREECE - HEARD"                                
   V86 = "Q27: EC PRESIDENCY GREECE - IMPORTANCE"                           
   V87 = "Q28_1: MAASTR TREATY: SINGLE CURRENCY"                            
   V88 = "Q28_2: MAASTR TREATY: CENTRAL BANK"                               
   V89 = "Q28_3: MAASTR TREATY: FOREIGN POLICY"                             
   V90 = "Q28_4: MAASTR TREATY: DEFENCE POLICY"                             
   V91 = "Q28_5: MAASTR TREATY: EP MAJORITY"                                
   V92 = "Q28_6: MAASTR TREATY: EP EQUAL RIGHTS"                            
   V93 = "Q28_7: MAASTR TREATY: EC CITZEN LOC VOTE"                         
   V94 = "Q28_8: MAASTR TREATY: EC CITZEN EUR VOTE"                         
   V95 = "Q28_9: MAASTR TREATY: EC CITZEN LOC CAND"                         
   V96 = "Q28_10: MAASTR TREATY: EC CTZEN EUR CAND"                         
   V97 = "Q28_11: MAASTR TREATY: EUROPEAN GOVRNMNT"                         
   V98 = "Q28_12: MAASTR TREATY: EC RESPONSIBILITY"                         
   V99 = "Q29: EC SINGLE MARKET - HOPEFUL/FEARFUL"                          
   V100 = "Q30: WHITE PAPER: HEARD OF"                                      
   V101 = "Q31: WHITE PAPER: POSITIVE/NO EFFECT"                            
   V102 = "Q32: EURO PARLIAMENT: HEARD OF"                                  
   V103 = "Q33: EURO ELECTION DATE: KNOW/NOT"                               
   V104 = "Q34: ELECTORAL PARTICIPATION EUROP PARL"                         
   V105 = "Q35: NOT VOTE EURO: MAIN NEG REASON"                             
   V106 = "Q36_1: EURO ELECTION - MOST IMPORTANT"                           
   V107 = "Q36_2: EURO ELECTION - NEXT MOST IMPORT"                         
   V108 = "Q37: VOTE INTENTION EUROP PARL (SEE DOC)"                        
   V109 = "Q38: DOMESTIC/FOREIGN ISSUES"                                    
   V110 = "Q39: EUROP PARLIAMENT VOTE - INFLUENCE"                          
   V111 = "Q40: EURO PARLIAMENT: PREFERRED ROLE"                            
   V112 = "Q41: WOMEN: BENEFIT OF EC POLICIES"                              
   V113 = "Q42_01: BENEFIT YES - EQUALITY LEGISLTN"                         
   V114 = "Q42_02: BENEFIT YES - EQUAL TREATMNT/PAY"                        
   V115 = "Q42_03: BENEFIT YES - MATERNITY LEAVE"                           
   V116 = "Q42_04: BENEFIT YES - SELF-EMPLOYED/PT"                          
   V117 = "Q42_05: BENEFIT YES - WORK HEALTH/SAFETY"                        
   V118 = "Q42_06: BENEFIT YES - STUDENT EXCHANGE"                          
   V119 = "Q42_07: BENEFIT YES - TRAINING SCHEMES"                          
   V120 = "Q42_08: BENEFIT YES - OWN BUSINESS"                              
   V121 = "Q42_09: BENEFIT YES - JOB CREATION POLCY"                        
   V122 = "Q42_10: BENEFIT YES - WOMEN IN SOCIETY"                          
   V123 = "Q42_11: BENEFIT YES - JUGGLE WORK/FAMILY"                        
   V124 = "Q42_12: BENEFIT YES - AS EURO CITIZEN"                           
   V125 = "Q42_13: BENEFIT YES - OTHER"                                     
   V126 = "Q42_14: BENEFIT YES - DK"                                        
   V127 = "Q43_01: BENEFIT NO - NOT DOING ANYTHING"                         
   V128 = "Q43_02: BENEFIT NO - DONT HAVE DETAILS"                          
   V129 = "Q43_03: BENEFIT NO - POLICIES TOO REMOTE"                        
   V130 = "Q43_04: BENEFIT NO - OTHER POLICIES"                             
   V131 = "Q43_05: BENEFIT NO - OTHER WOMEN NOT I"                          
   V132 = "Q43_06: BENEFIT NO - DONT GET EQUAL PAY"                         
   V133 = "Q43_07: BENEFIT NO - HASNT CHANGED IDEAS"                        
   V134 = "Q43_08: BENEFIT NO - NO HELP FIGHTING"                           
   V135 = "Q43_09: BENEFIT NO - REDUCES BENEFITS"                           
   V136 = "Q43_10: BENEFIT NO - OTHERS"                                     
   V137 = "Q43_11: BENEFIT NO - DK"                                         
   V138 = "Q44: NO CUSTOM CNTRLS BORDER CROSS SINCE"                        
   V139 = "Q45: NO CUSTOM CONTROLS HAVE HEARD"                              
   V140 = "Q46: NO CUSTM CTRLS HAVE BENEFITTED FROM"                        
   V141 = "Q47_1: NO CUSTM CTRLS LWR CNSUMER PRICES"                        
   V142 = "Q47_2: NO CUSTM CTRLS WDR CNSUMER CHOICE"                        
   V143 = "Q48_1: EUROPE 2000 -OTHER EURO EC MEMBRS"                        
   V144 = "Q48_2: EUROPE 2000 -SINGLE EUROP CURRNCY"                        
   V145 = "Q48_3: EUROPE 2000 -COMMON MILITY FORCE"                         
   V146 = "Q48_4: EUROPE 2000 -FREEDOM OF RESIDENCE"                        
   V147 = "Q49_1: HEARD OF ECU: NO, NEVER"                                  
   V148 = "Q49_2: HEARD OF ECU: YES, TELEVISION"                            
   V149 = "Q49_3: HEARD OF ECU: YES, RADIO"                                 
   V150 = "Q49_4: HEARD OF ECU: YES, NEWSPAPERS"                            
   V151 = "Q49_5: HEARD OF ECU: YES, MAGAZINES"                             
   V152 = "Q49_6: HEARD OF ECU: YES, SPEC REVIEWS"                          
   V153 = "Q49_7: HEARD OF ECU: YES, IN YOUR BANK"                          
   V154 = "Q49_8: HEARD OF ECU: YES, OTHER"                                 
   V155 = "Q50_1: ECU USE: MORTGAGE LOAN"                                   
   V156 = "Q50_2: ECU USE: BONDS OR SAVINGS BONDS"                          
   V157 = "Q50_3: ECU USE: SAVINGS TERM/NOTICE ACCT"                        
   V158 = "Q50_4: ECU USE: PAYMENTS THROUGH A BANK"                         
   V159 = "Q50_5: ECU USE: TRAVELLERS' CHEQUES"                             
   V160 = "Q50_6: ECU USE: COMMEMORATIVE MEDALS"                            
   V161 = "Q50_7: ECU USE: OTHER ANSWERS"                                   
   V162 = "Q50_8: ECU USE: NEVER USED THE ECU"                              
   V163 = "Q51: ECU USE: INTENTION TO USE"                                  
   V164 = "Q52_1: ECU USE ALREADY: PAYMENT BT BANKS"                        
   V165 = "Q52_2: ECU USE ALREADY: FOREIGN CURRENCY"                        
   V166 = "Q52_3: ECU USE ALREADY: UNIT OF ACCT"                            
   V167 = "Q52_4: ECU USE ALREADY: REAL CURRENCY"                           
   V168 = "Q53_1: ECU INFO: HOW TO USE"                                     
   V169 = "Q53_2: ECU INFO: ADVANTAGES OF USING IT"                         
   V170 = "Q53_3: ECU INFO: HOW USED IN THE FUTURE"                         
   V171 = "Q53_4: ECU INFO: NOT WANT TO KNOW MORE"                          
   V172 = "Q53_5: ECU INFO: DK"                                             
   V173 = "Q54_1: ECU IMPORT: SIMPLER FIN TRANSACT"                         
   V174 = "Q54_2: ECU IMPORT: STABLE ECONOMIES"                             
   V175 = "Q54_3: ECU IMPORT: LOSS OF NATL IDENTS"                          
   V176 = "Q54_4: ECU IMPORT: FACE INTL COMPETITION"                        
   V177 = "Q54_5: ECU IMPORT: EASIER FOR COMPANIES"                         
   V178 = "Q54_6: ECU IMPORT: KEEP PURCHASING POWER"                        
   V179 = "Q55: ECU: ADV/DISADV IN PRESENT ECONOMY"                         
   V180 = "Q56: ECU: ADV/DISADV OUR COUNTRY ECONOMY"                        
   V181 = "Q57: ECU: FAVOR/OPPOSE ADOPTION"                                 
   V182 = "Q58: LABELS HEARD: STANDARDS COMPLIANCE"                         
   V183 = "Q59: EVER SEEN THIS LABEL"                                       
   V184 = "Q60_1: NONFOOD PROD - MOST INTO ACCOUNT"                         
   V185 = "Q60_2C01: NONFOOD ALSO: PRICE"                                   
   V186 = "Q60_2C02: NONFOOD ALSO: QUALITY"                                 
   V187 = "Q60_2C03: NONFOOD ALSO: BRAND NAME"                              
   V188 = "Q60_2C04: NONFOOD ALSO: COUNTRY OF MANF"                         
   V189 = "Q60_2C05: NONFOOD ALSO: PRESENTATION"                            
   V190 = "Q60_2C06: NONFOOD ALSO: PROD KNOWLEDGE"                          
   V191 = "Q60_2C07: NONFOOD ALSO: QUALITY LABEL"                           
   V192 = "Q60_2C08: NONFOOD ALSO: SOMETHING ELSE"                          
   V193 = "Q60_2C09: NONFOOD ALSO: NONE OF THESE"                           
   V194 = "Q60_2C10: NONFOOD ALSO: DK"                                      
   V195 = "Q61_1: QUALITY PROD: MORE EXPENSIVE"                             
   V196 = "Q61_2: QUALITY PROD: LUXURY"                                     
   V197 = "Q61_3: QUALITY PROD: INNOVATIVE"                                 
   V198 = "Q61_4: QUALITY PROD: SPECIAL FEATURES"                           
   V199 = "Q61_5: QUALITY PROD: HIGH PERFORMANCE"                           
   V200 = "Q62_1: COUNTRY OF ORIGIN QUAL: GERMANY"                          
   V201 = "Q62_2: COUNTRY OF ORIGIN QUAL: SPAIN"                            
   V202 = "Q62_3 COUNTRY OF ORIGIN QUAL: FRANCE"                            
   V203 = "Q62_4 COUNTRY OF ORIGIN QUAL: ITALY"                             
   V204 = "Q62_5 COUNTRY OF ORIGIN QUAL: UK"                                
   V205 = "Q62_6 COUNTRY OF ORIGIN QUAL: EC"                                
   V206 = "Q62_7 COUNTRY OF ORIGIN QUAL: USA"                               
   V207 = "Q62_8 COUNTRY OF ORIGIN QUAL: JAPAN"                             
   V208 = "Q63: MOTHERTONGUE OF RESP - SEE DOCUMNT"                         
   V209 = "Q63R: MOTHERTONGUE-Q63 RECODED-SEE DOC"                          
   V210 = "Q64_01: LANGUAGE LEARNED DANISH"                                 
   V211 = "Q64_02: LANGUAGE LEARNED GERMAN"                                 
   V212 = "Q64_03: LANGUAGE LEARNED FRENCH"                                 
   V213 = "Q64_04: LANGUAGE LEARNED ITALIAN"                                
   V214 = "Q64_05: LANGUAGE LEARNED DUTCH"                                  
   V215 = "Q64_06: LANGUAGE LEARNED ENGLISH"                                
   V216 = "Q64_07: LANGUAGE LEARNED SPANISH"                                
   V217 = "Q64_08: LANGUAGE LEARNED PORTUGUESE"                             
   V218 = "Q64_09: LANGUAGE LEARNED GREEK"                                  
   V219 = "Q64_10: LANGUAGE LEARNED OTHER"                                  
   V220 = "Q64_11: LANGUAGE LEARNED NONE"                                   
   V221 = "Q64_12: LANGUAGE LEARNED DK"                                     
   V222 = "Q65_01: LANGUAGE SPOKEN DANISH"                                  
   V223 = "Q65_02: LANGUAGE SPOKEN GERMAN"                                  
   V224 = "Q65_03: LANGUAGE SPOKEN FRENCH"                                  
   V225 = "Q65_04: LANGUAGE SPOKEN ITALIAN"                                 
   V226 = "Q65_05: LANGUAGE SPOKEN DUTCH"                                   
   V227 = "Q65_06: LANGUAGE SPOKEN ENGLISH"                                 
   V228 = "Q65_07: LANGUAGE SPOKEN SPANISH"                                 
   V229 = "Q65_08: LANGUAGE SPOKEN PORTUGUESE"                              
   V230 = "Q65_09: LANGUAGE SPOKEN GREEK"                                   
   V231 = "Q65_10: LANGUAGE SPOKEN OTHER"                                   
   V232 = "Q65_11: LANGUAGE SPOKEN NONE"                                    
   V233 = "Q65_12: LANGUAGE SPOKEN DK"                                      
   V234 = "Q66_01: LANGUAGE AT HOME DANISH"                                 
   V235 = "Q66_02: LANGUAGE AT HOME GERMAN"                                 
   V236 = "Q66_03: LANGUAGE AT HOME FRENCH"                                 
   V237 = "Q66_04: LANGUAGE AT HOME ITALIAN"                                
   V238 = "Q66_05: LANGUAGE AT HOME DUTCH"                                  
   V239 = "Q66_06: LANGUAGE AT HOME ENGLISH"                                
   V240 = "Q66_07: LANGUAGE AT HOME SPANISH"                                
   V241 = "Q66_08: LANGUAGE AT HOME PORTUGUESE"                             
   V242 = "Q66_09: LANGUAGE AT HOME GREEK"                                  
   V243 = "Q66_10: LANGUAGE AT HOME OTHER"                                  
   V244 = "Q66_11: LANGUAGE AT HOME NONE"                                   
   V245 = "Q66_12: LANGUAGE AT HOME DK"                                     
   V246 = "Q67_1: SMOKING HABITS CIGARETTES MANUFCT"                        
   V247 = "Q67_2: SMOKING HABITS CIGARETTES ROLLOWN"                        
   V248 = "Q67_3: SMOKING HABITS CIGARS OR A PIPE"                          
   V249 = "Q67_4: SMOKING HABITS NO LONGER"                                 
   V250 = "Q67_5: SMOKING HABITS NEVER SMOKED"                              
   V251 = "Q67_6: SMOKING HABITS DONT KNOW"                                 
   V252 = "Q68: SMOKING CIGARETTES - N PER DAY"                             
   V253 = "Q69_1: GENL STOP/REDUCE: DOCTOR TELLS"                           
   V254 = "Q69_2: GENL STOP/REDUCE: RELATIVE DIES"                          
   V255 = "Q69_3: GENL STOP/REDUCE: PRICE INCREASES"                        
   V256 = "Q69_4: GENL STOP/REDUC: SCIENTIFIC PROOF"                        
   V257 = "Q69_5: GENL STOP/REDUCE: ADVERTISING"                            
   V258 = "Q69_6: GENL STOP/REDUC: SPECIAL PROGRAMS"                        
   V259 = "Q70_1: RESP STOP/REDUCE: DONT WANT TO"                           
   V260 = "Q70_2: RESP STOP/REDUCE: DOCTOR TELLS"                           
   V261 = "Q70_3: RESP STOP/REDUCE: RELATIVE DIED"                          
   V262 = "Q70_4: RESP STOP/REDUCE: PRICE INCREASES"                        
   V263 = "Q70_5: RESP STOP/REDUC: SCIENTIFIC PROOF"                        
   V264 = "Q70_6: RESP STOP/REDUCE: ADVERTISING"                            
   V265 = "Q70_7: RESP STOP/REDUC: SPECIAL PROGRAMS"                        
   V266 = "Q71_1: A/D: IF NO ADVERTISING SMOKE LESS"                        
   V267 = "Q71_2: A/D: RIGHT TO WORK IN SMOKE-FREE"                         
   V268 = "Q71_3: A/D: NOT REGULATE CIG ADVERTISING"                        
   V269 = "Q71_4: A/D: SHOULD INCR PRICE CIGARETTES"                        
   V270 = "Q71_5: A/D: NO RESTRICT SMOKING PUBLIC"                          
   V271 = "Q71_6: A/D: SMOKING CAUSES CANCER/DEATH"                         
   V272 = "Q72: SMOKING OPINION: PUBLIC REGULATION"                         
   V273 = "Q73: SEEN/HEARD ABOUT GIVING BLOOD"                              
   V274 = "Q74_01: GIVE BLOOD HEARD: TELEVISION"                            
   V275 = "Q74_02: GIVE BLOOD HEARD: RADIO"                                 
   V276 = "Q74_03: GIVE BLOOD HEARD: NEWSPAPERS"                            
   V277 = "Q74_04: GIVE BLOOD HEARD: MAGAZINES"                             
   V278 = "Q74_05: GIVE BLOOD HEARD: POSTERS"                               
   V279 = "Q74_06: GIVE BLOOD HEARD: BROCHURES"                             
   V280 = "Q74_07: GIVE BLOOD HEARD: DISCUSSIONS"                           
   V281 = "Q74_08: GIVE BLOOD HEARD: WORKPL/SCHOOL"                         
   V282 = "Q74_09: GIVE BLOOD HEARD: DONATION BUS"                          
   V283 = "Q74_10: GIVE BLOOD HEARD: ELSEWHERE"                             
   V284 = "Q74_11: GIVE BLOOD HEARD: CAN'T REMEMBER"                        
   V285 = "Q75_1: PLASMA INSTEAD OF BLOOD"                                  
   V286 = "Q75_2: CAN RCV BLOOD FROM ANYBODY ELSE"                          
   V287 = "Q75_3: PLASMA IS COMPONENT OF BLOOD"                             
   V288 = "Q75_4: ONCE CLLCTD, BLOOD CANT BE STORED"                        
   V289 = "Q75_5: BLOOD COMPONENTS CAN BE MANUFCTRD"                        
   V290 = "Q75_6: HAEMOPHILIA CLOTS IMMEDIATELY"                            
   V291 = "Q75_7: GVNG BLOOD REDCES AMT BLOOD FREVR"                        
   V292 = "Q75_8: GVNG BLOOD REDUCES HI BLOOD PRESS"                        
   V293 = "Q75_9: BLOOD DONATNS TESTED FOR DISEASES"                        
   V294 = "Q75_10: DIFFERENT BLOOD GROUPS EXIST"                            
   V295 = "Q76: PLASMA: HOW OFTEN CAN GIVE"                                 
   V296 = "Q77: PLASMA: HAVE EVER GIVEN"                                    
   V297 = "Q78: PLASMA: HOW OFTEN HAVE GIVEN"                               
   V298 = "Q79: PLASMA: LAST TIME GAVE"                                     
   V299 = "Q80: PLASMA: HAVE CONSIDERED GIVING"                             
   V300 = "Q81: BLOOD: HOW OFTEN CAN GIVE"                                  
   V301 = "Q82: BLOOD: HAVE EVER GIVEN"                                     
   V302 = "Q83: BLOOD: HOW OFTEN HAVE GIVEN"                                
   V303 = "Q84: BLOOD: LAST TIME GAVE"                                      
   V304 = "Q85_01: NOT GIVE BLOOD 3YR DOCTOR/HEALTH"                        
   V305 = "Q85_02: NOT GIVE BLOOD 3YR NO TIME"                              
   V306 = "Q85_03: NOT GIVE BLOOD 3YR WHERE TO GO"                          
   V307 = "Q85_04: NOT GIVE BLOOD 3YR BAD EXPRIENCE"                        
   V308 = "Q85_05: NOT GIVE BLOOD 3YR INFCTD NEEDLE"                        
   V309 = "Q85_06: NOT GIVE BLOOD 3YR GET AIDS"                             
   V310 = "Q85_07: NOT GIVE BLOOD 3YR MAKE YOU WEAK"                        
   V311 = "Q85_08: NOT GIVE BLOOD 3YR IMPROPER USE"                         
   V312 = "Q85_09: NOT GIVE BLOOD 3YR AFRD NEEDLES"                         
   V313 = "Q85_10: NOT GIVE BLOOD 3YR DNT LIKE IDEA"                        
   V314 = "Q85_11: NOT GIVE BLOOD 3YR RELGIOUS REAS"                        
   V315 = "Q85_12: NOT GIVE BLOOD 3YR ATTMPT REJCTD"                        
   V316 = "Q85_13: NOT GIVE BLOOD 3YR OTHER"                                
   V317 = "Q85_14: NOT GIVE BLOOD 3YR DK"                                   
   V318 = "Q86: NEVER GIVEN BLOOD: HAVE CONSIDERED"                         
   V319 = "Q87_01: NEVER GIVEN BLOOD DOCTOR/HEALTH"                         
   V320 = "Q87_02: NEVER GIVEN BLOOD NO TIME"                               
   V321 = "Q87_03: NEVER GIVEN BLOOD WHERE TO GO"                           
   V322 = "Q87_04: NEVER GIVEN BLOOD BAD EXPERIENCE"                        
   V323 = "Q87_05: NEVR GIVEN BLOOD INFECTED NEEDLE"                        
   V324 = "Q87_06: NEVR GIVEN BLOOD AFRAID GET AIDS"                        
   V325 = "Q87_07: NEVER GIVEN BLOOD WILL MAKE WEAK"                        
   V326 = "Q87_08: NEVER GIVEN BLOOD IMPROPER USE"                          
   V327 = "Q87_09: NEVER GIVEN BLOOD AFRD NEEDLES"                          
   V328 = "Q87_10: NEVER GIVEN BLOOD DNT LIKE IDEA"                         
   V329 = "Q87_11: NEVER GIVEN BLOOD RLIGIOUS REAS"                         
   V330 = "Q87_12: NEVER GIVEN BLOOD ATTMPT REJCTD"                         
   V331 = "Q87_13: NEVER GIVEN BLOOD OTHER"                                 
   V332 = "Q87_14: NEVER GIVEN BLOOD DK"                                    
   V333 = "Q88: EVER HAD BLOOD TRANSFUSION"                                 
   V334 = "Q89_1: KNOW SOMONE BLOOD TRANSF REL/FRND"                        
   V335 = "Q89_2: KNOW SMONE BLOOD TRANSF SMBDY ELS"                        
   V336 = "Q89_3: KNOW SOMEONE BLOOD TRANSF NOBODY"                         
   V337 = "Q90_1: WHY/WHEN GIVE BLOOD OPERATION"                            
   V338 = "Q90_2: WHY/WHEN GIVE BLOOD RIGHT THING"                          
   V339 = "Q90_3: WHY/WHEN GIVE BLOOD REL/FRD NEEDS"                        
   V340 = "Q90_4: WHY/WHEN GIVE BLOOD REL/FRND HAD"                         
   V341 = "Q90_5: WHY/WHEN GIVE BLOOD MAJR DISASTER"                        
   V342 = "Q90_6: WHY/WHEN GIVE BLOOD RARE BLOOD"                           
   V343 = "Q90_7: WHY/WHEN GIVE BLOOD OTHERS"                               
   V344 = "Q90_8: WHY/WHEN GIVE BLOOD DK"                                   
   V345 = "Q91_01: WHY NOT GIVE BLOOD: DOCTR/HEALTH"                        
   V346 = "Q91_02: WHY NOT GIVE BLOOD: NO TIME"                             
   V347 = "Q91_03: WHY NOT GIVE BLOOD: WHERE TO GO"                         
   V348 = "Q91_04: WHY NOT GIVE BLOOD: BAD EXPRIENC"                        
   V349 = "Q91_05: WHY NOT GIVE BLOOD: INFCTD NEEDL"                        
   V350 = "Q91_06: WHY NOT GIVE BLOOD: GETTING AIDS"                        
   V351 = "Q91_07: WHY NOT GIVE BLOOD: MAKE WEAK"                           
   V352 = "Q91_08: WHY NOT GIVE BLOOD: IMPROPER USE"                        
   V353 = "Q91_09: WHY NOT GIVE BLOOD: AFRD NEEDLES"                        
   V354 = "Q91_10: WHY NOT GIVE BLOOD: DNT LKE IDEA"                        
   V355 = "Q91_11: WHY NOT GIVE BLOOD: RELIG REASON"                        
   V356 = "Q91_12: WHY NOT GIVE BLOOD: ATTMPT RJCTD"                        
   V357 = "Q91_13: WHY NOT GIVE BLOOD: OTHER"                               
   V358 = "Q91_14: WHY NOT GIVE BLOOD: DK"                                  
   V359 = "Q92: FUTURE NEED OF BLOOD: SOURCE"                               
   V360 = "Q93: FREELY DONATED BLOOD COST OPINION"                          
   V361 = "Q94_1: BLOOD DONATION REWARD: NOTHING"                           
   V362 = "Q94_2: BLOOD DONATION REWARD: TOKEN"                             
   V363 = "Q94_3: BLOOD DONATION REWARD: SMALL GIFT"                        
   V364 = "Q94_4: BLOOD DONAT REWRD: DRNG WRKNG HRS"                        
   V365 = "Q94_5: BLOOD DONAT REWARD: DAYS OFF WORK"                        
   V366 = "Q94_6: BLOOD DONAT REWRD: TIME FROM WORK"                        
   V367 = "Q94_7: BLOOD DONAT REWARD: TIME & EFFORT"                        
   V368 = "Q94_8: BLOOD DONATION REWARD: DK"                                
   V369 = "Q95_1: PLASMA DONATION REWARD: NOTHING"                          
   V370 = "Q95_2: PLASMA DONATION REWARD: TOKEN"                            
   V371 = "Q95_3: PLASMA DONATN REWARD: SMALL GIFT"                         
   V372 = "Q95_4: PLSMA DONAT REWRD: DRNG WRKNG HRS"                        
   V373 = "Q95_5: PLASMA DONAT REWRD: DAYS OFF WORK"                        
   V374 = "Q95_6: PLSMA DONAT REWRD: TIME FROM WORK"                        
   V375 = "Q95_7: PLASMA DONAT REWRD: TIME & EFFORT"                        
   V376 = "Q95_8: PLASMA DONATION REWARD: DK"                               
   V377 = "Q96: VOLUNTARY FREE DONATION PLAN HEARD"                         
   V378 = "Q97: VOLUNTRY FREE DONATN PLAN IMPORTNCE"                        
   V379 = "Q98: DONATION PLAN JOINT/SEPARATE EFFORT"                        
   V380 = "Q99: BLOOD TRANSFUSN SAFETY VS 10 YR AGO"                        
   V381 = "Q100: SAFEST BLOOD FROM OUR COUNTRY"                             
   V382 = "Q101: SOURCE OF SAFEST BLOOD PRODUCTS"                           
   V383 = "Q102_1: AIDS, AFRAID OF BLOOD/BLOOD PROD"                        
   V384 = "Q102_2: AIDS, AFRAID OF GIVING BLOOD"                            
   V385 = "Q102_3: AIDS, AFRAID OF RECEIVING BLOOD"                         
   V386 = "Q102_4: AIDS, AFRAID OF INJECTION"                               
   V387 = "Q102_5: AIDS, AFRAID OF OPERATION"                               
   V388 = "Q103_1: AIDS A/D PEOPLE TALK TOO MUCH"                           
   V389 = "Q103_2: AIDS A/D MORE INFO ABOUT AIDS"                           
   V390 = "Q103_3: AIDS A/D TOO MUCH SPENT AIDS RES"                        
   V391 = "Q103_4: AIDS A/D WILL NEVER CATCH AIDS"                          
   V392 = "Q104_1: WAYS CATCHING AIDS MEAL PREPARED"                        
   V393 = "Q104_2: WAYS CATCHING AIDS OBJCTS TOUCHD"                        
   V394 = "Q104_3: WAYS CATCHING AIDS GLASS USED"                           
   V395 = "Q104_4: WAYS CATCHING AIDS SAME TOILET"                          
   V396 = "Q104_5: WAYS CATCHING AIDS INJECT NEEDLE"                        
   V397 = "Q104_6: WAYS CATCHING AIDS RCVING BLOOD"                         
   V398 = "Q104_7: WAYS CATCHING AIDS SHAKING HANDS"                        
   V399 = "Q104_8: WAYS CATCHING AIDS KISSING MOUTH"                        
   V400 = "Q104_9: WAYS CATCHING AIDS HAVING SEX"                           
   V401 = "Q104_10: WAYS CATCHING AIDS CARE FOR"                            
   V402 = "Q104_11: WAYS CATCHING AIDS GIVING BLOOD"                        
   V403 = "Q104_12: WAYS CATCHING AIDS GIVNG PLASMA"                        
   V404 = "Q105_1: CANCER RISK: RED MEAT BEEF/LAMB"                         
   V405 = "Q105_2: CANCER RISK: POULTRY"                                    
   V406 = "Q105_3: CANCER RISK: FISH"                                       
   V407 = "Q105_4: CANCER RISK: FRESH FRUIT"                                
   V408 = "Q105_5: CANCER RISK: GREEN VEGETABLES"                           
   V409 = "Q105_6: CANCER RISK: SALT"                                       
   V410 = "Q105_7: CANCER RISK: WHITE BREAD"                                
   V411 = "Q105_8: CANCER RISK: BROWN/WHLMEAL BREAD"                        
   V412 = "Q105_9: CANCER RISK: HIGH FIBRE PRODUCTS"                        
   V413 = "Q105_10: CANCER RISK: DAIRY PRODUCTS"                            
   V414 = "Q105_11: CANCER RISK: EGGS"                                      
   V415 = "Q105_12: CANCER RISK: ALCOHOLIC DRINKS"                          
   V416 = "Q105_13: CANCER RISK: SUGAR"                                     
   V417 = "D1AA: SELF RATHER LEFT OR RIGHT POLITICS"                        
   V418 = "D1A1B_1: SELF ON LEFT/RIGHT SCALE"                               
   V419 = "D1A2B_1: SELF ON LEFT/RIGHT SCALE"                               
   V420 = "D1B_1: YOUR VIEWS LEFT/RIGHT SCALE"                              
   V421 = "D2: PARTY ATTACHMENT"                                            
   V422 = "D4: VOTE INTENTION (SEE DOCUMENT)"                               
   V423 = "D5: VOTING BEHAV LAST NAT ELEC (SEE DOC)"                        
   V424 = "D6_1: TRADE UNION MEMBER - RESPONDENT"                           
   V425 = "D6_2: TRADE UNION MEMBER - ELSE IN HH"                           
   V426 = "D7: MARITAL STATUS"                                              
   V427 = "D8: AGE EDUCATION"                                               
   V428 = "D9A: GENERAL EDUCATION - MONTHS"                                 
   V429 = "D9B: PROFESSIONAL EDUCATION - MONTHS"                            
   V430 = "D10: SEX"                                                        
   V431 = "D11: AGE EXACT"                                                  
   V432 = "D11: AGE RECODED - 4 GROUPS"                                     
   V433 = "D11: AGE RECODED - 6 GROUPS"                                     
   V434 = "D12: HOUSEHOLD SIZE"                                             
   V435 = "D13: HOUSEHOLD CHILDREN UNDER 15"                                
   V436 = "D14_01: IN HH: A COLOUR TV SET"                                  
   V437 = "D14_02: IN HH: A VIDEO RECORDER"                                 
   V438 = "D14_03: IN HH: A VIDEO CAMERA"                                   
   V439 = "D14_04: IN HH: A RADIO-CLOCK"                                    
   V440 = "D14_05: IN HH: A PC/HOME COMPUTER"                               
   V441 = "D14_06: IN HH: A STILL CAMERA"                                   
   V442 = "D14_07: IN HH: AN ELECTRIC DRILL"                                
   V443 = "D14_08: IN HH: ELECTRIC DEEP FAT FRYER"                          
   V444 = "D14_09: IN HH: 2 OR MORE CARS"                                   
   V445 = "D14_10: IN HH: 2ND HOME OR HOLIDAY FLAT"                         
   V446 = "D15A: OCCUPATION OF RESPONDENT"                                  
   V447 = "D15B: OCCUPATION OF RESPONDNT - LAST JOB"                        
   V448 = "D16: OCCUPATION - HOURS WORK PER WEEK"                           
   V449 = "D17: OCCUPATION - RESP SUPERVISOR FOR"                           
   V450 = "D18: OCCUPATION - SECTOR"                                        
   V451 = "D19A: HH MAINLY LOOKING AFTER HOME"                              
   V452 = "D19B: HH MAINLY INCOME (HEAD OF HH)"                             
   V453 = "D20: AGE EDUCATION HEAD OF HH"                                   
   V454 = "D21A: OCCUPATION HEAD OF HOUSEHOLD"                              
   V455 = "D21B: OCCUPATION HEAD OF HH - LAST JOB"                          
   V456 = "D22: OCCUPATION HEAD OF HH - SUPERVISOR"                         
   V457 = "D23: SOCIAL CLASS SUBJECTIVE"                                    
   V458 = "D24: TYPE OWNERSHIP OF DWELLING"                                 
   V459 = "D25: TYPE OF COMMUNITY"                                          
   V460 = "D26: RELIGION - DENOMINATION"                                    
   V461 = "D27: RELIGION - CHURCH ATTENDANCE"                               
   V462 = "D28: RELIGIOSITY"                                                
   V463 = "D29: HH MONTH INCOME"                                            
   V464 = "D29_C: HH MONTH INCOME - HARMONISED"                             
   V465 = "P1_1: DATE OF INTERVIEW - DAY"                                   
   V466 = "P1_2: DATE OF INTERVIEW - MONTH"                                 
   V467 = "P2_1: TIME OF INTERVIEW - HOUR"                                  
   V468 = "P2_2: TIME OF INTERVIEW - MINUTES"                               
   V469 = "P3_1: DURATION OF INTERVIEW - MINUTES"                           
   V470 = "P4: N OF PERSONS PRESENT DURING INTERVW"                         
   V471 = "P5: RESPONDENT COOPERATION"                                      
   V472 = "P6: SIZE OF LOCALITY"                                            
   V473 = "P7_1: REGION I (SEE DOCUMENT)"                                   
   V474 = "P7_2: REGION II (SEE DOCUMENT)"                                  
   V475 = "P12: TELEPHONE AVAILABLE IN HH"                                  
   V476 = "BEL_Q31.BIS HAVE HRD OF ECHO OFFC/FLOODS"                        
   V477 = "DEN_Q101.BIS EC TO EU NAME CHNGE ADV/DIS"                        
   V478 = "GER_Q31.BIS EC SOLVE GER ECON PROB"                              
   V479 = "GER_Q31.TER GER CONTRIB TO EC-SIZE OPIN"                         
   V480 = "GRE_Q29.BIS SINGLE MKT DAILY LIFE EFFECT"                        
   V481 = "SPA_Q39.BIS_01: EMPLOYMENT"                                      
   V482 = "SPA_Q39.BIS_02: POLITICAL ECONOMY"                               
   V483 = "SPA_Q39.BIS_03: FUTR OF THE MONTRY UNION"                        
   V484 = "SPA_Q39.BIS_04: REGIONAL POLITICS"                               
   V485 = "SPA_Q39.BIS_05: FORGN POLITICS/COM SECUR"                        
   V486 = "SPA_Q39.BIS_06: CITIZENS FREEDOM/RIGHTS"                         
   V487 = "SPA_Q39.BIS_07: THE ENVIRONMENT"                                 
   V488 = "SPA_Q39.BIS_08: CONSUMER PROTECTN/RIGHTS"                        
   V489 = "SPA_Q39.BIS_09: OTHER (SPONTANEOUS)"                             
   V490 = "SPA_Q39.BIS_10: DK"                                              
   V491 = "FRA_Q31B_1 MAASTR PROTECT FRENCH FRANC"                          
   V492 = "FRA_Q31B_2 MAASTR PROTECT FRANCE SOCIALY"                        
   V493 = "FRA_Q31B_3 MAASTR PROTECT FRANCE:AMR/JAP"                        
   V494 = "IRL_Q28.BIS: EC DEFENCE PARTICIPATION"                           
   V495 = "ITA_Q28.BIS: SINGLE CURRENCY PARTICIPA"                          
   V496 = "POR_Q31.BIS: AUS/SWE/NOR IN EC GOOD/BAD"                         
   V497 = "NOR_Q106: EES-AGREEMENT GOOD/BAD FOR NOR"                        
   V498 = "NOR_Q107: EES-AGREEMENT INDEP SOLUTION"                          
   V499 = "NOR_Q108: NOR EU MEMBERSHIP IMPORTANCE"                          
   V500 = "NOR_Q109: NOR EU MEMBERSHIP FOR/AGAINST"                         
   V501 = "NOR_Q110: NOR EU MEMBERSHIP VOTING VIEW"                         
   V502 = "NOR_Q111: NOR EU MEMBRSHIP SWE/FIN ATTIT"                        
   V503 = "NOR_Q112: NOR EU MMBRSHIP SWE/FIN REFERN"                        
   V504 = "NOR_Q113: NOR EU MEMBRSHP REFERNDM ORDER"                        
   V505 = "NOR_Q114A EU MEMBERSHIP REFRNDM PREF 1ST"                        
   V506 = "NOR_Q114B EU MEMBERSHIP REFRNDM PREF 2ND"                        
   V507 = "NOR_Q115: NOR EU MEMBERSHP SWE/FIN FIRST"                        
   V508 = "NOR_Q116: NOR EU MEMBRSHP LIFE INFLUENCE"                        
   V509 = "NOR_Q117: NOR EU MEMBERSHIP NEGOT EFFECT"                        
   V510 = "NOR_Q118A: EU INFO CONFIDENCE AGRI-ORGNS"                        
   V511 = "NOR_Q118B: EU INFO CONFIDENCE GOVERNMENT"                        
   V512 = "NOR_Q118C: EU INFO CONFIDENCE EMPLYR-ORG"                        
   V513 = "NOR_Q118D: EU INFO CONFIDENCE FISHNG-ORG"                        
   V514 = "NOR_Q118E: EU INFO CONFIDENCE NOR BRDCST"                        
   V515 = "NOR_Q118F: EU INFO CONFIDENCE NOT TO EU"                         
   V516 = "NOR_Q118G: EU INFO CONFIDENCE YES TO EU"                         
   V517 = "NOR_Q118H: EU INFO CONFIDENCE NEWSPAPER"                         
   V518 = "NOR_Q119A: EU MMBR PRO/CON ENVR/RESOURCS"                        
   V519 = "NOR_Q119B: EU MMBR PRO/CON LBR/EMPLOYMNT"                        
   V520 = "NOR_Q119C: EU MEMBRSHP PRO/CON HEALTH/SS"                        
   V521 = "NOR_Q119D: EU MMBR PRO/CON FORGN/SECURTY"                        
   V522 = "NOR_Q119E: EU MMBR PRO/CON ALCOHOL/DRUGS"                        
   V523 = "NOR_Q119F: EU MMBR PRO/CON DISTRICT PLCY"                        
   V524 = "NOR_Q119G: EU MEMBR PRO/CON GENL ECONOMY"                        
   V525 = "NOR_Q119H: EU MEMBERSHIP PRO/CON CULTURE"                        
   V526 = "NOR_Q119I: EU MMBR PRO/CON POLIT INFLNCE"                        
   V527 = "NOR_Q120: NOR EU REFERENDUM 1972 VOTE"                           
   V528 = "NOR_Q121: NOR EU MEMBERSHIP BY 2000"                             
   V529 = "NOR_Q122: NOR EU NEGOTIATION INTEREST"                           
   V530 = "C1: OPINION LEADERSHIP INDEX"                                    
   V531 = "C4: SOCIO PROFESSIONAL STATUS"                                   
   V532 = "C11: MEDIA USE (NEWS TV/RADIO/PAPERS)"                           
   V533 = "C12_2: EURO SOCIAL GRADE (ESOMAR)"                               
   V534 = "C14: RESP OCCUP SCALE (D15A RECODED)"                            
   V535 = "FILTER NAT ONLY <FINLAND & NORWAY INCL>"                         
   V536 = "FILTER NATIONAL + NON-NATIONAL"                                  
   V537 = "FILTER NATIONAL + NON-NAT + OVER SAMPLE"                         
   V538 = "FILTER NAT ONLY <FINL & NORWAY NOT INCL>"                        
   V539 = "Q04: ORIGINAL INTERVIEW NUMBER"                                  
   V540 = "Q05: SPLIT BALLOT";                                              
                                                                            
* USER-DEFINED MISSING VALUE RECODE TO SAS SYSMIS;                          
                                                                            
/*                                                                          
   IF V34 IN (0, 9) THEN V34=.;        IF V35 GE 13 OR V35=0 THEN V35=.;    
   IF V36 IN (0, 5, 9) THEN V36=.;     IF V37 IN (0, 5) THEN V37=.;         
   IF V38 IN (0, 4, 9) THEN V38=.;     IF V39 IN (0, 5, 9) THEN V39=.;      
   IF V40 IN (0, 3, 9) THEN V40=.;     IF V41 IN (0, 3, 9) THEN V41=.;      
   IF V42 IN (0, 9) THEN V42=.;        IF V43 IN (0, 9) THEN V43=.;         
   IF V44 IN (0, 9) THEN V44=.;        IF V45 IN (0, 9) THEN V45=.;         
   IF V46 IN (0, 9) THEN V46=.;        IF V47 IN (0, 3, 9) THEN V47=.;      
   IF V48 IN (0, 3, 9) THEN V48=.;     IF V49 IN (0, 9) THEN V49=.;         
   IF V50 IN (0, 9) THEN V50=.;        IF V51 IN (0, 9) THEN V51=.;         
   IF V52 IN (0, 9) THEN V52=.;        IF V53 IN (0, 9) THEN V53=.;         
   IF V54 GE 7 OR V54=0 THEN V54=.;    IF V55 GE 7 OR V55=0 THEN V55=.;     
   IF V56 IN (0, 6, 9) THEN V56=.;     IF V57 IN (0, 6, 9) THEN V57=.;      
   IF V58 IN (0, 6, 9) THEN V58=.;     IF V59 IN (0, 5) THEN V59=.;         
   IF V60 IN (0, 5) THEN V60=.;        IF V61 IN (0, 4) THEN V61=.;         
   IF V62 IN (0, 3) THEN V62=.;        IF V63 IN (0, 8, 9) THEN V63=.;      
   IF V64 IN (0, 8, 9) THEN V64=.;     IF V65 IN (0, 3, 9) THEN V65=.;      
   IF V66 IN (0, 3) THEN V66=.;        IF V67 IN (0, 3) THEN V67=.;         
   IF V68 IN (0, 3) THEN V68=.;        IF V69 IN (0, 3) THEN V69=.;         
   IF V70 IN (0, 3) THEN V70=.;        IF V71 IN (0, 3) THEN V71=.;         
   IF V72 IN (0, 3) THEN V72=.;        IF V73 IN (0, 3) THEN V73=.;         
   IF V74 IN (0, 3) THEN V74=.;        IF V75 IN (0, 3) THEN V75=.;         
   IF V76 IN (0, 3) THEN V76=.;        IF V77 IN (0, 3) THEN V77=.;         
   IF V78 IN (0, 3) THEN V78=.;        IF V79 IN (0, 3) THEN V79=.;         
   IF V80 IN (0, 3) THEN V80=.;        IF V81 IN (0, 3) THEN V81=.;         
   IF V82 IN (0, 3) THEN V82=.;        IF V83 IN (0, 3) THEN V83=.;         
   IF V84 IN (0, 5) THEN V84=.;        IF V85 IN (0, 3, 9) THEN V85=.;      
   IF V86 IN (0, 5, 9) THEN V86=.;     IF V87 IN (0, 3) THEN V87=.;         
   IF V88 IN (0, 3) THEN V88=.;        IF V89 IN (0, 3) THEN V89=.;         
   IF V90 IN (0, 3) THEN V90=.;        IF V91 IN (0, 3) THEN V91=.;         
   IF V92 IN (0, 3) THEN V92=.;        IF V93 IN (0, 3) THEN V93=.;         
   IF V94 IN (0, 3) THEN V94=.;        IF V95 IN (0, 3) THEN V95=.;         
   IF V96 IN (0, 3) THEN V96=.;        IF V97 IN (0, 3) THEN V97=.;         
   IF V98 IN (0, 3) THEN V98=.;        IF V99 IN (0, 5, 9) THEN V99=.;      
   IF V100 IN (0, 3, 9) THEN V100=.;   IF V101 IN (0, 3, 9) THEN V101=.;    
   IF V102 IN (0, 3) THEN V102=.;      IF V103 IN (0, 9) THEN V103=.;       
   IF V104 IN (0, 6, 9) THEN V104=.;   IF V105 IN (0, 10, 99) THEN V105=.;  
   IF V106 IN (0, 5, 9) THEN V106=.;   IF V107 IN (0, 5, 9) THEN V107=.;    
   IF V108 GE 90 OR V108=0 THEN V108=.;                                     
   IF V109 IN (0, 3, 9) THEN V109=.;   IF V110 IN (0, 14, 99) THEN V110=.;  
   IF V111 IN (0, 3) THEN V111=.;      IF V112 IN (0, 3, 9) THEN V112=.;    
   IF V113 IN (8, 9) THEN V113=.;      IF V114 IN (8, 9) THEN V114=.;       
   IF V115 IN (8, 9) THEN V115=.;      IF V116 IN (8, 9) THEN V116=.;       
   IF V117 IN (8, 9) THEN V117=.;      IF V118 IN (8, 9) THEN V118=.;       
   IF V119 IN (8, 9) THEN V119=.;      IF V120 IN (8, 9) THEN V120=.;       
   IF V121 IN (8, 9) THEN V121=.;      IF V122 IN (8, 9) THEN V122=.;       
   IF V123 IN (8, 9) THEN V123=.;      IF V124 IN (8, 9) THEN V124=.;       
   IF V125 IN (8, 9) THEN V125=.;      IF V126 IN (8, 9) THEN V126=.;       
   IF V127 IN (8, 9) THEN V127=.;      IF V128 IN (8, 9) THEN V128=.;       
   IF V129 IN (8, 9) THEN V129=.;      IF V130 IN (8, 9) THEN V130=.;       
   IF V131 IN (8, 9) THEN V131=.;      IF V132 IN (8, 9) THEN V132=.;       
   IF V133 IN (8, 9) THEN V133=.;      IF V134 IN (8, 9) THEN V134=.;       
   IF V135 IN (8, 9) THEN V135=.;      IF V136 IN (8, 9) THEN V136=.;       
   IF V137 IN (8, 9) THEN V137=.;      IF V138 IN (0, 4, 9) THEN V138=.;    
   IF V139 IN (0, 9) THEN V139=.;      IF V140 IN (0, 3, 9) THEN V140=.;    
   IF V141 IN (0, 3, 9) THEN V141=.;   IF V142 IN (0, 3, 9) THEN V142=.;    
   IF V143 IN (0, 3) THEN V143=.;      IF V144 IN (0, 3) THEN V144=.;       
   IF V145 IN (0, 3) THEN V145=.;      IF V146 IN (0, 3) THEN V146=.;       
   IF V147=8 THEN V147=.;              IF V148=8 THEN V148=.;               
   IF V149=8 THEN V149=.;              IF V150=8 THEN V150=.;               
   IF V151=8 THEN V151=.;              IF V152=8 THEN V152=.;               
   IF V153=8 THEN V153=.;              IF V154=8 THEN V154=.;               
   IF V155 IN (8, 9) THEN V155=.;      IF V156 IN (8, 9) THEN V156=.;       
   IF V157 IN (8, 9) THEN V157=.;      IF V158 IN (8, 9) THEN V158=.;       
   IF V159 IN (8, 9) THEN V159=.;      IF V160 IN (8, 9) THEN V160=.;       
   IF V161 IN (8, 9) THEN V161=.;      IF V162 IN (8, 9) THEN V162=.;       
   IF V163 IN (0, 5, 9) THEN V163=.;   IF V164 IN (0, 3, 9) THEN V164=.;    
   IF V165 IN (0, 3, 9) THEN V165=.;   IF V166 IN (0, 3, 9) THEN V166=.;    
   IF V167 IN (0, 3, 9) THEN V167=.;   IF V168 IN (8, 9) THEN V168=.;       
   IF V169 IN (8, 9) THEN V169=.;      IF V170 IN (8, 9) THEN V170=.;       
   IF V171 IN (8, 9) THEN V171=.;      IF V172 IN (8, 9) THEN V172=.;       
   IF V173 IN (0, 3) THEN V173=.;      IF V174 IN (0, 3) THEN V174=.;       
   IF V175 IN (0, 3) THEN V175=.;      IF V176 IN (0, 3) THEN V176=.;       
   IF V177 IN (0, 3) THEN V177=.;      IF V178 IN (0, 3) THEN V178=.;       
   IF V179 IN (0, 3, 9) THEN V179=.;   IF V180 IN (0, 3, 9) THEN V180=.;    
   IF V181 IN (0, 5) THEN V181=.;      IF V182 IN (0, 3, 9) THEN V182=.;    
   IF V183 IN (0, 3, 9) THEN V183=.;   IF V184 IN (0, 10) THEN V184=.;      
   IF V185=8 THEN V185=.;              IF V186=8 THEN V186=.;               
   IF V187=8 THEN V187=.;              IF V188=8 THEN V188=.;               
   IF V189=8 THEN V189=.;              IF V190=8 THEN V190=.;               
   IF V191=8 THEN V191=.;              IF V192=8 THEN V192=.;               
   IF V193=8 THEN V193=.;              IF V194=8 THEN V194=.;               
   IF V195 IN (0, 3) THEN V195=.;      IF V196 IN (0, 3) THEN V196=.;       
   IF V197 IN (0, 3) THEN V197=.;      IF V198 IN (0, 3) THEN V198=.;       
   IF V199 IN (0, 3) THEN V199=.;      IF V200 IN (0, 3, 9) THEN V200=.;    
   IF V201 IN (0, 3, 9) THEN V201=.;   IF V202 IN (0, 3, 9) THEN V202=.;    
   IF V203 IN (0, 3, 9) THEN V203=.;   IF V204 IN (0, 3, 9) THEN V204=.;    
   IF V205 IN (0, 3, 9) THEN V205=.;   IF V206 IN (0, 3, 9) THEN V206=.;    
   IF V207 IN (0, 3, 9) THEN V207=.;   IF V208 IN (0, 990, 998) THEN V208=.;
   IF V209=0 THEN V209=.;              IF V210 IN (8, 9) THEN V210=.;       
   IF V211 IN (8, 9) THEN V211=.;      IF V212 IN (8, 9) THEN V212=.;       
   IF V213 IN (8, 9) THEN V213=.;      IF V214 IN (8, 9) THEN V214=.;       
   IF V215 IN (8, 9) THEN V215=.;      IF V216 IN (8, 9) THEN V216=.;       
   IF V217 IN (8, 9) THEN V217=.;      IF V218 IN (8, 9) THEN V218=.;       
   IF V219 IN (8, 9) THEN V219=.;      IF V220 IN (8, 9) THEN V220=.;       
   IF V221 IN (8, 9) THEN V221=.;      IF V222 IN (8, 9) THEN V222=.;       
   IF V223 IN (8, 9) THEN V223=.;      IF V224 IN (8, 9) THEN V224=.;       
   IF V225 IN (8, 9) THEN V225=.;      IF V226 IN (8, 9) THEN V226=.;       
   IF V227 IN (8, 9) THEN V227=.;      IF V228 IN (8, 9) THEN V228=.;       
   IF V229 IN (8, 9) THEN V229=.;      IF V230 IN (8, 9) THEN V230=.;       
   IF V231 IN (8, 9) THEN V231=.;      IF V232 IN (8, 9) THEN V232=.;       
   IF V233 IN (8, 9) THEN V233=.;      IF V234 IN (8, 9) THEN V234=.;       
   IF V235 IN (8, 9) THEN V235=.;      IF V236 IN (8, 9) THEN V236=.;       
   IF V237 IN (8, 9) THEN V237=.;      IF V238 IN (8, 9) THEN V238=.;       
   IF V239 IN (8, 9) THEN V239=.;      IF V240 IN (8, 9) THEN V240=.;       
   IF V241 IN (8, 9) THEN V241=.;      IF V242 IN (8, 9) THEN V242=.;       
   IF V243 IN (8, 9) THEN V243=.;      IF V244 IN (8, 9) THEN V244=.;       
   IF V245 IN (8, 9) THEN V245=.;      IF V246=8 THEN V246=.;               
   IF V247=8 THEN V247=.;              IF V248=8 THEN V248=.;               
   IF V249=8 THEN V249=.;              IF V250=8 THEN V250=.;               
   IF V251=8 THEN V251=.;              IF V252 IN (0, 11, 99) THEN V252=.;  
   IF V253 IN (0, 4) THEN V253=.;      IF V254 IN (0, 4) THEN V254=.;       
   IF V255 IN (0, 4) THEN V255=.;      IF V256 IN (0, 4) THEN V256=.;       
   IF V257 IN (0, 4) THEN V257=.;      IF V258 IN (0, 4) THEN V258=.;       
   IF V259 IN (4, 8, 9) THEN V259=.;   IF V260 IN (0, 4, 9) THEN V260=.;    
   IF V261 IN (0, 4, 9) THEN V261=.;   IF V262 IN (0, 4, 9) THEN V262=.;    
   IF V263 IN (0, 4, 9) THEN V263=.;   IF V264 IN (0, 4, 9) THEN V264=.;    
   IF V265 IN (0, 4, 9) THEN V265=.;   IF V266 IN (0, 3) THEN V266=.;       
   IF V267 IN (0, 3) THEN V267=.;      IF V268 IN (0, 3) THEN V268=.;       
   IF V269 IN (0, 3) THEN V269=.;      IF V270 IN (0, 3) THEN V270=.;       
   IF V271 IN (0, 3) THEN V271=.;      IF V272 IN (0, 3) THEN V272=.;       
   IF V273 IN (0, 3, 9) THEN V273=.;   IF V274 IN (8, 9) THEN V274=.;       
   IF V275 IN (8, 9) THEN V275=.;      IF V276 IN (8, 9) THEN V276=.;       
   IF V277 IN (8, 9) THEN V277=.;      IF V278 IN (8, 9) THEN V278=.;       
   IF V279 IN (8, 9) THEN V279=.;      IF V280 IN (8, 9) THEN V280=.;       
   IF V281 IN (8, 9) THEN V281=.;      IF V282 IN (8, 9) THEN V282=.;       
   IF V283 IN (8, 9) THEN V283=.;      IF V284 IN (8, 9) THEN V284=.;       
   IF V285 IN (0, 3, 9) THEN V285=.;   IF V286 IN (0, 3, 9) THEN V286=.;    
   IF V287 IN (0, 3, 9) THEN V287=.;   IF V288 IN (0, 3, 9) THEN V288=.;    
   IF V289 IN (0, 3, 9) THEN V289=.;   IF V290 IN (0, 3, 9) THEN V290=.;    
   IF V291 IN (0, 3, 9) THEN V291=.;   IF V292 IN (0, 3, 9) THEN V292=.;    
   IF V293 IN (0, 3, 9) THEN V293=.;   IF V294 IN (0, 3, 9) THEN V294=.;    
   IF V295 IN (0, 11, 99) THEN V295=.;                                      
   IF V296 IN (0, 3, 9) THEN V296=.;   IF V297 IN (0, 4, 9) THEN V297=.;    
   IF V298 IN (0, 4, 9) THEN V298=.;   IF V299 IN (0, 3, 9) THEN V299=.;    
   IF V300 IN (0, 11, 99) THEN V300=.;                                      
   IF V301 IN (0, 3, 9) THEN V301=.;   IF V302 IN (0, 4, 9) THEN V302=.;    
   IF V303 IN (0, 4, 9) THEN V303=.;   IF V304 IN (8, 9) THEN V304=.;       
   IF V305 IN (8, 9) THEN V305=.;      IF V306 IN (8, 9) THEN V306=.;       
   IF V307 IN (8, 9) THEN V307=.;      IF V308 IN (8, 9) THEN V308=.;       
   IF V309 IN (8, 9) THEN V309=.;      IF V310 IN (8, 9) THEN V310=.;       
   IF V311 IN (8, 9) THEN V311=.;      IF V312 IN (8, 9) THEN V312=.;       
   IF V313 IN (8, 9) THEN V313=.;      IF V314 IN (8, 9) THEN V314=.;       
   IF V315 IN (8, 9) THEN V315=.;      IF V316 IN (8, 9) THEN V316=.;       
   IF V317 IN (8, 9) THEN V317=.;      IF V318 IN (0, 3, 9) THEN V318=.;    
   IF V319 IN (8, 9) THEN V319=.;      IF V320 IN (8, 9) THEN V320=.;       
   IF V321 IN (8, 9) THEN V321=.;      IF V322 IN (8, 9) THEN V322=.;       
   IF V323 IN (8, 9) THEN V323=.;      IF V324 IN (8, 9) THEN V324=.;       
   IF V325 IN (8, 9) THEN V325=.;      IF V326 IN (8, 9) THEN V326=.;       
   IF V327 IN (8, 9) THEN V327=.;      IF V328 IN (8, 9) THEN V328=.;       
   IF V329 IN (8, 9) THEN V329=.;      IF V330 IN (8, 9) THEN V330=.;       
   IF V331 IN (8, 9) THEN V331=.;      IF V332 IN (8, 9) THEN V332=.;       
   IF V333 IN (0, 3, 9) THEN V333=.;   IF V334 IN (8, 9) THEN V334=.;       
   IF V335 IN (8, 9) THEN V335=.;      IF V336 IN (8, 9) THEN V336=.;       
   IF V337 IN (8, 9) THEN V337=.;      IF V338 IN (8, 9) THEN V338=.;       
   IF V339 IN (8, 9) THEN V339=.;      IF V340 IN (8, 9) THEN V340=.;       
   IF V341 IN (8, 9) THEN V341=.;      IF V342 IN (8, 9) THEN V342=.;       
   IF V343 IN (8, 9) THEN V343=.;      IF V344 IN (8, 9) THEN V344=.;       
   IF V345 IN (8, 9) THEN V345=.;      IF V346 IN (8, 9) THEN V346=.;       
   IF V347 IN (8, 9) THEN V347=.;      IF V348 IN (8, 9) THEN V348=.;       
   IF V349 IN (8, 9) THEN V349=.;      IF V350 IN (8, 9) THEN V350=.;       
   IF V351 IN (8, 9) THEN V351=.;      IF V352 IN (8, 9) THEN V352=.;       
   IF V353 IN (8, 9) THEN V353=.;      IF V354 IN (8, 9) THEN V354=.;       
   IF V355 IN (8, 9) THEN V355=.;      IF V356 IN (8, 9) THEN V356=.;       
   IF V357 IN (8, 9) THEN V357=.;      IF V358 IN (8, 9) THEN V358=.;       
   IF V359 IN (0, 4, 9) THEN V359=.;   IF V360 IN (0, 5, 9) THEN V360=.;    
   IF V361 IN (8, 9) THEN V361=.;      IF V362 IN (8, 9) THEN V362=.;       
   IF V363 IN (8, 9) THEN V363=.;      IF V364 IN (8, 9) THEN V364=.;       
   IF V365 IN (8, 9) THEN V365=.;      IF V366 IN (8, 9) THEN V366=.;       
   IF V367 IN (8, 9) THEN V367=.;      IF V368 IN (8, 9) THEN V368=.;       
   IF V369 IN (8, 9) THEN V369=.;      IF V370 IN (8, 9) THEN V370=.;       
   IF V371 IN (8, 9) THEN V371=.;      IF V372 IN (8, 9) THEN V372=.;       
   IF V373 IN (8, 9) THEN V373=.;      IF V374 IN (8, 9) THEN V374=.;       
   IF V375 IN (8, 9) THEN V375=.;      IF V376 IN (8, 9) THEN V376=.;       
   IF V377 IN (0, 3, 9) THEN V377=.;   IF V378 IN (0, 5, 9) THEN V378=.;    
   IF V379 IN (0, 3, 9) THEN V379=.;   IF V380 IN (0, 4, 9) THEN V380=.;    
   IF V381 IN (0, 3, 9) THEN V381=.;   IF V382 IN (0, 7, 9) THEN V382=.;    
   IF V383 IN (0, 3, 9) THEN V383=.;   IF V384 IN (0, 3, 9) THEN V384=.;    
   IF V385 IN (0, 3, 9) THEN V385=.;   IF V386 IN (0, 3, 9) THEN V386=.;    
   IF V387 IN (0, 3, 9) THEN V387=.;   IF V388 IN (0, 3, 9) THEN V388=.;    
   IF V389 IN (0, 3, 9) THEN V389=.;   IF V390 IN (0, 3, 9) THEN V390=.;    
   IF V391 IN (0, 3, 9) THEN V391=.;   IF V392 IN (0, 4, 9) THEN V392=.;    
   IF V393 IN (0, 4, 9) THEN V393=.;   IF V394 IN (0, 4, 9) THEN V394=.;    
   IF V395 IN (0, 4, 9) THEN V395=.;   IF V396 IN (0, 4, 9) THEN V396=.;    
   IF V397 IN (0, 4, 9) THEN V397=.;   IF V398 IN (0, 4, 9) THEN V398=.;    
   IF V399 IN (0, 4, 9) THEN V399=.;   IF V400 IN (0, 4, 9) THEN V400=.;    
   IF V401 IN (0, 4, 9) THEN V401=.;   IF V402 IN (0, 4, 9) THEN V402=.;    
   IF V403 IN (0, 4, 9) THEN V403=.;   IF V404 IN (0, 4, 9) THEN V404=.;    
   IF V405 IN (0, 4, 9) THEN V405=.;   IF V406 IN (0, 4, 9) THEN V406=.;    
   IF V407 IN (0, 4, 9) THEN V407=.;   IF V408 IN (0, 4, 9) THEN V408=.;    
   IF V409 IN (0, 4, 9) THEN V409=.;   IF V410 IN (0, 4, 9) THEN V410=.;    
   IF V411 IN (0, 4, 9) THEN V411=.;   IF V412 IN (0, 4, 9) THEN V412=.;    
   IF V413 IN (0, 4, 9) THEN V413=.;   IF V414 IN (0, 4, 9) THEN V414=.;    
   IF V415 IN (0, 4, 9) THEN V415=.;   IF V416 IN (0, 4, 9) THEN V416=.;    
   IF V417 GE 4 OR V417=0 THEN V417=.;                                      
   IF V418 IN (7, 8, 9) THEN V418=.;   IF V419 IN (7, 8, 9) THEN V419=.;    
   IF V420 GE 97 OR V420=0 THEN V420=.;                                     
   IF V421 IN (0, 5, 9) THEN V421=.;   IF V422 GE 90 OR V422=0 THEN V422=.; 
   IF V423 GE 90 OR V423=0 THEN V423=.;                                     
   IF V424 IN (0, 3, 9) THEN V424=.;   IF V425 IN (0, 3, 9) THEN V425=.;    
   IF V426 IN (0, 9) THEN V426=.;      IF V427 IN (0, 997, 999) THEN V427=.;
   IF V428 IN (0, 998, 999) THEN V428=.;                                    
   IF V429 IN (0, 998, 999) THEN V429=.;                                    
   IF V431=0 THEN V431=.; IF V432=0 THEN V432=.; IF V433=0 THEN V433=.;     
   IF V434=0 THEN V434=.;              IF V435 IN (0, 11) THEN V435=.;      
   IF V436 IN (8, 9) THEN V436=.;      IF V437 IN (8, 9) THEN V437=.;       
   IF V438 IN (8, 9) THEN V438=.;      IF V439 IN (8, 9) THEN V439=.;       
   IF V440 IN (8, 9) THEN V440=.;      IF V441 IN (8, 9) THEN V441=.;       
   IF V442 IN (8, 9) THEN V442=.;      IF V443 IN (8, 9) THEN V443=.;       
   IF V444 IN (8, 9) THEN V444=.;      IF V445 IN (8, 9) THEN V445=.;       
   IF V446 IN (0, 99) THEN V446=.;     IF V447 IN (0, 99) THEN V447=.;      
   IF V448 IN (998, 999) THEN V448=.;                                       
   IF V449 IN (0, 5, 9) THEN V449=.;   IF V450 IN (0, 5, 9) THEN V450=.;    
   IF V451 IN (0, 3, 9) THEN V451=.;   IF V452 IN (0, 3, 9) THEN V452=.;    
   IF V453 IN (0, 97, 99) THEN V453=.;                                      
   IF V454 IN (0, 99) THEN V454=.;     IF V455 IN (0, 99) THEN V455=.;      
   IF V456 IN (0, 5, 9) THEN V456=.;   IF V457 IN (0, 8, 9) THEN V457=.;    
   IF V458 IN (0, 8, 9) THEN V458=.;   IF V459 IN (0, 4) THEN V459=.;       
   IF V460 IN (0, 10, 99) THEN V460=.;                                      
   IF V461 GE 6 OR V461=0 THEN V461=.;                                      
   IF V462 IN (0, 5, 9) THEN V462=.;   IF V463 GE 97 OR V463=0 THEN V463=.; 
   IF V464 IN (0, 5, 9) THEN V464=.;   IF V465 IN (0, 99) THEN V465=.;      
   IF V466 IN (0, 9) THEN V466=.;      IF V467 IN (98, 99) THEN V467=.;     
   IF V468 IN (98, 99) THEN V468=.;    IF V469 IN (0, 999) THEN V469=.;     
   IF V470 IN (0, 9) THEN V470=.;      IF V471 IN (0, 9) THEN V471=.;       
   IF V472 IN (0, 99) THEN V472=.;     IF V473 IN (0, 999) THEN V473=.;     
   IF V474=99 THEN V474=.;             IF V475 IN (0, 9) THEN V475=.;       
   IF V476 IN (0, 4, 9) THEN V476=.;   IF V477 IN (0, 5, 9) THEN V477=.;    
   IF V478 IN (0, 3, 9) THEN V478=.;   IF V479 IN (0, 4, 9) THEN V479=.;    
   IF V480 IN (0, 4, 9) THEN V480=.;   IF V481 IN (8, 9) THEN V481=.;       
   IF V482 IN (8, 9) THEN V482=.;      IF V483 IN (8, 9) THEN V483=.;       
   IF V484 IN (8, 9) THEN V484=.;      IF V485 IN (8, 9) THEN V485=.;       
   IF V486 IN (8, 9) THEN V486=.;      IF V487 IN (8, 9) THEN V487=.;       
   IF V488 IN (8, 9) THEN V488=.;      IF V489 IN (8, 9) THEN V489=.;       
   IF V490 IN (8, 9) THEN V490=.;      IF V491 IN (0, 3, 9) THEN V491=.;    
   IF V492 IN (0, 3, 9) THEN V492=.;   IF V493 IN (0, 3, 9) THEN V493=.;    
   IF V494 IN (0, 3, 9) THEN V494=.;   IF V495 IN (0, 4, 9) THEN V495=.;    
   IF V496 IN (0, 4, 9) THEN V496=.;   IF V497 IN (0, 4, 9) THEN V497=.;    
   IF V498 IN (0, 3, 9) THEN V498=.;   IF V499 IN (0, 4, 9) THEN V499=.;    
   IF V500 IN (0, 3, 9) THEN V500=.;   IF V501 IN (0, 5, 9) THEN V501=.;    
   IF V502 IN (0, 4, 9) THEN V502=.;   IF V503 IN (0, 6, 9) THEN V503=.;    
   IF V504 IN (0, 5, 9) THEN V504=.;   IF V505 IN (0, 9) THEN V505=.;       
   IF V506 IN (0, 9) THEN V506=.;      IF V507 IN (0, 5, 9) THEN V507=.;    
   IF V508 IN (0, 6, 9) THEN V508=.;   IF V509 IN (0, 5, 9) THEN V509=.;    
   IF V510 IN (0, 6, 9) THEN V510=.;   IF V511 IN (0, 6, 9) THEN V511=.;    
   IF V512 IN (0, 6, 9) THEN V512=.;   IF V513 IN (0, 6, 9) THEN V513=.;    
   IF V514 IN (0, 6, 9) THEN V514=.;   IF V515 IN (0, 6, 9) THEN V515=.;    
   IF V516 IN (0, 6, 9) THEN V516=.;   IF V517 IN (0, 6, 9) THEN V517=.;    
   IF V518 IN (0, 3, 9) THEN V518=.;   IF V519 IN (0, 3, 9) THEN V519=.;    
   IF V520 IN (0, 3, 9) THEN V520=.;   IF V521 IN (0, 3, 9) THEN V521=.;    
   IF V522 IN (0, 3, 9) THEN V522=.;   IF V523 IN (0, 3, 9) THEN V523=.;    
   IF V524 IN (0, 3, 9) THEN V524=.;   IF V525 IN (0, 3, 9) THEN V525=.;    
   IF V526 IN (0, 3, 9) THEN V526=.;   IF V527 IN (0, 5, 9) THEN V527=.;    
   IF V528 IN (0, 3, 9) THEN V528=.;   IF V529 IN (0, 6, 9) THEN V529=.;    
   IF V530 IN (0, 9) THEN V530=.;      IF V531 IN (0, 99) THEN V531=.;      
   IF V532 IN (0, 9) THEN V532=.;      IF V533 IN (0, 9) THEN V533=.;       
   IF V534 IN (0, 9) THEN V534=.;      IF V536=9 THEN V536=.;               
   IF V537=9 THEN V537=.;              IF V540=9 THEN V540=.;               
   */                                                                       
                                                                            
* SAS FORMAT STATEMENT;                                                     
                                                                            
/*                                                                          
FORMAT                                                                      
   V2 V2FT.               V3 V3FT.               V5 V5FT.                   
   V7 V7FT.               V10 V10FT.             V34 V34FT.                 
   V35 V35FT.             V36 V36FT.             V37 V37FT.                 
   V38 V38FT.             V39 V39FT.             V40 V40FT.                 
   V41 V41FT.             V42 V42FT.             V43 V43FT.                 
   V44 V44FT.             V45 V45FT.             V46 V46FT.                 
   V47 V47FT.             V48 V48FT.             V49 V49FT.                 
   V50 V50FT.             V51 V51FT.             V52 V52FT.                 
   V53 V53FT.             V54 V54FT.             V55 V55FT.                 
   V56 V56FT.             V57 V57FT.             V58 V58FT.                 
   V59 V59FT.             V60 V60FT.             V61 V61FT.                 
   V62 V62FT.             V63 V63FT.             V64 V64FT.                 
   V65 V65FT.             V66 V66FT.             V67 V67FT.                 
   V68 V68FT.             V69 V69FT.             V70 V70FT.                 
   V71 V71FT.             V72 V72FT.             V73 V73FT.                 
   V74 V74FT.             V75 V75FT.             V76 V76FT.                 
   V77 V77FT.             V78 V78FT.             V79 V79FT.                 
   V80 V80FT.             V81 V81FT.             V82 V82FT.                 
   V83 V83FT.             V84 V84FT.             V85 V85FT.                 
   V86 V86FT.             V87 V87FT.             V88 V88FT.                 
   V89 V89FT.             V90 V90FT.             V91 V91FT.                 
   V92 V92FT.             V93 V93FT.             V94 V94FT.                 
   V95 V95FT.             V96 V96FT.             V97 V97FT.                 
   V98 V98FT.             V99 V99FT.             V100 V100FT.               
   V101 V101FT.           V102 V102FT.           V103 V103FT.               
   V104 V104FT.           V105 V105FT.           V106 V106FT.               
   V107 V107FT.           V108 V108FT.           V109 V109FT.               
   V110 V110FT.           V111 V111FT.           V112 V112FT.               
   V113 V113FT.           V114 V114FT.           V115 V115FT.               
   V116 V116FT.           V117 V117FT.           V118 V118FT.               
   V119 V119FT.           V120 V120FT.           V121 V121FT.               
   V122 V122FT.           V123 V123FT.           V124 V124FT.               
   V125 V125FT.           V126 V126FT.           V127 V127FT.               
   V128 V128FT.           V129 V129FT.           V130 V130FT.               
   V131 V131FT.           V132 V132FT.           V133 V133FT.               
   V134 V134FT.           V135 V135FT.           V136 V136FT.               
   V137 V137FT.           V138 V138FT.           V139 V139FT.               
   V140 V140FT.           V141 V141FT.           V142 V142FT.               
   V143 V143FT.           V144 V144FT.           V145 V145FT.               
   V146 V146FT.           V147 V147FT.           V148 V148FT.               
   V149 V149FT.           V150 V150FT.           V151 V151FT.               
   V152 V152FT.           V153 V153FT.           V154 V154FT.               
   V155 V155FT.           V156 V156FT.           V157 V157FT.               
   V158 V158FT.           V159 V159FT.           V160 V160FT.               
   V161 V161FT.           V162 V162FT.           V163 V163FT.               
   V164 V164FT.           V165 V165FT.           V166 V166FT.               
   V167 V167FT.           V168 V168FT.           V169 V169FT.               
   V170 V170FT.           V171 V171FT.           V172 V172FT.               
   V173 V173FT.           V174 V174FT.           V175 V175FT.               
   V176 V176FT.           V177 V177FT.           V178 V178FT.               
   V179 V179FT.           V180 V180FT.           V181 V181FT.               
   V182 V182FT.           V183 V183FT.           V184 V184FT.               
   V185 V185FT.           V186 V186FT.           V187 V187FT.               
   V188 V188FT.           V189 V189FT.           V190 V190FT.               
   V191 V191FT.           V192 V192FT.           V193 V193FT.               
   V194 V194FT.           V195 V195FT.           V196 V196FT.               
   V197 V197FT.           V198 V198FT.           V199 V199FT.               
   V200 V200FT.           V201 V201FT.           V202 V202FT.               
   V203 V203FT.           V204 V204FT.           V205 V205FT.               
   V206 V206FT.           V207 V207FT.           V208 V208FT.               
   V209 V209FT.           V210 V210FT.           V211 V211FT.               
   V212 V212FT.           V213 V213FT.           V214 V214FT.               
   V215 V215FT.           V216 V216FT.           V217 V217FT.               
   V218 V218FT.           V219 V219FT.           V220 V220FT.               
   V221 V221FT.           V222 V222FT.           V223 V223FT.               
   V224 V224FT.           V225 V225FT.           V226 V226FT.               
   V227 V227FT.           V228 V228FT.           V229 V229FT.               
   V230 V230FT.           V231 V231FT.           V232 V232FT.               
   V233 V233FT.           V234 V234FT.           V235 V235FT.               
   V236 V236FT.           V237 V237FT.           V238 V238FT.               
   V239 V239FT.           V240 V240FT.           V241 V241FT.               
   V242 V242FT.           V243 V243FT.           V244 V244FT.               
   V245 V245FT.           V246 V246FT.           V247 V247FT.               
   V248 V248FT.           V249 V249FT.           V250 V250FT.               
   V251 V251FT.           V252 V252FT.           V253 V253FT.               
   V254 V254FT.           V255 V255FT.           V256 V256FT.               
   V257 V257FT.           V258 V258FT.           V259 V259FT.               
   V260 V260FT.           V261 V261FT.           V262 V262FT.               
   V263 V263FT.           V264 V264FT.           V265 V265FT.               
   V266 V266FT.           V267 V267FT.           V268 V268FT.               
   V269 V269FT.           V270 V270FT.           V271 V271FT.               
   V272 V272FT.           V273 V273FT.           V274 V274FT.               
   V275 V275FT.           V276 V276FT.           V277 V277FT.               
   V278 V278FT.           V279 V279FT.           V280 V280FT.               
   V281 V281FT.           V282 V282FT.           V283 V283FT.               
   V284 V284FT.           V285 V285FT.           V286 V286FT.               
   V287 V287FT.           V288 V288FT.           V289 V289FT.               
   V290 V290FT.           V291 V291FT.           V292 V292FT.               
   V293 V293FT.           V294 V294FT.           V295 V295FT.               
   V296 V296FT.           V297 V297FT.           V298 V298FT.               
   V299 V299FT.           V300 V300FT.           V301 V301FT.               
   V302 V302FT.           V303 V303FT.           V304 V304FT.               
   V305 V305FT.           V306 V306FT.           V307 V307FT.               
   V308 V308FT.           V309 V309FT.           V310 V310FT.               
   V311 V311FT.           V312 V312FT.           V313 V313FT.               
   V314 V314FT.           V315 V315FT.           V316 V316FT.               
   V317 V317FT.           V318 V318FT.           V319 V319FT.               
   V320 V320FT.           V321 V321FT.           V322 V322FT.               
   V323 V323FT.           V324 V324FT.           V325 V325FT.               
   V326 V326FT.           V327 V327FT.           V328 V328FT.               
   V329 V329FT.           V330 V330FT.           V331 V331FT.               
   V332 V332FT.           V333 V333FT.           V334 V334FT.               
   V335 V335FT.           V336 V336FT.           V337 V337FT.               
   V338 V338FT.           V339 V339FT.           V340 V340FT.               
   V341 V341FT.           V342 V342FT.           V343 V343FT.               
   V344 V344FT.           V345 V345FT.           V346 V346FT.               
   V347 V347FT.           V348 V348FT.           V349 V349FT.               
   V350 V350FT.           V351 V351FT.           V352 V352FT.               
   V353 V353FT.           V354 V354FT.           V355 V355FT.               
   V356 V356FT.           V357 V357FT.           V358 V358FT.               
   V359 V359FT.           V360 V360FT.           V361 V361FT.               
   V362 V362FT.           V363 V363FT.           V364 V364FT.               
   V365 V365FT.           V366 V366FT.           V367 V367FT.               
   V368 V368FT.           V369 V369FT.           V370 V370FT.               
   V371 V371FT.           V372 V372FT.           V373 V373FT.               
   V374 V374FT.           V375 V375FT.           V376 V376FT.               
   V377 V377FT.           V378 V378FT.           V379 V379FT.               
   V380 V380FT.           V381 V381FT.           V382 V382FT.               
   V383 V383FT.           V384 V384FT.           V385 V385FT.               
   V386 V386FT.           V387 V387FT.           V388 V388FT.               
   V389 V389FT.           V390 V390FT.           V391 V391FT.               
   V392 V392FT.           V393 V393FT.           V394 V394FT.               
   V395 V395FT.           V396 V396FT.           V397 V397FT.               
   V398 V398FT.           V399 V399FT.           V400 V400FT.               
   V401 V401FT.           V402 V402FT.           V403 V403FT.               
   V404 V404FT.           V405 V405FT.           V406 V406FT.               
   V407 V407FT.           V408 V408FT.           V409 V409FT.               
   V410 V410FT.           V411 V411FT.           V412 V412FT.               
   V413 V413FT.           V414 V414FT.           V415 V415FT.               
   V416 V416FT.           V417 V417FT.           V418 V418FT.               
   V419 V419FT.           V420 V420FT.           V421 V421FT.               
   V422 V422FT.           V423 V423FT.           V424 V424FT.               
   V425 V425FT.           V426 V426FT.           V427 V427FT.               
   V428 V428FT.           V429 V429FT.           V430 V430FT.               
   V431 V431FT.           V432 V432FT.           V433 V433FT.               
   V434 V434FT.           V435 V435FT.           V436 V436FT.               
   V437 V437FT.           V438 V438FT.           V439 V439FT.               
   V440 V440FT.           V441 V441FT.           V442 V442FT.               
   V443 V443FT.           V444 V444FT.           V445 V445FT.               
   V446 V446FT.           V447 V447FT.           V448 V448FT.               
   V449 V449FT.           V450 V450FT.           V451 V451FT.               
   V452 V452FT.           V453 V453FT.           V454 V454FT.               
   V455 V455FT.           V456 V456FT.           V457 V457FT.               
   V458 V458FT.           V459 V459FT.           V460 V460FT.               
   V461 V461FT.           V462 V462FT.           V463 V463FT.               
   V464 V464FT.           V465 V465FT.           V466 V466FT.               
   V467 V467FT.           V468 V468FT.           V469 V469FT.               
   V470 V470FT.           V471 V471FT.           V472 V472FT.               
   V473 V473FT.           V474 V474FT.           V475 V475FT.               
   V476 V476FT.           V477 V477FT.           V478 V478FT.               
   V479 V479FT.           V480 V480FT.           V481 V481FT.               
   V482 V482FT.           V483 V483FT.           V484 V484FT.               
   V485 V485FT.           V486 V486FT.           V487 V487FT.               
   V488 V488FT.           V489 V489FT.           V490 V490FT.               
   V491 V491FT.           V492 V492FT.           V493 V493FT.               
   V494 V494FT.           V495 V495FT.           V496 V496FT.               
   V497 V497FT.           V498 V498FT.           V499 V499FT.               
   V500 V500FT.           V501 V501FT.           V502 V502FT.               
   V503 V503FT.           V504 V504FT.           V505 V505FT.               
   V506 V506FT.           V507 V507FT.           V508 V508FT.               
   V509 V509FT.           V510 V510FT.           V511 V511FT.               
   V512 V512FT.           V513 V513FT.           V514 V514FT.               
   V515 V515FT.           V516 V516FT.           V517 V517FT.               
   V518 V518FT.           V519 V519FT.           V520 V520FT.               
   V521 V521FT.           V522 V522FT.           V523 V523FT.               
   V524 V524FT.           V525 V525FT.           V526 V526FT.               
   V527 V527FT.           V528 V528FT.           V529 V529FT.               
   V530 V530FT.           V531 V531FT.           V532 V532FT.               
   V533 V533FT.           V534 V534FT.           V535 V535FT.               
   V536 V536FT.           V537 V537FT.           V538 V538FT.               
   V540 V540FT.;                                                            
   */                                                                       
                                                                            
* Users may add their own data transformation commands here;                
