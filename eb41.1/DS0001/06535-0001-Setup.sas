***************************************************************************
*                                                                          
*              SAS DATA DEFINITION STATEMENTS FOR ICPSR 6535               
*                                                                          
*         EURO-BAROMETER 41.1: POST-EUROPEAN ELECTION, JUNE-JULY 1994      
*                                3RD ZA EDITION                            
*                                  JUNE, 1998                              
*                                                                          
* This SAS setup file contains the following statements:                   
*                                                                          
* PROC FORMAT:  Creates user-defined formats. Formats replace original     
* value codes with value code descriptions. Formats may not be present     
* for all variables in the data file.                                      
*                                                                          
* DATA:  Begins a SAS data step and names an output SAS data set.          
*                                                                          
* INFILE:  Specifies the input data file to be read with the input         
* statement. Users must replace "file-specification" with a complete       
* statement of the location of the data file.                              
*                                                                          
* INPUT:  Assigns the name, type, decimal specification (if any), and      
* identifies variable beginning and ending column locations.               
*                                                                          
* LABEL:  Assigns descriptive labels to variables. Variable labels and     
* variable names may be identical for certain variables.                   
*                                                                          
* FORMAT:  Associates the formats created by the PROC FORMAT step with     
* the variables named in the INPUT statement. Format statements may not    
* be present for all variables in the data file.                           
*                                                                          
* MISSING VALUE RECODES:  Sets user-defined numeric missing values to      
* missing as interpreted by the SAS system. Missing value recodes may not  
* be present for all variables in the data file.                           
*                                                                          
* NOTE:  Users should modify this SAS setup file to suit their specific    
* needs. PROC FORMAT, FORMAT, and MISSING VALUE RECODES sections have      
* been marked by SAS comment statements. To include these sections in a    
* final SAS setup, users should remove the SAS comment statements from     
* the desired section(s).                                                  
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
*   UPDATED 05/04/98                                                       
*                                                                          
* COMMENT******************************************************************
                                                                           
* SAS PROC FORMAT;                                                         
                                                                           
/*                                                                         
PROC FORMAT;                                                               
   VALUE V2FT (MAX=40)                                                     
   1 = "EARLY RELEASE VERSION"                                             
   2 = "1ST CODEBOOK EDITION";                                             
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
   13 = "EAST GERMANY";                                                    
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
   14 = "EAST GERMANY";                                                    
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
   13 = "PORTUGAL";                                                        
   VALUE V16FT (MAX=40)                                                    
   0 = "NO/<NA>"                                                           
   1 = "AT PRESENT ADDRESS"                                                
   2 = "AT ANOTHER ADDRESS"                                                
   3 = "DONT KNOW IF REGISTERED"                                           
   4 = "DOES NOT APPEAR AT ALL";                                           
   VALUE V17FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V18FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V19FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V20FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V21FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V22FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V23FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V24FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V25FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V26FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V27FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V28FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V29FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V30FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 0 IN V16";                                              
   VALUE V31FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK"                                                                
   9 = "INAP - DOCUMENT";                                                  
   VALUE V32FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V33FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V34FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V35FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V36FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V37FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V38FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V39FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V40FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V41FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V42FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V43FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V44FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V45FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V46FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "LOT OF TRUST"                                                      
   2 = "SOME TRUST"                                                        
   3 = "NOT VERY MUCH TRUST"                                               
   4 = "NO TRUST AT ALL"                                                   
   5 = "DK";                                                               
   VALUE V47FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "A GREAT DEAL"                                                      
   2 = "TO SOME EXTENT"                                                    
   3 = "NOT MUCH"                                                          
   4 = "NOT AT ALL"                                                        
   5 = "DK";                                                               
   VALUE V48FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "A GREAT DEAL"                                                      
   2 = "TO SOME EXTENT"                                                    
   3 = "NOT MUCH"                                                          
   4 = "NOT AT ALL"                                                        
   5 = "DK";                                                               
   VALUE V49FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "FOR - VERY MUCH"                                                   
   2 = "FOR - TO SOME EXTENT"                                              
   3 = "AGAINST - TO SOME EXTENT"                                          
   4 = "AGAINST - VERY MUCH"                                               
   5 = "DK";                                                               
   VALUE V50FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "A GOOD THING"                                                      
   2 = "A BAD THING"                                                       
   3 = "NEITHER GOOD NOR BAD"                                              
   4 = "DK";                                                               
   VALUE V51FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "BENEFITED"                                                         
   2 = "NOT BENEFITED"                                                     
   3 = "DK";                                                               
   VALUE V52FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "WILL BE BENEFITING"                                                
   2 = "WONT BE BENEFITING"                                                
   3 = "DK";                                                               
   VALUE V53FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "VERY SORRY"                                                        
   2 = "INDIFFERENT"                                                       
   3 = "VERY RELIEVED"                                                     
   4 = "DK";                                                               
   VALUE V54FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "VERY SATISFIED"                                                    
   2 = "FAIRLY SATISFIED"                                                  
   3 = "NOT VERY SATISFIED"                                                
   4 = "NOT AT ALL SATISFIED"                                              
   5 = "DK";                                                               
   VALUE V55FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "VERY SATISFIED"                                                    
   2 = "FAIRLY SATISFIED"                                                  
   3 = "NOT VERY SATISFIED"                                                
   4 = "NOT AT ALL SATISFIED"                                              
   5 = "DK";                                                               
   VALUE V56FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "TOO MANY ISSUES"                                                   
   2 = "RIGHT N OF ISSUES"                                                 
   3 = "MORE ISSUES"                                                       
   4 = "SOME ISSUES MORE"                                                  
   5 = "NOT THOUGHT ABOUT"                                                 
   6 = "DK";                                                               
   VALUE V57FT (MAX=40)                                                    
   1 = "GENERAL FEELING"                                                   
   2 = "SPECIFIC ISSUES"                                                   
   3 = "NOT SPECIFIED"                                                     
   9 = "INAP - 0 5 6 IN V56";                                              
   VALUE V58FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "VOTED"                                                             
   2 = "DID NOT VOTE"                                                      
   3 = "CANT REMEMB/REFUSED";                                              
   VALUE V59FT (MAX=40)                                                    
   0 = "NA/REFUSAL"                                                        
   90 = "OTHER PARTY"                                                      
   95 = "VOTED BLANC"                                                      
   98 = "DONT REMEMBER"                                                    
   99 = "INAP - NOT 1 V58";                                                
   VALUE V60FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "NO CHOICE"                                                         
   2 = "MALE CANDIDATE"                                                    
   3 = "FEMALE CANDIDATE"                                                  
   4 = "DONT REMEMBER"                                                     
   5 = "DK"                                                                
   9 = "INAP - NOT 3 7-10 V7";                                             
   VALUE V61FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "NO PREFERENCE"                                                     
   2 = "MALE CANDIDATES"                                                   
   3 = "FEMALE CANDIDATES"                                                 
   4 = "MALE AND FEMALE"                                                   
   5 = "DONT REMEMBER"                                                     
   6 = "DK"                                                                
   9 = "INAP - NOT 2 5 6 V7";                                              
   VALUE V62FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "VERY IMPORTANT"                                                    
   2 = "IMPORTANT"                                                         
   3 = "NOT VERY IMPORTANT"                                                
   4 = "NOT IMPORTANT AT ALL"                                              
   5 = "DK"                                                                
   9 = "INAP - SEE DOCUMENT";                                              
   VALUE V63FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "VERY IMPORTANT"                                                    
   2 = "IMPORTANT"                                                         
   3 = "LITTLE IMPORTANCE"                                                 
   4 = "NO IMPORTANCE AT ALL"                                              
   5 = "NO FEMALE CANDIDATES"                                              
   6 = "DK"                                                                
   9 = "INAP - NOT 1 IN V58";                                              
   VALUE V64FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "CORRECT"                                                           
   2 = "INCORRECT"                                                         
   3 = "DK";                                                               
   VALUE V65FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "CORRECT"                                                           
   2 = "INCORRECT"                                                         
   3 = "DK";                                                               
   VALUE V66FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "CORRECT"                                                           
   2 = "INCORRECT"                                                         
   3 = "DK";                                                               
   VALUE V67FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "CORRECT"                                                           
   2 = "INCORRECT"                                                         
   3 = "DK";                                                               
   VALUE V68FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "QUITE LIKE HIM"                                                    
   2 = "DONT LIKE HIM"                                                     
   3 = "DK";                                                               
   VALUE V69FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "QUITE LIKE HIM"                                                    
   2 = "DONT LIKE HIM"                                                     
   3 = "DK";                                                               
   VALUE V70FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "QUITE LIKE HIM"                                                    
   2 = "DONT LIKE HIM"                                                     
   3 = "DK";                                                               
   VALUE V71FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "QUITE LIKE HIM"                                                    
   2 = "DONT LIKE HIM"                                                     
   3 = "DK";                                                               
   VALUE V72FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V73FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V74FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V75FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V76FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V77FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V78FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V79FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V80FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V81FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V82FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V83FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V84FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V85FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V86FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "STANDING STILL"                                                    
   2 = "2"                                                                 
   3 = "3"                                                                 
   4 = "4"                                                                 
   5 = "5"                                                                 
   6 = "6"                                                                 
   7 = "AS FAST AS POSSIBLE"                                               
   8 = "DK";                                                               
   VALUE V87FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "STANDING STILL"                                                    
   2 = "2"                                                                 
   3 = "3"                                                                 
   4 = "4"                                                                 
   5 = "5"                                                                 
   6 = "6"                                                                 
   7 = "AS FAST AS POSSIBLE"                                               
   8 = "DK";                                                               
   VALUE V88FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "FOR"                                                               
   2 = "AGAINST"                                                           
   3 = "DK";                                                               
   VALUE V89FT (MAX=40)                                                    
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V90FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - NOT 1 V89";                                                 
   VALUE V91FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - NOT 1 V89";                                                 
   VALUE V92FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - NOT 1 V89";                                                 
   VALUE V93FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - NOT 1 V89";                                                 
   VALUE V94FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - NOT 1 V89";                                                 
   VALUE V95FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - NOT 1 V89";                                                 
   VALUE V96FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - NOT 1 V89";                                                 
   VALUE V97FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - NOT 1 V89";                                                 
   VALUE V98FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - NOT 1 V89";                                                 
   VALUE V99FT (MAX=40)                                                    
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - NOT 1 V89";                                                 
   VALUE V100FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - NOT 1 V89";                                                 
   VALUE V101FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL/ALSO EUROP"                                             
   10 = "VERY MUCH/ALSO EUROP"                                             
   11 = "DK";                                                              
   VALUE V102FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "GREAT CONFIDENCE"                                                  
   2 = "FAIR AMOUNT OF CON"                                                
   3 = "NOT VERY MUCH CON"                                                 
   4 = "NO CONFIDENCE"                                                     
   5 = "DK";                                                               
   VALUE V103FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "CANNOT RELY AT ALL"                                                
   10 = "CAN RELY COMPLETELY"                                              
   11 = "DK";                                                              
   VALUE V104FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "CANNOT RELY AT ALL"                                                
   10 = "CAN RELY COMPLETELY"                                              
   11 = "DK";                                                              
   VALUE V105FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "CANNOT RELY AT ALL"                                                
   10 = "CAN RELY COMPLETELY"                                              
   11 = "DK";                                                              
   VALUE V106FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "CANNOT RELY AT ALL"                                                
   10 = "CAN RELY COMPLETELY"                                              
   11 = "DK";                                                              
   VALUE V107FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "CANNOT RELY AT ALL"                                                
   10 = "CAN RELY COMPLETELY"                                              
   11 = "DK";                                                              
   VALUE V108FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "CANNOT RELY AT ALL"                                                
   10 = "CAN RELY COMPLETELY"                                              
   11 = "DK";                                                              
   VALUE V109FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NO POWER AT ALL"                                                   
   10 = "GREAT DEAL OF POWER"                                              
   11 = "DK";                                                              
   VALUE V110FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NO POWER AT ALL"                                                   
   10 = "GREAT DEAL OF POWER"                                              
   11 = "DK";                                                              
   VALUE V111FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NO EFFECT AT ALL"                                                  
   10 = "VERY BIG EFFECT"                                                  
   11 = "DK";                                                              
   VALUE V112FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NO EFFECT AT ALL"                                                  
   10 = "VERY BIG EFFECT"                                                  
   11 = "DK";                                                              
   VALUE V113FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "VERY BAD IDEA"                                                     
   10 = "VERY GOOD IDEA"                                                   
   11 = "DK";                                                              
   VALUE V114FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "VERY BAD IDEA"                                                     
   10 = "VERY GOOD IDEA"                                                   
   11 = "DK";                                                              
   VALUE V115FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V116FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V117FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V118FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V119FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V120FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V121FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V122FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V123FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 2 V58";                                                 
   VALUE V124FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 2 V58";                                                 
   VALUE V125FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 2 V58";                                                 
   VALUE V126FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 2 V58";                                                 
   VALUE V127FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 2 V58";                                                 
   VALUE V128FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 2 V58";                                                 
   VALUE V129FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 2 V58";                                                 
   VALUE V130FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 2 V58";                                                 
   VALUE V131FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "INAP - NOT 2 V58";                                                 
   VALUE V132FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V133FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "IT DOESNT MATTER AT ALL"                                           
   10 = "IT MATTERS A GREAT DEAL"                                          
   11 = "DK";                                                              
   VALUE V134FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "IT DOESNT MATTER AT ALL"                                           
   10 = "IT MATTERS A GREAT DEAL"                                          
   11 = "DK";                                                              
   VALUE V135FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "IT DOESNT MATTER AT ALL"                                           
   10 = "IT MATTERS A GREAT DEAL"                                          
   11 = "DK";                                                              
   VALUE V136FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "IT DOESNT MATTER AT ALL"                                           
   10 = "IT MATTERS A GREAT DEAL"                                          
   11 = "DK";                                                              
   VALUE V137FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK";                                                              
   VALUE V138FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V139FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V140FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V141FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V142FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V143FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V144FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V145FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V146FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V147FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V148FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL CURRENCY"                                                 
   10 = "COMMON CURRENCY"                                                  
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V149FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK";                                                              
   VALUE V150FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V151FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V152FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V153FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V154FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V155FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V156FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V157FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V158FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V159FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V160FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EMPLOYMENT PROGRAMME"                                              
   10 = "SINGLE MARKET"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V161FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK";                                                              
   VALUE V162FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V163FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V164FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V165FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V166FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V167FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V168FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V169FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V170FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V171FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V172FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REMOVE BORDERS"                                                    
   10 = "TIGHTER BORDER CONTR"                                             
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V173FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL ISSUE 1"                                                  
   2 = "FIGHT UNEMPLOYMENT"                                                
   3 = "STABLE PRICES"                                                     
   4 = "NATIONAL ISSUE 2"                                                  
   5 = "EUROP UNIFICATION"                                                 
   6 = "IMMIGRATION PROBLEMS"                                              
   7 = "NATIONAL ISSUE 3"                                                  
   8 = "AGRICULT SURPLUSES"                                                
   9 = "PROTECT ENVIRONMENT"                                               
   10 = "NATIONAL ISSUE 4"                                                 
   11 = "FIGHTING CRIME"                                                   
   12 = "DK";                                                              
   VALUE V174FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL ISSUE 1"                                                  
   2 = "FIGHT UNEMPLOYMENT"                                                
   3 = "STABLE PRICES"                                                     
   4 = "NATIONAL ISSUE 2"                                                  
   5 = "EUROP UNIFICATION"                                                 
   6 = "IMMIGRATION PROBLEMS"                                              
   7 = "NATIONAL ISSUE 3"                                                  
   8 = "AGRICULT SURPLUSES"                                                
   9 = "PROTECT ENVIRONMENT"                                               
   10 = "NATIONAL ISSUE 4"                                                 
   11 = "FIGHTING CRIME"                                                   
   12 = "DK";                                                              
   VALUE V175FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NATIONAL ISSUE 1"                                                  
   2 = "FIGHT UNEMPLOYMENT"                                                
   3 = "STABLE PRICES"                                                     
   4 = "NATIONAL ISSUE 2"                                                  
   5 = "EUROP UNIFICATION"                                                 
   6 = "IMMIGRATION PROBLEMS"                                              
   7 = "NATIONAL ISSUE 3"                                                  
   8 = "AGRICULT SURPLUSES"                                                
   9 = "PROTECT ENVIRONMENT"                                               
   10 = "NATIONAL ISSUE 4"                                                 
   11 = "FIGHTING CRIME"                                                   
   12 = "DK";                                                              
   VALUE V176FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   90 = "OTHER PARTY"                                                      
   95 = "NONE"                                                             
   96 = "<NOT DOCUMENTED>"                                                 
   97 = "REFUSED"                                                          
   98 = "DK"                                                               
   99 = "INAP - 0 12 IN V173";                                             
   VALUE V177FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REGIONAL"                                                          
   2 = "NATIONAL"                                                          
   3 = "EUROPEAN"                                                          
   4 = "DK"                                                                
   9 = "INAP - 0 12 IN V173";                                              
   VALUE V178FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REGIONAL"                                                          
   2 = "NATIONAL"                                                          
   3 = "EUROPEAN"                                                          
   4 = "DK"                                                                
   9 = "INAP - 0 12 IN V173";                                              
   VALUE V179FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   90 = "OTHER PARTY"                                                      
   95 = "NONE"                                                             
   96 = "<NOT DOCUMENTED>"                                                 
   97 = "REFUSED"                                                          
   98 = "DK"                                                               
   99 = "INAP - 0 12 IN V174";                                             
   VALUE V180FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REGIONAL"                                                          
   2 = "NATIONAL"                                                          
   3 = "EUROPEAN"                                                          
   4 = "DK"                                                                
   9 = "INAP - 0 12 IN V174";                                              
   VALUE V181FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REGIONAL"                                                          
   2 = "NATIONAL"                                                          
   3 = "EUROPEAN"                                                          
   4 = "DK"                                                                
   9 = "INAP - 0 12 IN V174";                                              
   VALUE V182FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   90 = "OTHER PARTY"                                                      
   95 = "NONE"                                                             
   96 = "<NOT DOCUMENTED>"                                                 
   97 = "REFUSED"                                                          
   98 = "DK"                                                               
   99 = "INAP - 0 12 IN V175";                                             
   VALUE V183FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REGIONAL"                                                          
   2 = "NATIONAL"                                                          
   3 = "EUROPEAN"                                                          
   4 = "DK"                                                                
   9 = "INAP - 0 12 IN V175";                                              
   VALUE V184FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "REGIONAL"                                                          
   2 = "NATIONAL"                                                          
   3 = "EUROPEAN"                                                          
   4 = "DK"                                                                
   9 = "INAP - 0 12 IN V175";                                              
   VALUE V185FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "ADVANTAGES"                                                        
   2 = "DISADVANTAGES"                                                     
   3 = "DK";                                                               
   VALUE V186FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "IN FAVOUR"                                                         
   2 = "NOT IN FAVOUR"                                                     
   3 = "DK";                                                               
   VALUE V187FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "ECU PLUS OWN CURR"                                                 
   2 = "OWN CURRENCY ONLY"                                                 
   3 = "DK"                                                                
   9 = "INAP - NOT 2 V186";                                                
   VALUE V188FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "APPROVE STRONGLY"                                                  
   2 = "APPROVE SOMEWHAT"                                                  
   3 = "DISSAPROVE SOMEWHAT"                                               
   4 = "DISSAPROVE STRONGLY"                                               
   5 = "DK"                                                                
   9 = "INAP-NOT 1 3-5 9 V10";                                             
   VALUE V189FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "APPROVE STRONGLY"                                                  
   2 = "APPROVE SOMEWHAT"                                                  
   3 = "DISSAPROVE SOMEWHAT"                                               
   4 = "DISSAPROVE STRONGLY"                                               
   5 = "DK"                                                                
   9 = "INAP-NOT 1 3-5 9 V10";                                             
   VALUE V190FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "APPROVE STRONGLY"                                                  
   2 = "APPROVE SOMEWHAT"                                                  
   3 = "DISSAPROVE SOMEWHAT"                                               
   4 = "DISSAPROVE STRONGLY"                                               
   5 = "DK"                                                                
   9 = "INAP-NOT 1 3-5 9 V10";                                             
   VALUE V191FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "APPROVE STRONGLY"                                                  
   2 = "APPROVE SOMEWHAT"                                                  
   3 = "DISSAPROVE SOMEWHAT"                                               
   4 = "DISSAPROVE STRONGLY"                                               
   5 = "DK"                                                                
   9 = "INAP-NOT 1 3-5 9 V10";                                             
   VALUE V192FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "APPROVE STRONGLY"                                                  
   2 = "APPROVE SOMEWHAT"                                                  
   3 = "DISSAPROVE SOMEWHAT"                                               
   4 = "DISSAPROVE STRONGLY"                                               
   5 = "DK"                                                                
   9 = "INAP-NOT 1 3-5 9 V10";                                             
   VALUE V193FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "IS A MEMBER"                                                       
   2 = "PROBABLY JOIN"                                                     
   3 = "CERTAINLY NOT JOIN"                                                
   4 = "DK"                                                                
   9 = "INAP-NOT 1 3-5 9 V10";                                             
   VALUE V194FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "IS A MEMBER"                                                       
   2 = "PROBABLY JOIN"                                                     
   3 = "CERTAINLY NOT JOIN"                                                
   4 = "DK"                                                                
   9 = "INAP-NOT 1 3-5 9 V10";                                             
   VALUE V195FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "IS A MEMBER"                                                       
   2 = "PROBABLY JOIN"                                                     
   3 = "CERTAINLY NOT JOIN"                                                
   4 = "DK"                                                                
   9 = "INAP-NOT 1 3-5 9 V10";                                             
   VALUE V196FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "IS A MEMBER"                                                       
   2 = "PROBABLY JOIN"                                                     
   3 = "CERTAINLY NOT JOIN"                                                
   4 = "DK"                                                                
   9 = "INAP-NOT 1 3-5 9 V10";                                             
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
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V201FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V202FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V203FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V204FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V205FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V206FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V207FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V208FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V209FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "TOO MANY"                                                          
   2 = "A LOT - NOT TOO MANY"                                              
   3 = "NOT MANY"                                                          
   4 = "DK";                                                               
   VALUE V210FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EXTENDED"                                                          
   2 = "RESTRICTED"                                                        
   3 = "LEFT AS THEY ARE"                                                  
   4 = "DK";                                                               
   VALUE V211FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "BIG PROBLEM"                                                       
   2 = "NOT A BIG PROBLEM"                                                 
   3 = "DK";                                                               
   VALUE V212FT (MAX=40)                                                   
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
   12 = "UNITED KINGDOM"                                                   
   13 = "NONE OF THESE"                                                    
   14 = "DK";                                                              
   VALUE V213FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "TEND TO AGREE"                                                     
   2 = "TEND TO DISAGREE"                                                  
   3 = "DK";                                                               
   VALUE V214FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "TEND TO AGREE"                                                     
   2 = "TEND TO DISAGREE"                                                  
   3 = "DK";                                                               
   VALUE V215FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "TEND TO AGREE"                                                     
   2 = "TEND TO DISAGREE"                                                  
   3 = "DK";                                                               
   VALUE V216FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "TEND TO AGREE"                                                     
   2 = "TEND TO DISAGREE"                                                  
   3 = "DK";                                                               
   VALUE V217FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "TEND TO AGREE"                                                     
   2 = "TEND TO DISAGREE"                                                  
   3 = "DK";                                                               
   VALUE V218FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "TEND TO AGREE"                                                     
   2 = "TEND TO DISAGREE"                                                  
   3 = "DK";                                                               
   VALUE V219FT (MAX=40)                                                   
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
   12 = "UK/GB/ENGLAND"                                                    
   13 = "NONE OF THESE"                                                    
   14 = "DK";                                                              
   VALUE V220FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "ACCEPT MORE"                                                       
   2 = "CLOSER RELATIONS"                                                  
   3 = "DK";                                                               
   VALUE V221FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V222FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V223FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES, COULD BECOME A DANGER"                                        
   2 = "NO, NOT"                                                           
   3 = "DK";                                                               
   VALUE V224FT (MAX=40)                                                   
   1 = "SHOULD LEAVE EC"                                                   
   2 = "COMPL INDEPENDENCE"                                                
   3 = "INCR CONFORM TO EC"                                                
   4 = "UNITED STATES"                                                     
   5 = "DK"                                                                
   9 = "INAP - NOT 7 IN V7";                                               
   VALUE V225FT (MAX=40)                                                   
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DIDNT VOTE"                                                        
   4 = "DONT REMEMBER"                                                     
   5 = "REFUSAL"                                                           
   9 = "INAP - NOT 7 IN V7";                                               
   VALUE V226FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V227FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V228FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V229FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V230FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V231FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V232FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V233FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V234FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V235FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V236FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V237FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V238FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V239FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V240FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V241FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V242FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V243FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V244FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V245FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V246FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V247FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V248FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V249FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V250FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V251FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V252FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V253FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V254FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V255FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V256FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V257FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V258FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V259FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V260FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V261FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V262FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V263FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V264FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V265FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V266FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V267FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V268FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V269FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V270FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V271FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V272FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V273FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V274FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V275FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V276FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V277FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V278FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V279FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V280FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   8 = "<NA>"                                                              
   9 = "INAP - DOCUMENT";                                                  
   VALUE V281FT (MAX=40)                                                   
   1 = "FOR"                                                               
   2 = "AGAINST"                                                           
   3 = "DK"                                                                
   9 = "INAP - NOT 7 IN V7";                                               
   VALUE V282FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "FOR"                                                               
   2 = "AGAINST"                                                           
   3 = "DK"                                                                
   9 = "INAP - NOT 2 3 V281";                                              
   VALUE V283FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "IN LAST DAYS"                                                      
   2 = "DURING CAMPAIGN"                                                   
   3 = "BEFORE CAMPAIGN"                                                   
   4 = "DK"                                                                
   9 = "INAP - DOCUMENT";                                                  
   VALUE V284FT (MAX=40)                                                   
   1 = "NO"                                                                
   2 = "SOCIALDEMOKRATIET"                                                 
   3 = "RADIKALE VENSTRE"                                                  
   4 = "KONSERV FOLKEPARTI"                                                
   5 = "CENTRUM DEMOKRATERNE"                                              
   6 = "SOCIALIST FOLKEPARTI"                                              
   7 = "JUNIBEVAEGELSEN"                                                   
   8 = "FOLKEBEVAEGELSEN"                                                  
   9 = "KRISTEL FOLKEPARTI"                                                
   10 = "VENSTRE"                                                          
   11 = "FREMSKRIDTSPARTIET"                                               
   12 = "SPOILING MY VOTE"                                                 
   13 = "NOT VOTING AT ALL"                                                
   14 = "DONT KNOW"                                                        
   15 = "REFUSAL"                                                          
   99 = "INAP - DOCUMENT";                                                 
   VALUE V285FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   97 = "REFUSAL"                                                          
   98 = "DK";                                                              
   VALUE V286FT (MAX=40)                                                   
   1 = "LEFT"                                                              
   2 = "CENTRE"                                                            
   3 = "RIGHT"                                                             
   4 = "NA/DK/REFUSAL";                                                    
   VALUE V287FT (MAX=40)                                                   
   1 = "(1-4) LEFT"                                                        
   2 = "(5-6) CENTRE"                                                      
   3 = "(7-10) RIGHT"                                                      
   4 = "NA/DK/REFUSAL";                                                    
   VALUE V288FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V289FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V290FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V291FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V292FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V293FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V294FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V295FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V296FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V297FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V298FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LEFT"                                                              
   10 = "RIGHT"                                                            
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V299FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "VERY CLOSE"                                                        
   2 = "FAIRLY CLOSE"                                                      
   3 = "MERELY SYMPATHISER"                                                
   4 = "CLOSE TO NO PARTY"                                                 
   5 = "DK";                                                               
   VALUE V300FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK"                                                                
   9 = "INAP - NOT 4 5 V299";                                              
   VALUE V301FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   90 = "OTHER PARTY"                                                      
   95 = "<SEE DOCUMENT>"                                                   
   97 = "<SEE DOCUMENT>"                                                   
   98 = "NO ANSWER/DK"                                                     
   99 = "INAP";                                                            
   VALUE V302FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "CLOSE TO MY PARTY"                                                 
   2 = "NOT BUT A SIMILAR"                                                 
   3 = "CLOSE TO ANOTHER"                                                  
   4 = "NOT CLOSE TO ANY"                                                  
   5 = "DK"                                                                
   9 = "INAP - DOCUMENT";                                                  
   VALUE V303FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "VERY CLOSE"                                                        
   2 = "FAIRLY CLOSE"                                                      
   3 = "MERELY SYMPATHISER"                                                
   4 = "DK"                                                                
   9 = "INAP - NOT 1-3 V302";                                              
   VALUE V304FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "VERY CLOSE"                                                        
   2 = "FAIRLY CLOSE"                                                      
   3 = "MERELY SYMPATHISER"                                                
   4 = "NOT CLOSE TO ANY"                                                  
   5 = "DK"                                                                
   9 = "INAP - NOT 2-3 V300";                                              
   VALUE V305FT (MAX=40)                                                   
   0 = "NO ANSWER/<NA>"                                                    
   90 = "OTHER PARTY"                                                      
   95 = "VOTE BLANK"                                                       
   96 = "WOULD NOT VOTE"                                                   
   98 = "DK";                                                              
   VALUE V306FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "VOTED"                                                             
   2 = "DID NOT VOTE"                                                      
   3 = "CANT REMEMB/REFUSED";                                              
   VALUE V307FT (MAX=40)                                                   
   0 = "NO ANSWER/<NA>"                                                    
   90 = "OTHER PARTY"                                                      
   95 = "VOTED BLANK/SPOILED"                                              
   98 = "DONT REMEMBER"                                                    
   99 = "INAP - NOT 1 V306";                                               
   VALUE V308FT (MAX=40)                                                   
   0 = "NO ANSWER"                                                         
   10 = "(RC) RIFUND COMUNIST"                                             
   11 = "(PDS) P DEM SINISTRA"                                             
   15 = "LISTA PANNELLA"                                                   
   16 = "LA RETE"                                                          
   19 = "PROGRESSISTI"                                                     
   20 = "(PSI) P SOCIALISTA"                                               
   31 = "SOCDEM P L LIBERTA"                                               
   42 = "(AD) ALLEANZA DEM"                                                
   50 = "FED D VERDI"                                                      
   61 = "(PPI) P POPOLARE"                                                 
   62 = "(CCD) C CRIST DEMOCR"                                             
   64 = "PATTO PER LITALIA"                                                
   71 = "FORZA ITALIA"                                                     
   72 = "POLO P L LIBERTA"                                                 
   73 = "POLO D BUON GOVERNO"                                              
   75 = "LEGA NORD"                                                        
   80 = "(AN) ALL NAZIONALE"                                               
   90 = "OTHER PARTY"                                                      
   95 = "DID VOTE BLANK"                                                   
   98 = "DONT REMEMBER"                                                    
   99 = "INAP";                                                            
   VALUE V309FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL PROBABLE"                                               
   10 = "VERY PROBABLE"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V310FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL PROBABLE"                                               
   10 = "VERY PROBABLE"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V311FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL PROBABLE"                                               
   10 = "VERY PROBABLE"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V312FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL PROBABLE"                                               
   10 = "VERY PROBABLE"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V313FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL PROBABLE"                                               
   10 = "VERY PROBABLE"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V314FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL PROBABLE"                                               
   10 = "VERY PROBABLE"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V315FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL PROBABLE"                                               
   10 = "VERY PROBABLE"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V316FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL PROBABLE"                                               
   10 = "VERY PROBABLE"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V317FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL PROBABLE"                                               
   10 = "VERY PROBABLE"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V318FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL PROBABLE"                                               
   10 = "VERY PROBABLE"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V319FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "NOT AT ALL PROBABLE"                                               
   10 = "VERY PROBABLE"                                                    
   11 = "DK"                                                               
   99 = "INAP - DOCUMENT";                                                 
   VALUE V320FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V321FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO"                                                                
   3 = "DK";                                                               
   VALUE V322FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "SINGLE"                                                            
   2 = "MARRIED"                                                           
   3 = "LIVING AS MARRIED"                                                 
   4 = "DIVORCED"                                                          
   5 = "SEPARATED"                                                         
   6 = "WIDOWED";                                                          
   VALUE V323FT (MAX=40)                                                   
   98 = "STILL STUDYING";                                                  
   VALUE V324FT (MAX=40)                                                   
   1 = "UP TO 14 YEARS"                                                    
   2 = "15 YEARS"                                                          
   3 = "16 YEARS"                                                          
   4 = "17 YEARS"                                                          
   5 = "18 YEARS"                                                          
   6 = "19 YEARS"                                                          
   7 = "20 YEARS"                                                          
   8 = "21 YEARS"                                                          
   9 = "22 YEARS AND OLDER"                                                
   10 = "STILL STUDYING";                                                  
   VALUE V325FT (MAX=40)                                                   
   1 = "MALE"                                                              
   2 = "FEMALE";                                                           
   VALUE V327FT (MAX=40)                                                   
   1 = "15-24 YEARS"                                                       
   2 = "25-39 YEARS"                                                       
   3 = "40-54 YEARS"                                                       
   4 = "55 YEARS AND OLDER";                                               
   VALUE V328FT (MAX=40)                                                   
   1 = "15-24 YEARS"                                                       
   2 = "25-34 YEARS"                                                       
   3 = "35-44 YEARS"                                                       
   4 = "45-54 YEARS"                                                       
   5 = "55-64 YEARS"                                                       
   6 = "65 YEARS AND OLDER";                                               
   VALUE V329FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "ONE PERSON"                                                        
   2 = "2"                                                                 
   3 = "3"                                                                 
   4 = "4"                                                                 
   5 = "5"                                                                 
   6 = "6"                                                                 
   7 = "7"                                                                 
   8 = "8"                                                                 
   9 = "9 AND MORE";                                                       
   VALUE V330FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V331FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V332FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V333FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V334FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V335FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V336FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V337FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V338FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V339FT (MAX=40)                                                   
   0 = "NOT MENTIONED"                                                     
   1 = "MENTIONED"                                                         
   9 = "<NA>";                                                             
   VALUE V340FT (MAX=40)                                                   
   0 = "<NA/NONE>"                                                         
   1 = "1"                                                                 
   2 = "2"                                                                 
   3 = "3"                                                                 
   4 = "4"                                                                 
   5 = "5"                                                                 
   6 = "6"                                                                 
   7 = "7"                                                                 
   8 = "8"                                                                 
   9 = "9"                                                                 
   10 = "10";                                                              
   VALUE V341FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LOOKING AFTER HH"                                                  
   2 = "STUDENT"                                                           
   3 = "UNEMPLOYED"                                                        
   4 = "RETIRED"                                                           
   5 = "FARMER"                                                            
   6 = "FISHERMAN"                                                         
   7 = "PROFESSIONAL"                                                      
   8 = "SHOPOWNER& CRAFTSMEN"                                              
   9 = "BUSINESS PROPRIETORS"                                              
   10 = "EMPLOYED PROFESSIONAL"                                            
   11 = "GENERAL MANAGEMENT"                                               
   12 = "MIDDLE MANAGEMENT"                                                
   13 = "EMPLOYED AT A DESK"                                               
   14 = "EMPLOYED TRAVELLING"                                              
   15 = "EMPLOYED SERVICE"                                                 
   16 = "SUPERVISOR"                                                       
   17 = "SKILLED MANUAL WORKER"                                            
   18 = "OTHER MANUAL WORKER";                                             
   VALUE V342FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "FARMER"                                                            
   2 = "FISHERMAN"                                                         
   3 = "PROFESSIONAL"                                                      
   4 = "SHOPOWNER& CRAFTSMEN"                                              
   5 = "BUSINESS PROPRIETORS"                                              
   6 = "EMPLOYED PROFESSIONAL"                                             
   7 = "GENERAL MANAGEMENT"                                                
   8 = "MIDDLE MANAGEMENT"                                                 
   9 = "EMPLOYED AT A DESK"                                                
   10 = "EMPLOYED TRAVELLING"                                              
   11 = "EMPLOYED SERVICE"                                                 
   12 = "SUPERVISOR"                                                       
   13 = "SKILLED MANUAL WORKER"                                            
   14 = "OTHER MANUAL WORKER"                                              
   15 = "NEVER ANY PAID WORK"                                              
   99 = "INAP - NOT 1-4 V341";                                             
   VALUE V343FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO";                                                               
   VALUE V344FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "YES"                                                               
   2 = "NO";                                                               
   VALUE V345FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "LOOKING AFTER HH"                                                  
   2 = "STUDENT"                                                           
   3 = "UNEMPLOYED"                                                        
   4 = "RETIRED"                                                           
   5 = "FARMER"                                                            
   6 = "FISHERMAN"                                                         
   7 = "PROFESSIONAL"                                                      
   8 = "SHOPOWNER& CRAFTSMEN"                                              
   9 = "BUSINESS PROPRIETORS"                                              
   10 = "EMPLOYED PROFESSIONAL"                                            
   11 = "GENERAL MANAGEMENT"                                               
   12 = "MIDDLE MANAGEMENT"                                                
   13 = "EMPLOYED AT A DESK"                                               
   14 = "EMPLOYED TRAVELLING"                                              
   15 = "EMPLOYED SERVICE"                                                 
   16 = "SUPERVISOR"                                                       
   17 = "SKILLED MANUAL WORKER"                                            
   18 = "OTHER MANUAL WORKER"                                              
   99 = "INAP - NOT 2 V344";                                               
   VALUE V346FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "FARMER"                                                            
   2 = "FISHERMAN"                                                         
   3 = "PROFESSIONAL"                                                      
   4 = "SHOPOWNER& CRAFTSMEN"                                              
   5 = "BUSINESS PROPRIETORS"                                              
   6 = "EMPLOYED PROFESSIONAL"                                             
   7 = "GENERAL MANAGEMENT"                                                
   8 = "MIDDLE MANAGEMENT"                                                 
   9 = "EMPLOYED AT A DESK"                                                
   10 = "EMPLOYED TRAVELLING"                                              
   11 = "EMPLOYED SERVICE"                                                 
   12 = "SUPERVISOR"                                                       
   13 = "SKILLED MANUAL WORKER"                                            
   14 = "OTHER MANUAL WORKER"                                              
   15 = "NEVER ANY PAID WORK"                                              
   99 = "INAP - NOT 1-4 V345";                                             
   VALUE V347FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "MIDDLE CLASS"                                                      
   2 = "LOWER MIDDLE CLASS"                                                
   3 = "WORKING CLASS"                                                     
   4 = "UPPER CLASS"                                                       
   5 = "UPPER MIDDLE CLASS"                                                
   6 = "REFUSES"                                                           
   7 = "OTHER"                                                             
   8 = "DK";                                                               
   VALUE V348FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "RURAL/VILLAGE"                                                     
   2 = "SMALL/MIDDLE TOWN"                                                 
   3 = "LARGE TOWN"                                                        
   4 = "DK";                                                               
   VALUE V349FT (MAX=40)                                                   
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
   10 = "DK";                                                              
   VALUE V350FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "SEVERAL TIMES A WEEK"                                              
   2 = "ONCE A WEEK"                                                       
   3 = "A FEW TIMES A YEAR"                                                
   4 = "ONCE A YEAR OR LESS"                                               
   5 = "NEVER"                                                             
   6 = "DK"                                                                
   9 = "INAP - NOT 1-4 V349";                                              
   VALUE V351FT (MAX=40)                                                   
   1 = "B"                                                                 
   2 = "T"                                                                 
   3 = "P"                                                                 
   4 = "F"                                                                 
   5 = "E"                                                                 
   6 = "H"                                                                 
   7 = "L"                                                                 
   8 = "N"                                                                 
   9 = "R"                                                                 
   10 = "M"                                                                
   11 = "S"                                                                
   12 = "K"                                                                
   97 = "REFUSAL"                                                          
   98 = "DK";                                                              
   VALUE V352FT (MAX=40)                                                   
   1 = "HIGHEST"                                                           
   2 = "+"                                                                 
   3 = "-"                                                                 
   4 = "LOWEST"                                                            
   5 = "DK/REFUSAL";                                                       
   VALUE V355FT (MAX=40)                                                   
   99 = "<NA>";                                                            
   VALUE V356FT (MAX=40)                                                   
   99 = "<NA>";                                                            
   VALUE V357FT (MAX=40)                                                   
   0 = "<NA>";                                                             
   VALUE V358FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "TWO (INTERV+RESP)"                                                 
   2 = "THREE"                                                             
   3 = "FOUR"                                                              
   4 = "FIVE OR MORE";                                                     
   VALUE V359FT (MAX=40)                                                   
   0 = "<NA>"                                                              
   1 = "EXCELLENT"                                                         
   2 = "FAIR"                                                              
   3 = "AVERAGE"                                                           
   4 = "BAD";                                                              
   VALUE V361FT (MAX=40)                                                   
   999 = "NO REGION I";                                                    
   VALUE V362FT (MAX=40)                                                   
   99 = "NO REGION II";                                                    
   VALUE V363FT (MAX=40)                                                   
   1 = "YES"                                                               
   2 = "NO";                                                               
   VALUE V364FT (MAX=40)                                                   
   1 = "BELGIE NL"                                                         
   2 = "BELGIQUE FR"                                                       
   9 = "INAP - NOT 2 IN V7";                                               
   VALUE V365FT (MAX=40)                                                   
   0 = "<OTHER ANSWERS/NA>"                                                
   1 = "FARMER &  FISHER"                                                  
   2 = "PROFESSIONALS"                                                     
   3 = "SHOP OWNER/CRAFTSMEN"                                              
   4 = "BUSINESS PROPRIETORS"                                              
   5 = "EMPLOYED PROFESS"                                                  
   6 = "GENERAL MANAGEMENT"                                                
   7 = "MIDDLE MANAGEMENT"                                                 
   8 = "EMPLOYED AT A DESK"                                                
   9 = "EMPLOYED TRAVELLING"                                               
   10 = "EMPLOYED SERVICE JOB"                                             
   11 = "SUPERVISORS"                                                      
   12 = "SKILLED MAN WORKERS"                                              
   13 = "OTHER MANUAL WORKER";                                             
   VALUE V366FT (MAX=40)                                                   
   0 = "<OTHER ANSWERS/NA>"                                                
   1 = "SELF-EMPLOYED"                                                     
   2 = "MANAGERS"                                                          
   3 = "OTHER WHITE COLLARS"                                               
   4 = "MANUAL WORKERS"                                                    
   5 = "HOUSE PERSON"                                                      
   6 = "UNEMPLOYED";                                                       
*/                                                                         
                                                                           
* SAS DATA, INFILE, INPUT STATEMENTS;                                      
                                                                           
DATA;                                                                      
INFILE "file-specification" LRECL=541;                                     
INPUT                                                                      
   V1 1-4                   V2 5-5                   V3 6-6                
   V4 7-11                  V5 12-13                 V6 14-20 .4           
   V7 21-22                 V8 23-29 .4              V9 30-36 .4           
   V10 37-38                V11 39-45 .4             V12 46-52 .4          
   V13 53-59 .4             V14 60-66 .4             V15 67-73 .4          
   V16 74-74                V17 75-75                V18 76-76             
   V19 77-77                V20 78-78                V21 79-79             
   V22 80-80                V23 81-81                V24 82-82             
   V25 83-83                V26 84-84                V27 85-85             
   V28 86-86                V29 87-87                V30 88-88             
   V31 89-89                V32 90-90                V33 91-91             
   V34 92-92                V35 93-93                V36 94-94             
   V37 95-95                V38 96-96                V39 97-97             
   V40 98-98                V41 99-99                V42 100-100           
   V43 101-101              V44 102-102              V45 103-103           
   V46 104-104              V47 105-105              V48 106-106           
   V49 107-107              V50 108-108              V51 109-109           
   V52 110-110              V53 111-111              V54 112-112           
   V55 113-113              V56 114-114              V57 115-115           
   V58 116-116              V59 117-118              V60 119-119           
   V61 120-120              V62 121-121              V63 122-122           
   V64 123-123              V65 124-124              V66 125-125           
   V67 126-126              V68 127-127              V69 128-128           
   V70 129-129              V71 130-130              V72 131-131           
   V73 132-132              V74 133-133              V75 134-134           
   V76 135-135              V77 136-136              V78 137-137           
   V79 138-138              V80 139-139              V81 140-140           
   V82 141-141              V83 142-142              V84 143-143           
   V85 144-144              V86 145-145              V87 146-146           
   V88 147-147              V89 148-148              V90 149-149           
   V91 150-150              V92 151-151              V93 152-152           
   V94 153-153              V95 154-154              V96 155-155           
   V97 156-156              V98 157-157              V99 158-158           
   V100 159-159             V101 160-161             V102 162-162          
   V103 163-164             V104 165-166             V105 167-168          
   V106 169-170             V107 171-172             V108 173-174          
   V109 175-176             V110 177-178             V111 179-180          
   V112 181-182             V113 183-184             V114 185-186          
   V115 187-187             V116 188-188             V117 189-189          
   V118 190-190             V119 191-191             V120 192-192          
   V121 193-193             V122 194-194             V123 195-195          
   V124 196-196             V125 197-197             V126 198-198          
   V127 199-199             V128 200-200             V129 201-201          
   V130 202-202             V131 203-203             V132 204-204          
   V133 205-206             V134 207-208             V135 209-210          
   V136 211-212             V137 213-214             V138 215-216          
   V139 217-218             V140 219-220             V141 221-222          
   V142 223-224             V143 225-226             V144 227-228          
   V145 229-230             V146 231-232             V147 233-234          
   V148 235-236             V149 237-238             V150 239-240          
   V151 241-242             V152 243-244             V153 245-246          
   V154 247-248             V155 249-250             V156 251-252          
   V157 253-254             V158 255-256             V159 257-258          
   V160 259-260             V161 261-262             V162 263-264          
   V163 265-266             V164 267-268             V165 269-270          
   V166 271-272             V167 273-274             V168 275-276          
   V169 277-278             V170 279-280             V171 281-282          
   V172 283-284             V173 285-286             V174 287-288          
   V175 289-290             V176 291-292             V177 293-293          
   V178 294-294             V179 295-296             V180 297-297          
   V181 298-298             V182 299-300             V183 301-301          
   V184 302-302             V185 303-303             V186 304-304          
   V187 305-305             V188 306-306             V189 307-307          
   V190 308-308             V191 309-309             V192 310-310          
   V193 311-311             V194 312-312             V195 313-313          
   V196 314-314             V197 315-315             V198 316-316          
   V199 317-317             V200 318-318             V201 319-319          
   V202 320-320             V203 321-321             V204 322-322          
   V205 323-323             V206 324-324             V207 325-325          
   V208 326-326             V209 327-327             V210 328-328          
   V211 329-329             V212 330-331             V213 332-332          
   V214 333-333             V215 334-334             V216 335-335          
   V217 336-336             V218 337-337             V219 338-339          
   V220 340-340             V221 341-341             V222 342-342          
   V223 343-343             V224 344-344             V225 345-345          
   V226 346-346             V227 347-347             V228 348-348          
   V229 349-349             V230 350-350             V231 351-351          
   V232 352-352             V233 353-353             V234 354-354          
   V235 355-355             V236 356-356             V237 357-357          
   V238 358-358             V239 359-359             V240 360-360          
   V241 361-361             V242 362-362             V243 363-363          
   V244 364-364             V245 365-365             V246 366-366          
   V247 367-367             V248 368-368             V249 369-369          
   V250 370-370             V251 371-371             V252 372-372          
   V253 373-373             V254 374-374             V255 375-375          
   V256 376-376             V257 377-377             V258 378-378          
   V259 379-379             V260 380-380             V261 381-381          
   V262 382-382             V263 383-383             V264 384-384          
   V265 385-385             V266 386-386             V267 387-387          
   V268 388-388             V269 389-389             V270 390-390          
   V271 391-391             V272 392-392             V273 393-393          
   V274 394-394             V275 395-395             V276 396-396          
   V277 397-397             V278 398-398             V279 399-399          
   V280 400-400             V281 401-401             V282 402-402          
   V283 403-403             V284 404-405             V285 406-407          
   V286 408-408             V287 409-409             V288 410-411          
   V289 412-413             V290 414-415             V291 416-417          
   V292 418-419             V293 420-421             V294 422-423          
   V295 424-425             V296 426-427             V297 428-429          
   V298 430-431             V299 432-432             V300 433-433          
   V301 434-435             V302 436-436             V303 437-437          
   V304 438-438             V305 439-440             V306 441-441          
   V307 442-443             V308 444-445             V309 446-447          
   V310 448-449             V311 450-451             V312 452-453          
   V313 454-455             V314 456-457             V315 458-459          
   V316 460-461             V317 462-463             V318 464-465          
   V319 466-467             V320 468-468             V321 469-469          
   V322 470-470             V323 471-472             V324 473-474          
   V325 475-475             V326 476-477             V327 478-478          
   V328 479-479             V329 480-480             V330 481-481          
   V331 482-482             V332 483-483             V333 484-484          
   V334 485-485             V335 486-486             V336 487-487          
   V337 488-488             V338 489-489             V339 490-490          
   V340 491-492             V341 493-494             V342 495-496          
   V343 497-497             V344 498-498             V345 499-500          
   V346 501-502             V347 503-503             V348 504-504          
   V349 505-506             V350 507-507             V351 508-509          
   V352 510-510             V353 511-512             V354 513-514          
   V355 515-516             V356 517-518             V357 519-521          
   V358 522-522             V359 523-523             V360 524-525          
   V361 526-528             V362 529-530             V363 531-531          
   V364 532-532             V365 533-534             V366 535-535          
   V367 536-541 ;                                                          
                                                                           
* SAS LABEL STATEMENT;                                                     
                                                                           
LABEL                                                                      
   V1 = "STUDY NUMBER"                                                     
   V2 = "EDITION NUMBER"                                                   
   V3 = "PART NUMBER"                                                      
   V4 = "ID SERIAL NUMBER"                                                 
   V5 = "NATION I (UNITED KINGDOM)"                                        
   V6 = "WEIGHT SPECIAL UNITED KINGDOM"                                    
   V7 = "NATION II (GB AND NORTHERN IRELAND)"                              
   V8 = "WEIGHT RESULT FROM TARGET"                                        
   V9 = "WEIGHT ADJUSTED TO STANDARD SIZE"                                 
   V10 = "NATION III (UNITED GERMANY)"                                     
   V11 = "WEIGHT SPECIAL GERMANY"                                          
   V12 = "WEIGHT EURO 6"                                                   
   V13 = "WEIGHT EURO 10"                                                  
   V14 = "WEIGHT EURO 12"                                                  
   V15 = "WEIGHT EURO 12 +"                                                
   V16 = "Q1A ELECTORAL REGISTER"                                          
   V17 = "Q1B NATIONALITY: BELGIUM"                                        
   V18 = "Q1B NATIONALITY: DENMARK"                                        
   V19 = "Q1B NATIONALITY: GERMANY"                                        
   V20 = "Q1B NATIONALITY: GREECE"                                         
   V21 = "Q1B NATIONALITY: SPAIN"                                          
   V22 = "Q1B NATIONALITY: FRANCE"                                         
   V23 = "Q1B NATIONALITY: IRELAND"                                        
   V24 = "Q1B NATIONALITY: ITALY"                                          
   V25 = "Q1B NATIONALITY: LUXEMBURG"                                      
   V26 = "Q1B NATIONALITY: NETHERLANDS"                                    
   V27 = "Q1B NATIONALITY: PORTUGAL"                                       
   V28 = "Q1B NATIONALITY: UNITED KINGDOM"                                 
   V29 = "Q1B NATIONALITY: OTHER COUNTRIES"                                
   V30 = "Q1B NATIONALITY: DK"                                             
   V31 = "Q1C REGISTERED FOR EUROPEAN ELECTIONS"                           
   V32 = "Q2 TRUST IN PEOPLE: ITALIANS"                                    
   V33 = "Q2 TRUST IN PEOPLE: GERMANS"                                     
   V34 = "Q2 TRUST IN PEOPLE: BRITISH"                                     
   V35 = "Q2 TRUST IN PEOPLE: IRISH"                                       
   V36 = "Q2 TRUST IN PEOPLE: BELGIANS"                                    
   V37 = "Q2 TRUST IN PEOPLE: LUXEMBURGERS"                                
   V38 = "Q2 TRUST IN PEOPLE: DUTCH"                                       
   V39 = "Q2 TRUST IN PEOPLE: DANES"                                       
   V40 = "Q2 TRUST IN PEOPLE: FRENCH"                                      
   V41 = "Q2 TRUST IN PEOPLE: SPANIARDS"                                   
   V42 = "Q2 TRUST IN PEOPLE: GREEKS"                                      
   V43 = "Q2 TRUST IN PEOPLE: PORTUGUESE"                                  
   V44 = "Q2 TRUST IN PEOPLE: AMERICANS"                                   
   V45 = "Q2 TRUST IN PEOPLE: JAPANESE"                                    
   V46 = "Q2 TRUST IN PEOPLE: RUSSIANS"                                    
   V47 = "Q3 POLITICAL INTEREST"                                           
   V48 = "Q4 POLITICAL INTEREST - EC MATTERS"                              
   V49 = "Q5 EUROPEAN UNIFICATION - FOR/AGAINST"                           
   V50 = "Q6 EC MEMBERSHIP - GOOD/BAD"                                     
   V51 = "Q7 EC MEMBERSHIP - CNTRY BENEFIT"                                
   V52 = "Q8 EC MEMBERSHIP - CNTRY BENEFIT FUTURE"                         
   V53 = "Q9 EC DISSOLUTION - REGRET"                                      
   V54 = "Q10 DEMOCRACY SATISFACTION"                                      
   V55 = "Q11 DEMOCRACY SATISFACTION EC"                                   
   V56 = "Q12 EC DECISION MAKING - STATEMENTS"                             
   V57 = "Q13 EC DECISION MAKING - SPECIFICATION"                          
   V58 = "Q14 EUROP ELECTION - PARTICIPATION 94"                           
   V59 = "Q15 VOTING BEHAVIOUR EUROP ELECTION"                             
   V60 = "Q16_1 EUROP ELECTION - GENDER PREFERENCE"                        
   V61 = "Q16_2 EUROP ELECTION - GENDER PREFERENCE"                        
   V62 = "Q17 EUROP ELECTION - GENDER IMPORTANCE"                          
   V63 = "Q18 EUROP ELECTION - FEMALE CANDIDATES"                          
   V64 = "Q20 KNOWLEDGE EUROP COMMISSION PRESIDENT"                        
   V65 = "Q20 KNOWLEDGE NAT EUROP COMMISSIONER"                            
   V66 = "Q20 KNOWLEDGE MINISTER OF FINANCE"                               
   V67 = "Q20 KNOWLEDGE MINISTER OF FOREIGN AFF"                           
   V68 = "Q21 POPULARITY BRITISH PRIME MINISTER"                           
   V69 = "Q22 POPULARITY SPANISH PRIME MINISTER"                           
   V70 = "Q23 POPULARITY FRENCH PRESIDENT"                                 
   V71 = "Q24 POPULARITY GERMAN CHANCELLOR"                                
   V72 = "Q25 EC MEMBER: DENMARK"                                          
   V73 = "Q25 EC MEMBER: SPAIN"                                            
   V74 = "Q25 EC MEMBER: POLAND"                                           
   V75 = "Q25 EC MEMBER: SWITZERLAND"                                      
   V76 = "Q25 EC MEMBER: IRELAND"                                          
   V77 = "Q25 EC MEMBER: AUSTRIA"                                          
   V78 = "Q25 EC MEMBER: FRANCE"                                           
   V79 = "Q25 EC MEMBER: TURKEY"                                           
   V80 = "Q25 EC MEMBER: PORTUGAL"                                         
   V81 = "Q25 EC MEMBER: HUNGARY"                                          
   V82 = "Q25 EC MEMBER: GERMANY"                                          
   V83 = "Q25 EC MEMBER: NORWAY"                                           
   V84 = "Q25 EC MEMBER: NONE OF THESE"                                    
   V85 = "Q25 EC MEMBER: DONT KNOW"                                        
   V86 = "Q26 EUROP UNIFICATION SPEED - NOWADAYS"                          
   V87 = "Q27 EUROP UNIFICATION SPEED - PREFERENCE"                        
   V88 = "Q28 EUROPEAN GOVERNMENT - FOR/AGAINST"                           
   V89 = "Q29 DECISION MAKING O EC BETTER BY WOMEN"                        
   V90 = "Q30 DECISION MAKING BY WOMEN - MEDIA"                            
   V91 = "Q30 DECISION MAKING BY WOMEN - PARTIES"                          
   V92 = "Q30 DECISION MAKING BY WOMEN - CHURCHES"                         
   V93 = "Q30 DECISION MAKING BY WOMEN - COMPANIES"                        
   V94 = "Q30 DECISION MAKING BY WOMEN - EDUCATION"                        
   V95 = "Q30 DECISION MAKING BY WOMEN - GOVERNMNT"                        
   V96 = "Q30 DECISION MAKING BY WOMEN - UNIONS"                           
   V97 = "Q30 DECISION MAKING BY WOMEN - REGIONS"                          
   V98 = "Q30 DECISION MAKING BY WOMEN - LOCAL AUT"                        
   V99 = "Q30 DECISION MAKING BY WOMEN - EC INSTIT"                        
   V100 = "Q30 DECISION MAKING BY WOMEN - DONT KNOW"                       
   V101 = "Q31 EUROPEAN CITIZENSHIP FEELING - SCALE"                       
   V102 = "Q32 EC AND COUNTRY INTEREST - CONFIDENCE"                       
   V103 = "Q33 EC AND PEOPLE - RELY ON EUROP COMMIS"                       
   V104 = "Q33 EC AND PEOPLE - RELY ON GOVERNMENT"                         
   V105 = "Q33 EC AND PEOPLE - RELY ON EUROP COURT"                        
   V106 = "Q33 EC AND PEOPLE - RELY ON COUNCIL O M"                        
   V107 = "Q33 EC AND PEOPLE - RELY ON NAT PARLIAM"                        
   V108 = "Q33 EC AND PEOPLE - RELY ON EUR PARLIAM"                        
   V109 = "Q36 EUR PARLIAMENT - POWER"                                     
   V110 = "Q36 NAT PARLIAMENT - POWER"                                     
   V111 = "Q37 EUR PARLIAMENT - EFFECT ON PEOPLE"                          
   V112 = "Q37 NAT PARLIAMENT - EFFECT ON PEOPLE"                          
   V113 = "Q38 UNITED EUROPE - GOOD/BAD PERSONALLY"                        
   V114 = "Q38 UNITED EUROPE - GOOD/BAD GOVERNMENT"                        
   V115 = "Q39 EUR ELECTION CAMPAIGN - PARTY WORKER"                       
   V116 = "Q39 EUR ELECTION CAMPAIGN - LEAFLETS"                           
   V117 = "Q39 EUR ELECTION CAMPAIGN - ADVERTISING"                        
   V118 = "Q39 EUR ELECTION CAMPAIGN - NEWSPAPERS"                         
   V119 = "Q39 EUR ELECTION CAMPAIGN - TV RADIO"                           
   V120 = "Q39 EUR ELECTION CAMPAIGN - DISCUSSION"                         
   V121 = "Q39 EUR ELECTION CAMPAIGN - NONE O THESE"                       
   V122 = "Q39 EUR ELECTION CAMPAIGN - DK"                                 
   V123 = "Q40 EUR ELECTION NOT VOTED - KNOWLEDGE"                         
   V124 = "Q40 EUR ELECTION NOT VOTED - NOT WORTH"                         
   V125 = "Q40 EUR ELECTION NOT VOTED - INTERESTS"                         
   V126 = "Q40 EUR ELECTION NOT VOTED - NAT PROBL"                         
   V127 = "Q40 EUR ELECTION NOT VOTED - CONFUSION"                         
   V128 = "Q40 EUR ELECTION NOT VOTED - PARTIES"                           
   V129 = "Q40 EUR ELECTION NOT VOTED - CANDIDATES"                        
   V130 = "Q40 EUR ELECTION NOT VOTED - WOMAN REPR"                        
   V131 = "Q40 EUR ELECTION NOT VOTED - DK"                                
   V132 = "Q41 EUR ELECTION MORE FEMALE CANDIDATES"                        
   V133 = "Q42 EUR ELECTION - SEATS FOR PARTIES"                           
   V134 = "Q42 NAT ELECTION - SEATS FOR PARTIES"                           
   V135 = "Q43 EUR ELECTION - SEATS FOR CANDIDATES"                        
   V136 = "Q43 NAT ELECTION - SEATS FOR CANDIDATES"                        
   V137 = "Q44 EC COM CURRENCY PREFERENCE - RESP"                          
   V138 = "Q44 EC COM CURRENCY PREFERENCE - PARTY A"                       
   V139 = "Q44 EC COM CURRENCY PREFERENCE - PARTY B"                       
   V140 = "Q44 EC COM CURRENCY PREFERENCE - PARTY C"                       
   V141 = "Q44 EC COM CURRENCY PREFERENCE - PARTY D"                       
   V142 = "Q44 EC COM CURRENCY PREFERENCE - PARTY E"                       
   V143 = "Q44 EC COM CURRENCY PREFERENCE - PARTY F"                       
   V144 = "Q44 EC COM CURRENCY PREFERENCE - PARTY G"                       
   V145 = "Q44 EC COM CURRENCY PREFERENCE - PARTY H"                       
   V146 = "Q44 EC COM CURRENCY PREFERENCE - PARTY I"                       
   V147 = "Q44 EC COM CURRENCY PREFERENCE - PARTY J"                       
   V148 = "Q44 EC COM CURRENCY PREFERENCE - PARTY K"                       
   V149 = "Q45 EC EMPLOMENT POL PREFERNCE - RESP"                          
   V150 = "Q45 EC EMPLOMENT POL PREFERNCE - PARTY A"                       
   V151 = "Q45 EC EMPLOMENT POL PREFERNCE - PARTY B"                       
   V152 = "Q45 EC EMPLOMENT POL PREFERNCE - PARTY C"                       
   V153 = "Q45 EC EMPLOMENT POL PREFERNCE - PARTY D"                       
   V154 = "Q45 EC EMPLOMENT POL PREFERNCE - PARTY E"                       
   V155 = "Q45 EC EMPLOMENT POL PREFERNCE - PARTY F"                       
   V156 = "Q45 EC EMPLOMENT POL PREFERNCE - PARTY G"                       
   V157 = "Q45 EC EMPLOMENT POL PREFERNCE - PARTY H"                       
   V158 = "Q45 EC EMPLOMENT POL PREFERNCE - PARTY I"                       
   V159 = "Q45 EC EMPLOMENT POL PREFERNCE - PARTY J"                       
   V160 = "Q45 EC EMPLOMENT POL PREFERNCE - PARTY K"                       
   V161 = "Q46 EC NAT BORDERS PREFERENCE - RESP"                           
   V162 = "Q46 EC NAT BORDERS PREFERENCE - PARTY A"                        
   V163 = "Q46 EC NAT BORDERS PREFERENCE - PARTY B"                        
   V164 = "Q46 EC NAT BORDERS PREFERENCE - PARTY C"                        
   V165 = "Q46 EC NAT BORDERS PREFERENCE - PARTY D"                        
   V166 = "Q46 EC NAT BORDERS PREFERENCE - PARTY E"                        
   V167 = "Q46 EC NAT BORDERS PREFERENCE - PARTY F"                        
   V168 = "Q46 EC NAT BORDERS PREFERENCE - PARTY G"                        
   V169 = "Q46 EC NAT BORDERS PREFERENCE - PARTY H"                        
   V170 = "Q46 EC NAT BORDERS PREFERENCE - PARTY I"                        
   V171 = "Q46 EC NAT BORDERS PREFERENCE - PARTY J"                        
   V172 = "Q46 EC NAT BORDERS PREFERENCE - PARTY K"                        
   V173 = "Q47 POL PROB MOST IMP - 1ST"                                    
   V174 = "Q47 POL PROB MOST IMP - 2ND"                                    
   V175 = "Q47 POL PROB MOST IMP - 3RD"                                    
   V176 = "Q48A POL PROB MOST IMP 1ST - BEST PARTY"                        
   V177 = "Q48B POL PROB MOST IMP 1ST - DEALT LEVEL"                       
   V178 = "Q48C POL PROB MOST IMP 1ST - APPRP LEVEL"                       
   V179 = "Q49A POL PROB MOST IMP 2ND - BEST PARTY"                        
   V180 = "Q49B POL PROB MOST IMP 2ND - DEALT LEVEL"                       
   V181 = "Q49C POL PROB MOST IMP 2ND - APPRP LEVEL"                       
   V182 = "Q50A POL PROB MOST IMP 3RD - BEST PARTY"                        
   V183 = "Q50B POL PROB MOST IMP 3RD - DEALT LEVEL"                       
   V184 = "Q50C POL PROB MOST IMP 3RD - APPRP LEVEL"                       
   V185 = "Q51 EC SINGLE MARKET - COUNTRY ADVANTAGE"                       
   V186 = "Q52 EC COMMON CURRENCY - FAVOUR"                                
   V187 = "Q53 EC COMMON CURRENCY - AND/OR OWN"                            
   V188 = "Q54A APPROVAL NATURE PROTECTION GROUPS"                         
   V189 = "Q54B APPROVAL ECOLOGY MOVEMENT"                                 
   V190 = "Q54C APPROVAL ANTI-NUCLEAR POW MOVEMENTS"                       
   V191 = "Q54D APPROVAL PEACE MOVEMENT"                                   
   V192 = "Q54E APPROVAL WOMEN'S MOVEMENT"                                 
   V193 = "Q55A MEMBERSH NATURE PROTECTION GROUPS"                         
   V194 = "Q55B MEMBERSH ECOLOGY MOVEMENT"                                 
   V195 = "Q55C MEMBERSH ANTI-NUCLEAR POW MOVEMENTS"                       
   V196 = "Q55D MEMBERSH PEACE MOVEMENT"                                   
   V197 = "Q56 WOMEN I DECISION MAKNG - EQ OPPORT"                         
   V198 = "Q56 WOMEN I DECISION MAKNG - FAMILY POL"                        
   V199 = "Q56 WOMEN I DECISION MAKNG - EMPLOYMENT"                        
   V200 = "Q56 WOMEN I DECISION MAKNG - HEALTH POL"                        
   V201 = "Q56 WOMEN I DECISION MAKNG - CONSUMER"                          
   V202 = "Q56 WOMEN I DECISION MAKNG - ENVIRONMNT"                        
   V203 = "Q56 WOMEN I DECISION MAKNG - EDUCATION"                         
   V204 = "Q56 WOMEN I DECISION MAKNG - FOREIGN POL"                       
   V205 = "Q56 WOMEN I DECISION MAKNG - FGHT CRIME"                        
   V206 = "Q56 WOMEN I DECISION MAKNG - INDUST POL"                        
   V207 = "Q56 WOMEN I DECISION MAKNG - THIRD WORLD"                       
   V208 = "Q56 WOMEN I DECISION MAKNG - RURAL POL"                         
   V209 = "Q57 FOREIGN POPULATION - QUANTITY"                              
   V210 = "Q58 FOREIGN POPULATION - RIGHTS"                                
   V211 = "Q59 IMMIGRATION PROBLEM - ASSESSMENT"                           
   V212 = "Q60 EC COUNTRY - MOST IMMIGRANTS"                               
   V213 = "Q61 FOREIGNERS - REDUCE EDUCATION LEVEL"                        
   V214 = "Q61 FOREIGNERS - EXPLOIT SOCIAL WELFARE"                        
   V215 = "Q61 FOREIGNERS - INCREASE UNEMPLOYMENT"                         
   V216 = "Q61 FOREIGNERS - CAUSE DELINQUENCY"                             
   V217 = "Q61 FOREIGNERS - PROBLEMS AS NEIGHBOURS"                        
   V218 = "Q61 FOREIGNERS - MARRIAGE ENDS BADLY"                           
   V219 = "Q62 EC COUNTRY - RELY MOST ON"                                  
   V220 = "Q63 EC MEMBERSHIP - FUTURE PREFERENCE"                          
   V221 = "Q64 WORLD CONFLICTS - GRTR GERMAN SHARE"                        
   V222 = "Q65 WORLD CONFLICTS - GRTR EC SHARE"                            
   V223 = "Q66 UNITED GERMANY A DANGER TO EUROPE"                          
   V224 = "Q1_DK EC FUTURE - DENMARKS COLLABORATION"                       
   V225 = "Q2_DK MAASTRICHT REFERENDUM VOTE"                               
   V226 = "Q3_DK EUROP ELECTION VOTE - REASON #1"                          
   V227 = "Q3_DK EUROP ELECTION VOTE - REASON #2"                          
   V228 = "Q3_DK EUROP ELECTION VOTE - REASON #3"                          
   V229 = "Q3_DK EUROP ELECTION VOTE - REASON #4"                          
   V230 = "Q3_DK EUROP ELECTION VOTE - REASON #5"                          
   V231 = "Q3_DK EUROP ELECTION VOTE - REASON #6"                          
   V232 = "Q3_DK EUROP ELECTION VOTE - REASON #7"                          
   V233 = "Q3_DK EUROP ELECTION VOTE - REASON #8"                          
   V234 = "Q3_DK EUROP ELECTION VOTE - REASON #9"                          
   V235 = "Q3_DK EUROP ELECTION VOTE - REASON #10"                         
   V236 = "Q3_DK EUROP ELECTION VOTE - REASON #11"                         
   V237 = "Q3_DK EUROP ELECTION VOTE - REASON #12"                         
   V238 = "Q3_DK EUROP ELECTION VOTE - REASON #13"                         
   V239 = "Q3_DK EUROP ELECTION VOTE - REASON #14"                         
   V240 = "Q3_DK EUROP ELECTION VOTE - REASON #15"                         
   V241 = "Q3_DK EUROP ELECTION VOTE - REASON #16"                         
   V242 = "Q3_DK EUROP ELECTION VOTE - REASON #17"                         
   V243 = "Q3_DK EUROP ELECTION VOTE - REASON #18"                         
   V244 = "Q3_DK EUROP ELECTION VOTE - REASON #19"                         
   V245 = "Q3_DK EUROP ELECTION VOTE - REASON #20"                         
   V246 = "Q3_DK EUROP ELECTION VOTE - REASON #21"                         
   V247 = "Q3_DK EUROP ELECTION VOTE - REASON #22"                         
   V248 = "Q3_DK EUROP ELECTION VOTE - REASON #23"                         
   V249 = "Q3_DK EUROP ELECTION VOTE - REASON #24"                         
   V250 = "Q3_DK EUROP ELECTION VOTE - REASON #25"                         
   V251 = "Q3_DK EUROP ELECTION VOTE - REASON #26"                         
   V252 = "Q3_DK EUROP ELECTION VOTE - REASON #27"                         
   V253 = "Q3_DK EUROP ELECTION VOTE - REASON #28"                         
   V254 = "Q3_DK EUROP ELECTION VOTE - REASON #29"                         
   V255 = "Q3_DK EUROP ELECTION VOTE - REASON #30"                         
   V256 = "Q3_DK EUROP ELECTION VOTE - REASON #31"                         
   V257 = "Q3_DK EUROP ELECTION VOTE - REASON #32"                         
   V258 = "Q3_DK EUROP ELECTION VOTE - REASON #33"                         
   V259 = "Q3_DK EUROP ELECTION VOTE - REASON #34"                         
   V260 = "Q3_DK EUROP ELECTION VOTE - REASON #35"                         
   V261 = "Q3_DK EUROP ELECTION VOTE - REASON #36"                         
   V262 = "Q3_DK EUROP ELECTION VOTE - REASON #37"                         
   V263 = "Q3_DK EUROP ELECTION VOTE - REASON #38"                         
   V264 = "Q3_DK EUROP ELECTION VOTE - REASON #39"                         
   V265 = "Q3_DK EUROP ELECTION VOTE - REASON #40"                         
   V266 = "Q3_DK EUROP ELECTION VOTE - REASON #41"                         
   V267 = "Q3_DK EUROP ELECTION VOTE - REASON #42"                         
   V268 = "Q3_DK EUROP ELECTION VOTE - REASON #43"                         
   V269 = "Q3_DK EUROP ELECTION VOTE - REASON #44"                         
   V270 = "Q3_DK EUROP ELECTION VOTE - REASON #45"                         
   V271 = "Q3_DK EUROP ELECTION VOTE - REASON #46"                         
   V272 = "Q3_DK EUROP ELECTION VOTE - REASON #47"                         
   V273 = "Q3_DK EUROP ELECTION VOTE - REASON #48"                         
   V274 = "Q3_DK EUROP ELECTION VOTE - REASON #49"                         
   V275 = "Q3_DK EUROP ELECTION VOTE - REASON #50"                         
   V276 = "Q3_DK EUROP ELECTION VOTE - REASON #51"                         
   V277 = "Q3_DK EUROP ELECTION VOTE - REASON #52"                         
   V278 = "Q3_DK EUROP ELECTION VOTE - REASON #53"                         
   V279 = "Q3_DK EUROP ELECTION VOTE - REASON #54"                         
   V280 = "Q3_DK EUROP ELECTION VOTE - REASON #55"                         
   V281 = "Q4A_DK EC MEMBERSHIP VOTE - FOR/AGAINST"                        
   V282 = "Q4B_DK EC MEMBERSHIP WITHDRAWAL"                                
   V283 = "Q5_DK EUROP ELECTION VOTE - DECISION"                           
   V284 = "Q6_DK EUROP ELECTION VOTE - CONSIDERED"                         
   V285 = "D1 LEFT-RIGHT PLACEMENT"                                        
   V286 = "D1 LEFT-RIGHT PLACEMENT - HARMONISED"                           
   V287 = "D1 LEFT-RIGHT PLACEMENT - RECODED"                              
   V288 = "D1A LEFT-RIGHT PLACEMENT POLIT PARTY A"                         
   V289 = "D1A LEFT-RIGHT PLACEMENT POLIT PARTY B"                         
   V290 = "D1A LEFT-RIGHT PLACEMENT POLIT PARTY C"                         
   V291 = "D1A LEFT-RIGHT PLACEMENT POLIT PARTY D"                         
   V292 = "D1A LEFT-RIGHT PLACEMENT POLIT PARTY E"                         
   V293 = "D1A LEFT-RIGHT PLACEMENT POLIT PARTY F"                         
   V294 = "D1A LEFT-RIGHT PLACEMENT POLIT PARTY G"                         
   V295 = "D1A LEFT-RIGHT PLACEMENT POLIT PARTY H"                         
   V296 = "D1A LEFT-RIGHT PLACEMENT POLIT PARTY I"                         
   V297 = "D1A LEFT-RIGHT PLACEMENT POLIT PARTY J"                         
   V298 = "D1A LEFT-RIGHT PLACEMENT POLIT PARTY K"                         
   V299 = "D2A PARTY ATTACHMENT"                                           
   V300 = "D2B PARTY ATTACHMENT - REPEATED"                                
   V301 = "D3 PARTY ATTACHMENT - WHICH PARTY"                              
   V302 = "D3A PARTY ATTACHMENT COMPARED - FATHER"                         
   V303 = "D3B PARTY ATTACHMENT - FATHER (ROUTE 1)"                        
   V304 = "D3C PARTY ATTACHMENT - FATHER (ROUTE 2)"                        
   V305 = "D4 VOTE INTENTION"                                              
   V306 = "D5A ELECTORAL PARTICIPATION - NATIONAL"                         
   V307 = "D5 VOTING BEHAVIOUR LAST NAT ELECTION"                          
   V308 = "D5_I VOTING BEHAVIOUR LAST SENAT ELECT"                         
   V309 = "D5B PROBABILITY TO VOTE PARTY A"                                
   V310 = "D5B PROBABILITY TO VOTE PARTY B"                                
   V311 = "D5B PROBABILITY TO VOTE PARTY C"                                
   V312 = "D5B PROBABILITY TO VOTE PARTY D"                                
   V313 = "D5B PROBABILITY TO VOTE PARTY E"                                
   V314 = "D5B PROBABILITY TO VOTE PARTY F"                                
   V315 = "D5B PROBABILITY TO VOTE PARTY G"                                
   V316 = "D5B PROBABILITY TO VOTE PARTY H"                                
   V317 = "D5B PROBABILITY TO VOTE PARTY I"                                
   V318 = "D5B PROBABILITY TO VOTE PARTY J"                                
   V319 = "D5B PROBABILITY TO VOTE PARTY K"                                
   V320 = "D6A TRADE UNION MEMBER - RESPONDENT"                            
   V321 = "D6B TRADE UNION MEMBER - ELSE IN HH"                            
   V322 = "D7 MARITAL STATUS"                                              
   V323 = "D8 AGE EDUCATION"                                               
   V324 = "D8 AGE EDUCATION - RECODED"                                     
   V325 = "D10 SEX"                                                        
   V326 = "D11 AGE EXACT"                                                  
   V327 = "D11 AGE RECODED - 4 GROUPS"                                     
   V328 = "D11 AGE RECODED - 6 GROUPS"                                     
   V329 = "D12 HOUSEHOLD SIZE"                                             
   V330 = "D14 IN HH: COLOUR TV SET"                                       
   V331 = "D14 IN HH: VIDEO RECORDER"                                      
   V332 = "D14 IN HH: VIDEO CAMERA"                                        
   V333 = "D14 IN HH: RADIO-CLOCK"                                         
   V334 = "D14 IN HH: PC/HOME COMPUTER"                                    
   V335 = "D14 IN HH: STILL CAMERA"                                        
   V336 = "D14 IN HH: ELECTRIC DRILL"                                      
   V337 = "D14 IN HH: ELECTRIC DEEP FAT FRYER"                             
   V338 = "D14 IN HH: TWO OR MORE CARS"                                    
   V339 = "D14 IN HH: SECOND HOME OR HOLIDAY FLAT"                         
   V340 = "D14 RECODED - NUMBER OF OBJECTS IN HH"                          
   V341 = "D15A OCCUPATION OF RESPONDENT"                                  
   V342 = "D15B OCCUPATION OF R - LAST JOB"                                
   V343 = "D19A HH MAINLY LOOKING AFTER HOME"                              
   V344 = "D19B HH MAINLY INCOME (HEAD OF HH)"                             
   V345 = "D21A OCCUPATION HEAD OF HOUSEHOLD"                              
   V346 = "D21B OCCUPATION HEAD OF HH - LAST JOB"                          
   V347 = "D23 SOCIAL CLASS SUBJECTIVE"                                    
   V348 = "D25 TYPE OF COMMUNITY"                                          
   V349 = "D26 RELIGION - DENOMINATION"                                    
   V350 = "D27 RELIGION - CHURCH ATTENDANCE"                               
   V351 = "D29 INCOME HH"                                                  
   V352 = "D29 INCOME HH QUARTILES (HARMONISED)"                           
   V353 = "P1 INTERVIEW DATE - DAY"                                        
   V354 = "P1 INTERVIEW DATE - MONTH"                                      
   V355 = "P2 INTERVIEW BEGIN - HOUR"                                      
   V356 = "P2 INTERVIEW BEGIN - MINUTES"                                   
   V357 = "P3 INTERVIEW DURATION - MINUTES"                                
   V358 = "P4 N OF PERSONS PRESENT DURING INTERVIEW"                       
   V359 = "P5 RESPONDENT COOPERATION"                                      
   V360 = "P6 SIZE OF COMMUNITY"                                           
   V361 = "P7 REGION I"                                                    
   V362 = "P7 REGION II (REGION I RECODED)"                                
   V363 = "P12 TELEPHONE AVAILABLE IN HH"                                  
   V364 = "P13 LANGUAGE OF QUESTIONNAIRE (BELGIUM)"                        
   V365 = "C4 SOCIO PROF STATUS (OCCUPATION RECODE)"                       
   V366 = "C14 OCCUPATION OF RESPONDENT - SCALE"                           
   V367 = "ORIGINAL INRA RESPONDENT ID";                                   
                                                                           
* USER-DEFINED MISSING VALUE RECODE TO SAS SYSMIS;                         
                                                                           
/*                                                                         
   IF V16=0 THEN V16=.;                IF V17=9 THEN V17=.;                
   IF V18=9 THEN V18=.;                IF V19=9 THEN V19=.;                
   IF V20=9 THEN V20=.;                IF V21=9 THEN V21=.;                
   IF V22=9 THEN V22=.;                IF V23=9 THEN V23=.;                
   IF V24=9 THEN V24=.;                IF V25=9 THEN V25=.;                
   IF V26=9 THEN V26=.;                IF V27=9 THEN V27=.;                
   IF V28=9 THEN V28=.;                IF V29=9 THEN V29=.;                
   IF V30=9 THEN V30=.;                IF V31 IN (0, 9) THEN V31=.;        
   IF V32 IN (0, 5) THEN V32=.;        IF V33 IN (0, 5) THEN V33=.;        
   IF V34 IN (0, 5) THEN V34=.;        IF V35 IN (0, 5) THEN V35=.;        
   IF V36 IN (0, 5) THEN V36=.;        IF V37 IN (0, 5) THEN V37=.;        
   IF V38 IN (0, 5) THEN V38=.;        IF V39 IN (0, 5) THEN V39=.;        
   IF V40 IN (0, 5) THEN V40=.;        IF V41 IN (0, 5) THEN V41=.;        
   IF V42 IN (0, 5) THEN V42=.;        IF V43 IN (0, 5) THEN V43=.;        
   IF V44 IN (0, 5) THEN V44=.;        IF V45 IN (0, 5) THEN V45=.;        
   IF V46 IN (0, 5) THEN V46=.;        IF V47 IN (0, 5) THEN V47=.;        
   IF V48 IN (0, 5) THEN V48=.;        IF V49 IN (0, 5) THEN V49=.;        
   IF V50 IN (0, 4) THEN V50=.;        IF V51 IN (0, 3) THEN V51=.;        
   IF V52 IN (0, 3) THEN V52=.;        IF V53 IN (0, 4) THEN V53=.;        
   IF V54 IN (0, 5) THEN V54=.;        IF V55 IN (0, 5) THEN V55=.;        
   IF V56 IN (0, 6) THEN V56=.;        IF V57 IN (3, 9) THEN V57=.;        
   IF V58 IN (0, 3) THEN V58=.;        IF V59 GE 98 OR V59=0 THEN V59=.;   
   IF V60 GE 5 OR V60=0 THEN V60=.;    IF V61 GE 6 OR V61=0 THEN V61=.;    
   IF V62 GE 5 OR V62=0 THEN V62=.;    IF V63 GE 6 OR V63=0 THEN V63=.;    
   IF V64 IN (0, 3) THEN V64=.;        IF V65 IN (0, 3) THEN V65=.;        
   IF V66 IN (0, 3) THEN V66=.;        IF V67 IN (0, 3) THEN V67=.;        
   IF V68 IN (0, 3) THEN V68=.;        IF V69 IN (0, 3) THEN V69=.;        
   IF V70 IN (0, 3) THEN V70=.;        IF V71 IN (0, 3) THEN V71=.;        
   IF V72=9 THEN V72=.;                IF V73=9 THEN V73=.;                
   IF V74=9 THEN V74=.;                IF V75=9 THEN V75=.;                
   IF V76=9 THEN V76=.;                IF V77=9 THEN V77=.;                
   IF V78=9 THEN V78=.;                IF V79=9 THEN V79=.;                
   IF V80=9 THEN V80=.;                IF V81=9 THEN V81=.;                
   IF V82=9 THEN V82=.;                IF V83=9 THEN V83=.;                
   IF V84=9 THEN V84=.;                IF V85=9 THEN V85=.;                
   IF V86 IN (0, 8) THEN V86=.;        IF V87 IN (0, 8) THEN V87=.;        
   IF V88 IN (0, 3) THEN V88=.;        IF V89 IN (0, 3) THEN V89=.;        
   IF V90 IN (8, 9) THEN V90=.;        IF V91 IN (8, 9) THEN V91=.;        
   IF V92 IN (8, 9) THEN V92=.;        IF V93 IN (8, 9) THEN V93=.;        
   IF V94 IN (8, 9) THEN V94=.;        IF V95 IN (8, 9) THEN V95=.;        
   IF V96 IN (8, 9) THEN V96=.;        IF V97 IN (8, 9) THEN V97=.;        
   IF V98 IN (8, 9) THEN V98=.;        IF V99 IN (8, 9) THEN V99=.;        
   IF V100 IN (8, 9) THEN V100=.;      IF V101 IN (0, 11) THEN V101=.;     
   IF V102 IN (0, 5) THEN V102=.;      IF V103 IN (0, 11) THEN V103=.;     
   IF V104 IN (0, 11) THEN V104=.;     IF V105 IN (0, 11) THEN V105=.;     
   IF V106 IN (0, 11) THEN V106=.;     IF V107 IN (0, 11) THEN V107=.;     
   IF V108 IN (0, 11) THEN V108=.;     IF V109 IN (0, 11) THEN V109=.;     
   IF V110 IN (0, 11) THEN V110=.;     IF V111 IN (0, 11) THEN V111=.;     
   IF V112 IN (0, 11) THEN V112=.;     IF V113 IN (0, 11) THEN V113=.;     
   IF V114 IN (0, 11) THEN V114=.;     IF V115=9 THEN V115=.;              
   IF V116=9 THEN V116=.;              IF V117=9 THEN V117=.;              
   IF V118=9 THEN V118=.;              IF V119=9 THEN V119=.;              
   IF V120=9 THEN V120=.;              IF V121=9 THEN V121=.;              
   IF V122=9 THEN V122=.;              IF V123=9 THEN V123=.;              
   IF V124=9 THEN V124=.;              IF V125=9 THEN V125=.;              
   IF V126=9 THEN V126=.;              IF V127=9 THEN V127=.;              
   IF V128=9 THEN V128=.;              IF V129=9 THEN V129=.;              
   IF V130=9 THEN V130=.;              IF V131=9 THEN V131=.;              
   IF V132 IN (0, 3) THEN V132=.;      IF V133 IN (0, 11) THEN V133=.;     
   IF V134 IN (0, 11) THEN V134=.;     IF V135 IN (0, 11) THEN V135=.;     
   IF V136 IN (0, 11) THEN V136=.;     IF V137 IN (0, 11) THEN V137=.;     
   IF V138 GE 11 OR V138=0 THEN V138=.;                                    
   IF V139 GE 11 OR V139=0 THEN V139=.;                                    
   IF V140 GE 11 OR V140=0 THEN V140=.;                                    
   IF V141 GE 11 OR V141=0 THEN V141=.;                                    
   IF V142 GE 11 OR V142=0 THEN V142=.;                                    
   IF V143 GE 11 OR V143=0 THEN V143=.;                                    
   IF V144 GE 11 OR V144=0 THEN V144=.;                                    
   IF V145 GE 11 OR V145=0 THEN V145=.;                                    
   IF V146 GE 11 OR V146=0 THEN V146=.;                                    
   IF V147 GE 11 OR V147=0 THEN V147=.;                                    
   IF V148 GE 11 OR V148=0 THEN V148=.;                                    
   IF V149 IN (0, 11) THEN V149=.;     IF V150 GE 11 OR V150=0 THEN V150=.;
   IF V151 GE 11 OR V151=0 THEN V151=.;                                    
   IF V152 GE 11 OR V152=0 THEN V152=.;                                    
   IF V153 GE 11 OR V153=0 THEN V153=.;                                    
   IF V154 GE 11 OR V154=0 THEN V154=.;                                    
   IF V155 GE 11 OR V155=0 THEN V155=.;                                    
   IF V156 GE 11 OR V156=0 THEN V156=.;                                    
   IF V157 GE 11 OR V157=0 THEN V157=.;                                    
   IF V158 GE 11 OR V158=0 THEN V158=.;                                    
   IF V159 GE 11 OR V159=0 THEN V159=.;                                    
   IF V160 GE 11 OR V160=0 THEN V160=.;                                    
   IF V161 IN (0, 11) THEN V161=.;     IF V162 GE 11 OR V162=0 THEN V162=.;
   IF V163 GE 11 OR V163=0 THEN V163=.;                                    
   IF V164 GE 11 OR V164=0 THEN V164=.;                                    
   IF V165 GE 11 OR V165=0 THEN V165=.;                                    
   IF V166 GE 11 OR V166=0 THEN V166=.;                                    
   IF V167 GE 11 OR V167=0 THEN V167=.;                                    
   IF V168 GE 11 OR V168=0 THEN V168=.;                                    
   IF V169 GE 11 OR V169=0 THEN V169=.;                                    
   IF V170 GE 11 OR V170=0 THEN V170=.;                                    
   IF V171 GE 11 OR V171=0 THEN V171=.;                                    
   IF V172 GE 11 OR V172=0 THEN V172=.;                                    
   IF V173 IN (0, 12) THEN V173=.;     IF V174 IN (0, 12) THEN V174=.;     
   IF V175 IN (0, 12) THEN V175=.;     IF V176 GE 96 OR V176=0 THEN V176=.;
   IF V177 GE 4 OR V177=0 THEN V177=.;                                     
   IF V178 GE 4 OR V178=0 THEN V178=.;                                     
   IF V179 GE 96 OR V179=0 THEN V179=.;                                    
   IF V180 GE 4 OR V180=0 THEN V180=.;                                     
   IF V181 GE 4 OR V181=0 THEN V181=.;                                     
   IF V182 GE 96 OR V182=0 THEN V182=.;                                    
   IF V183 GE 4 OR V183=0 THEN V183=.;                                     
   IF V184 GE 4 OR V184=0 THEN V184=.;                                     
   IF V185 IN (0, 3) THEN V185=.;      IF V186 IN (0, 3) THEN V186=.;      
   IF V187 GE 3 OR V187=0 THEN V187=.;                                     
   IF V188 GE 5 OR V188=0 THEN V188=.;                                     
   IF V189 GE 5 OR V189=0 THEN V189=.;                                     
   IF V190 GE 5 OR V190=0 THEN V190=.;                                     
   IF V191 GE 5 OR V191=0 THEN V191=.;                                     
   IF V192 GE 5 OR V192=0 THEN V192=.;                                     
   IF V193 GE 4 OR V193=0 THEN V193=.;                                     
   IF V194 GE 4 OR V194=0 THEN V194=.;                                     
   IF V195 GE 4 OR V195=0 THEN V195=.;                                     
   IF V196 GE 4 OR V196=0 THEN V196=.;                                     
   IF V197 IN (0, 3) THEN V197=.;      IF V198 IN (0, 3) THEN V198=.;      
   IF V199 IN (0, 3) THEN V199=.;      IF V200 IN (0, 3) THEN V200=.;      
   IF V201 IN (0, 3) THEN V201=.;      IF V202 IN (0, 3) THEN V202=.;      
   IF V203 IN (0, 3) THEN V203=.;      IF V204 IN (0, 3) THEN V204=.;      
   IF V205 IN (0, 3) THEN V205=.;      IF V206 IN (0, 3) THEN V206=.;      
   IF V207 IN (0, 3) THEN V207=.;      IF V208 IN (0, 3) THEN V208=.;      
   IF V209 IN (0, 4) THEN V209=.;      IF V210 IN (0, 4) THEN V210=.;      
   IF V211 IN (0, 3) THEN V211=.;      IF V212 IN (0, 14) THEN V212=.;     
   IF V213 IN (0, 3) THEN V213=.;      IF V214 IN (0, 3) THEN V214=.;      
   IF V215 IN (0, 3) THEN V215=.;      IF V216 IN (0, 3) THEN V216=.;      
   IF V217 IN (0, 3) THEN V217=.;      IF V218 IN (0, 3) THEN V218=.;      
   IF V219 IN (0, 14) THEN V219=.;     IF V220 IN (0, 3) THEN V220=.;      
   IF V221 IN (0, 3) THEN V221=.;      IF V222 IN (0, 3) THEN V222=.;      
   IF V223 IN (0, 3) THEN V223=.;      IF V224 GE 5 OR V224=0 THEN V224=.; 
   IF V225 GE 4 OR V225=0 THEN V225=.;                                     
   IF V226 IN (8, 9) THEN V226=.;      IF V227 IN (8, 9) THEN V227=.;      
   IF V228 IN (8, 9) THEN V228=.;      IF V229 IN (8, 9) THEN V229=.;      
   IF V230 IN (8, 9) THEN V230=.;      IF V231 IN (8, 9) THEN V231=.;      
   IF V232 IN (8, 9) THEN V232=.;      IF V233 IN (8, 9) THEN V233=.;      
   IF V234 IN (8, 9) THEN V234=.;      IF V235 IN (8, 9) THEN V235=.;      
   IF V236 IN (8, 9) THEN V236=.;      IF V237 IN (8, 9) THEN V237=.;      
   IF V238 IN (8, 9) THEN V238=.;      IF V239 IN (8, 9) THEN V239=.;      
   IF V240 IN (8, 9) THEN V240=.;      IF V241 IN (8, 9) THEN V241=.;      
   IF V242 IN (8, 9) THEN V242=.;      IF V243 IN (8, 9) THEN V243=.;      
   IF V244 IN (8, 9) THEN V244=.;      IF V245 IN (8, 9) THEN V245=.;      
   IF V246 IN (8, 9) THEN V246=.;      IF V247 IN (8, 9) THEN V247=.;      
   IF V248 IN (8, 9) THEN V248=.;      IF V249 IN (8, 9) THEN V249=.;      
   IF V250 IN (8, 9) THEN V250=.;      IF V251 IN (8, 9) THEN V251=.;      
   IF V252 IN (8, 9) THEN V252=.;      IF V253 IN (8, 9) THEN V253=.;      
   IF V254 IN (8, 9) THEN V254=.;      IF V255 IN (8, 9) THEN V255=.;      
   IF V256 IN (8, 9) THEN V256=.;      IF V257 IN (8, 9) THEN V257=.;      
   IF V258 IN (8, 9) THEN V258=.;      IF V259 IN (8, 9) THEN V259=.;      
   IF V260 IN (8, 9) THEN V260=.;      IF V261 IN (8, 9) THEN V261=.;      
   IF V262 IN (8, 9) THEN V262=.;      IF V263 IN (8, 9) THEN V263=.;      
   IF V264 IN (8, 9) THEN V264=.;      IF V265 IN (8, 9) THEN V265=.;      
   IF V266 IN (8, 9) THEN V266=.;      IF V267 IN (8, 9) THEN V267=.;      
   IF V268 IN (8, 9) THEN V268=.;      IF V269 IN (8, 9) THEN V269=.;      
   IF V270 IN (8, 9) THEN V270=.;      IF V271 IN (8, 9) THEN V271=.;      
   IF V272 IN (8, 9) THEN V272=.;      IF V273 IN (8, 9) THEN V273=.;      
   IF V274 IN (8, 9) THEN V274=.;      IF V275 IN (8, 9) THEN V275=.;      
   IF V276 IN (8, 9) THEN V276=.;      IF V277 IN (8, 9) THEN V277=.;      
   IF V278 IN (8, 9) THEN V278=.;      IF V279 IN (8, 9) THEN V279=.;      
   IF V280 IN (8, 9) THEN V280=.;      IF V281 GE 3 OR V281=0 THEN V281=.; 
   IF V282 GE 3 OR V282=0 THEN V282=.;                                     
   IF V283 GE 4 OR V283=0 THEN V283=.;                                     
   IF V284 GE 15 OR V284=0 THEN V284=.;                                    
   IF V285 GE 97 OR V285=0 THEN V285=.;                                    
   IF V286=4 THEN V286=.;              IF V287=4 THEN V287=.;              
   IF V288 GE 11 OR V288=0 THEN V288=.;                                    
   IF V289 GE 11 OR V289=0 THEN V289=.;                                    
   IF V290 GE 11 OR V290=0 THEN V290=.;                                    
   IF V291 GE 11 OR V291=0 THEN V291=.;                                    
   IF V292 GE 11 OR V292=0 THEN V292=.;                                    
   IF V293 GE 11 OR V293=0 THEN V293=.;                                    
   IF V294 GE 11 OR V294=0 THEN V294=.;                                    
   IF V295 GE 11 OR V295=0 THEN V295=.;                                    
   IF V296 GE 11 OR V296=0 THEN V296=.;                                    
   IF V297 GE 11 OR V297=0 THEN V297=.;                                    
   IF V298 GE 11 OR V298=0 THEN V298=.;                                    
   IF V299 IN (0, 5) THEN V299=.;      IF V300 GE 3 OR V300=0 THEN V300=.; 
   IF V301 GE 95 OR V301=0 THEN V301=.;                                    
   IF V302 GE 5 OR V302=0 THEN V302=.;                                     
   IF V303 GE 4 OR V303=0 THEN V303=.;                                     
   IF V304 GE 5 OR V304=0 THEN V304=.;                                     
   IF V305 GE 98 OR V305=0 THEN V305=.;                                    
   IF V306 IN (0, 3) THEN V306=.;      IF V307 GE 98 OR V307=0 THEN V307=.;
   IF V308 GE 98 OR V308=0 THEN V308=.;                                    
   IF V309 GE 11 OR V309=0 THEN V309=.;                                    
   IF V310 GE 11 OR V310=0 THEN V310=.;                                    
   IF V311 GE 11 OR V311=0 THEN V311=.;                                    
   IF V312 GE 11 OR V312=0 THEN V312=.;                                    
   IF V313 GE 11 OR V313=0 THEN V313=.;                                    
   IF V314 GE 11 OR V314=0 THEN V314=.;                                    
   IF V315 GE 11 OR V315=0 THEN V315=.;                                    
   IF V316 GE 11 OR V316=0 THEN V316=.;                                    
   IF V317 GE 11 OR V317=0 THEN V317=.;                                    
   IF V318 GE 11 OR V318=0 THEN V318=.;                                    
   IF V319 GE 11 OR V319=0 THEN V319=.;                                    
   IF V320 IN (0, 3) THEN V320=.;      IF V321 IN (0, 3) THEN V321=.;      
   IF V322=0 THEN V322=.;              IF V329=0 THEN V329=.;              
   IF V330=9 THEN V330=.;              IF V331=9 THEN V331=.;              
   IF V332=9 THEN V332=.;              IF V333=9 THEN V333=.;              
   IF V334=9 THEN V334=.;              IF V335=9 THEN V335=.;              
   IF V336=9 THEN V336=.;              IF V337=9 THEN V337=.;              
   IF V338=9 THEN V338=.;              IF V339=9 THEN V339=.;              
   IF V340=0 THEN V340=.;              IF V341=0 THEN V341=.;              
   IF V342 IN (0, 99) THEN V342=.;     IF V343=0 THEN V343=.;              
   IF V344=0 THEN V344=.;              IF V345 IN (0, 99) THEN V345=.;     
   IF V346 IN (0, 99) THEN V346=.;     IF V347 IN (0, 8) THEN V347=.;      
   IF V348 IN (0, 4) THEN V348=.;      IF V349 IN (0, 10) THEN V349=.;     
   IF V350 GE 6 OR V350=0 THEN V350=.;                                     
   IF V351 IN (97, 98) THEN V351=.;    IF V352=5 THEN V352=.;              
   IF V355=99 THEN V355=.;             IF V356=99 THEN V356=.;             
   IF V357=0 THEN V357=.;              IF V358=0 THEN V358=.;              
   IF V359=0 THEN V359=.;              IF V361=999 THEN V361=.;            
   IF V362=99 THEN V362=.;             IF V364=9 THEN V364=.;              
   IF V365=0 THEN V365=.;              IF V366=0 THEN V366=.;              
                                                                           
*/                                                                         
                                                                           
* SAS FORMAT STATEMENT;                                                    
                                                                           
/*                                                                         
FORMAT                                                                     
   V2 V2FT.               V5 V5FT.               V7 V7FT.                  
   V10 V10FT.             V16 V16FT.             V17 V17FT.                
   V18 V18FT.             V19 V19FT.             V20 V20FT.                
   V21 V21FT.             V22 V22FT.             V23 V23FT.                
   V24 V24FT.             V25 V25FT.             V26 V26FT.                
   V27 V27FT.             V28 V28FT.             V29 V29FT.                
   V30 V30FT.             V31 V31FT.             V32 V32FT.                
   V33 V33FT.             V34 V34FT.             V35 V35FT.                
   V36 V36FT.             V37 V37FT.             V38 V38FT.                
   V39 V39FT.             V40 V40FT.             V41 V41FT.                
   V42 V42FT.             V43 V43FT.             V44 V44FT.                
   V45 V45FT.             V46 V46FT.             V47 V47FT.                
   V48 V48FT.             V49 V49FT.             V50 V50FT.                
   V51 V51FT.             V52 V52FT.             V53 V53FT.                
   V54 V54FT.             V55 V55FT.             V56 V56FT.                
   V57 V57FT.             V58 V58FT.             V59 V59FT.                
   V60 V60FT.             V61 V61FT.             V62 V62FT.                
   V63 V63FT.             V64 V64FT.             V65 V65FT.                
   V66 V66FT.             V67 V67FT.             V68 V68FT.                
   V69 V69FT.             V70 V70FT.             V71 V71FT.                
   V72 V72FT.             V73 V73FT.             V74 V74FT.                
   V75 V75FT.             V76 V76FT.             V77 V77FT.                
   V78 V78FT.             V79 V79FT.             V80 V80FT.                
   V81 V81FT.             V82 V82FT.             V83 V83FT.                
   V84 V84FT.             V85 V85FT.             V86 V86FT.                
   V87 V87FT.             V88 V88FT.             V89 V89FT.                
   V90 V90FT.             V91 V91FT.             V92 V92FT.                
   V93 V93FT.             V94 V94FT.             V95 V95FT.                
   V96 V96FT.             V97 V97FT.             V98 V98FT.                
   V99 V99FT.             V100 V100FT.           V101 V101FT.              
   V102 V102FT.           V103 V103FT.           V104 V104FT.              
   V105 V105FT.           V106 V106FT.           V107 V107FT.              
   V108 V108FT.           V109 V109FT.           V110 V110FT.              
   V111 V111FT.           V112 V112FT.           V113 V113FT.              
   V114 V114FT.           V115 V115FT.           V116 V116FT.              
   V117 V117FT.           V118 V118FT.           V119 V119FT.              
   V120 V120FT.           V121 V121FT.           V122 V122FT.              
   V123 V123FT.           V124 V124FT.           V125 V125FT.              
   V126 V126FT.           V127 V127FT.           V128 V128FT.              
   V129 V129FT.           V130 V130FT.           V131 V131FT.              
   V132 V132FT.           V133 V133FT.           V134 V134FT.              
   V135 V135FT.           V136 V136FT.           V137 V137FT.              
   V138 V138FT.           V139 V139FT.           V140 V140FT.              
   V141 V141FT.           V142 V142FT.           V143 V143FT.              
   V144 V144FT.           V145 V145FT.           V146 V146FT.              
   V147 V147FT.           V148 V148FT.           V149 V149FT.              
   V150 V150FT.           V151 V151FT.           V152 V152FT.              
   V153 V153FT.           V154 V154FT.           V155 V155FT.              
   V156 V156FT.           V157 V157FT.           V158 V158FT.              
   V159 V159FT.           V160 V160FT.           V161 V161FT.              
   V162 V162FT.           V163 V163FT.           V164 V164FT.              
   V165 V165FT.           V166 V166FT.           V167 V167FT.              
   V168 V168FT.           V169 V169FT.           V170 V170FT.              
   V171 V171FT.           V172 V172FT.           V173 V173FT.              
   V174 V174FT.           V175 V175FT.           V176 V176FT.              
   V177 V177FT.           V178 V178FT.           V179 V179FT.              
   V180 V180FT.           V181 V181FT.           V182 V182FT.              
   V183 V183FT.           V184 V184FT.           V185 V185FT.              
   V186 V186FT.           V187 V187FT.           V188 V188FT.              
   V189 V189FT.           V190 V190FT.           V191 V191FT.              
   V192 V192FT.           V193 V193FT.           V194 V194FT.              
   V195 V195FT.           V196 V196FT.           V197 V197FT.              
   V198 V198FT.           V199 V199FT.           V200 V200FT.              
   V201 V201FT.           V202 V202FT.           V203 V203FT.              
   V204 V204FT.           V205 V205FT.           V206 V206FT.              
   V207 V207FT.           V208 V208FT.           V209 V209FT.              
   V210 V210FT.           V211 V211FT.           V212 V212FT.              
   V213 V213FT.           V214 V214FT.           V215 V215FT.              
   V216 V216FT.           V217 V217FT.           V218 V218FT.              
   V219 V219FT.           V220 V220FT.           V221 V221FT.              
   V222 V222FT.           V223 V223FT.           V224 V224FT.              
   V225 V225FT.           V226 V226FT.           V227 V227FT.              
   V228 V228FT.           V229 V229FT.           V230 V230FT.              
   V231 V231FT.           V232 V232FT.           V233 V233FT.              
   V234 V234FT.           V235 V235FT.           V236 V236FT.              
   V237 V237FT.           V238 V238FT.           V239 V239FT.              
   V240 V240FT.           V241 V241FT.           V242 V242FT.              
   V243 V243FT.           V244 V244FT.           V245 V245FT.              
   V246 V246FT.           V247 V247FT.           V248 V248FT.              
   V249 V249FT.           V250 V250FT.           V251 V251FT.              
   V252 V252FT.           V253 V253FT.           V254 V254FT.              
   V255 V255FT.           V256 V256FT.           V257 V257FT.              
   V258 V258FT.           V259 V259FT.           V260 V260FT.              
   V261 V261FT.           V262 V262FT.           V263 V263FT.              
   V264 V264FT.           V265 V265FT.           V266 V266FT.              
   V267 V267FT.           V268 V268FT.           V269 V269FT.              
   V270 V270FT.           V271 V271FT.           V272 V272FT.              
   V273 V273FT.           V274 V274FT.           V275 V275FT.              
   V276 V276FT.           V277 V277FT.           V278 V278FT.              
   V279 V279FT.           V280 V280FT.           V281 V281FT.              
   V282 V282FT.           V283 V283FT.           V284 V284FT.              
   V285 V285FT.           V286 V286FT.           V287 V287FT.              
   V288 V288FT.           V289 V289FT.           V290 V290FT.              
   V291 V291FT.           V292 V292FT.           V293 V293FT.              
   V294 V294FT.           V295 V295FT.           V296 V296FT.              
   V297 V297FT.           V298 V298FT.           V299 V299FT.              
   V300 V300FT.           V301 V301FT.           V302 V302FT.              
   V303 V303FT.           V304 V304FT.           V305 V305FT.              
   V306 V306FT.           V307 V307FT.           V308 V308FT.              
   V309 V309FT.           V310 V310FT.           V311 V311FT.              
   V312 V312FT.           V313 V313FT.           V314 V314FT.              
   V315 V315FT.           V316 V316FT.           V317 V317FT.              
   V318 V318FT.           V319 V319FT.           V320 V320FT.              
   V321 V321FT.           V322 V322FT.           V323 V323FT.              
   V324 V324FT.           V325 V325FT.           V327 V327FT.              
   V328 V328FT.           V329 V329FT.           V330 V330FT.              
   V331 V331FT.           V332 V332FT.           V333 V333FT.              
   V334 V334FT.           V335 V335FT.           V336 V336FT.              
   V337 V337FT.           V338 V338FT.           V339 V339FT.              
   V340 V340FT.           V341 V341FT.           V342 V342FT.              
   V343 V343FT.           V344 V344FT.           V345 V345FT.              
   V346 V346FT.           V347 V347FT.           V348 V348FT.              
   V349 V349FT.           V350 V350FT.           V351 V351FT.              
   V352 V352FT.           V355 V355FT.           V356 V356FT.              
   V357 V357FT.           V358 V358FT.           V359 V359FT.              
   V361 V361FT.           V362 V362FT.           V363 V363FT.              
   V364 V364FT.           V365 V365FT.           V366 V366FT.;             
*/                                                                         
                                                                           
* Users may add their own data transformation commands here ;              
