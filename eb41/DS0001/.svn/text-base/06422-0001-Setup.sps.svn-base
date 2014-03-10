/*                                                                         
/*             SPSS DATA DEFINITION STATEMENTS FOR ICPSR 6422              
/*         EURO-BAROMETER 41.0: TRADE ISSUES, BLOOD DONATION, AIDS         
/*                     AND SMOKING, MARCH-JUNE, 1994                       
/*                         (FOURTH ICPSR EDITION)                          
/*                             FEBRUARY, 1998                              
/*                                                                         
/*                                                                         
/*   Four SPSS setup sections are provided for the LRECL version           
/*   of this data collection.  These sections are listed below;            
/*                                                                         
/*   DATA LIST: assigns the name, type, decimal specification (if          
/*   any), and specifies the beginning and ending column locations         
/*   for each variable in the data file. Users must replace the            
/*   "physical-filename" with host computer specific input file            
/*   specifications.                                                       
/*                                                                         
/*   VARIABLE LABELS assigns descriptive labels for all variables in the   
/*   data file.                                                            
/*                                                                         
/*   VALUE LABELS assigns value labels to the values found in the data     
/*   file.                                                                 
/*                                                                         
/*   MISSING VALUES contains SPSS program statements that specify          
/*   data values as missing.                                               
/*                                                                         
/*   Users may combine and modify these sections or parts of these         
/*   sections to suit their specific needs.  Users may also need to        
/*   change the file-specification in the DATA LIST statement to an        
/*   appropriate filename for their system.                                
/*                                                                         
/*   These SPSS statements were either produced or edited by ICPSR.        
/*   Users should consult the codebook for full question text.             
/*                                                                         
/*   These data definition statements have been tested for compatibility   
/*   with SPSS Release 5.0 for UNIX and/or SPSS Release 6.1 for Windows.   
/*                                                                         
/* ************************************************************************
/*                                                                         
/*   PLEASE NOTICE, THAT STARTING WITH EUROBAROMETER 38.0                  
/*   AND IN ACCORDANCE WITH EARLIER ICPSR/ZA CODEBOOKS,                    
/*   THE CODING SCHEME FOR MISSING VALUES HAS CHANGED.                     
/*                                                                         
/*   FOR COUNTRY SPECIFIC CODING AND OTHER REMARKS                         
/*   PLEASE REFER TO THE RESPECTIVE DOCUMENT STATEMENTS.                   
/*                                                                         
/* COMMENT ****************************************************************
/*                                                                         
/* NON-NATIONAL EU CITIZENS OVERSAMPLE:                                    
/* IN THIS EUROBAROMETER AN OVERSAMPLE OF NON-NATIONAL BUT EU CITIZENS     
/* WAS ADDED FOR EXPERIMENTAL PURPOSE. ON TOP OF THE NORMAL 1000           
/* NATIONAL RESPONDENTS, A VARYING NUMBER OF EU CITIZENS HAS BEEN          
/* ADDED WHICH HAD TO HAVE ONE OF THE OTHER ELEVEN NATIONALITIES. THIS     
/* OVERSAMPLING DOES NOT APPLY FOR NORWAY AND FINLAND. IN TOTAL 373        
/* EXTRA-INTERVIEWS WERE MADE IN ACCORDANCE TO THE PROPORTION OF           
/* NON-NATIONALS IN EACH COUNTRY.  IN ORDER TO PRODUCE RESULTS FOR         
/* NATIONALS ONLY (FOR A VALID COMPAR- ISON WITH PREVIOUS EUROBAROMETER    
/* SURVEYS), ONE SHOULD FILTER THE DATA WITH V538 AND USE WEIGHTS "W1"     
/* TO "W8" (V6 V8 V9 V11 TO V15). IN ORDER TO FOCUS ON THE ENTIRE TARGET   
/* (I.E. INCLUDING NON-NATIONALS) ONE SHOULD FILTER THE DATA USING         
/* VARIABLE V536 AND WEIGHTS "WN1" TO "WN8" (V18 TO V25). AS FINLAND AND   
/* NORWAY ARE EXCEPTIONS THEY SHOULD BE WEIGHTED USING V16 (NORWAY) AND    
/* V17 (FINLAND) RESPECTIVELY. (FILTER VARIABLE V535 INCLUDES NORWAY AND   
/* FINLAND). FILTER VARIABLES V535, V536 AND V538 DO ALL EXCLUDE THE       
/* SECOND OVERSAMPLE OF <<PEOPLE RESPONSIBLE FOR SHOPPING>>.               
/*                                                                         
/* PEOPLE RESPONSIBLE FOR SHOPPING OVERSAMPLE:                             
/* IN ADDITION, ANOTHER OVERSAMPLE OF <<PEOPLE RESPONSIBLE FOR             
/* SHOPPING>> (D19A) WAS ADDED. 300 EXTRA-RESPONDENTS PER COUNTRY          
/* (EXCEPT NORTHERN IRELAND, FINLAND AND NORWAY) WERE ASKED ONLY A         
/* LIMITED SUBSET OF QUESTIONS: THE SUBSTANTIVE QUESTIONS Q.1 TO Q.15,     
/* A SELECTION OF DEMO- GRAFICS (D.7, D.8, D.10, D.11, D.12, D.14,         
/* D.15A/B, D.19A/B, D.25 AND D.29) AND THE USUAL PROTOCOL VARIABLES       
/* (P.1 TO P.7). IN ORDER TO ANALYSE THESE QUESTIONS, BOTH IN THE          
/* STANDARD AND IN THE OVERSAMPLE, ONE SHOULD FILTER THE DATA USING        
/* SPLIT VARIABLE V537 AND WEIGHTS "WO1" TO "WO8" (V26 TO V33). V537       
/* IS CODED '1' FOR OVERSAMPLE RESPONDENTS AND IF STANDARD RESPONDENTS     
/* (BOTH NATIONALS AND NON-NATIONALS) ARE <<RESPONSIBLE FOR SHOPPING>>,    
/* I.E. CODED '1' IN V451 (D19A).                                          
/*                                                                         
/* COMMENT ************************************************************* */
                                                                           
                                                                           
FILE LABEL    EUROBAROMETER 41.0.                                          
FILE HANDLE DA6422 / NAME='physical-filename' / LRECL=752.                 
DATA LIST FILE=DA6422 /                                                    
   V1 1-4                   V2 5                     V3 6                  
   V4 7-11                  V5 12-13                 V6 14-20  (4)         
   V7 21-22                 V8 23-29  (4)            V9 30-36  (4)         
   V10 37-38                V11 39-45  (4)           V12 46-52  (4)        
   V13 53-59  (4)           V14 60-66  (4)           V15 67-73  (4)        
   V16 74-80  (4)           V17 81-87  (4)           V18 88-94  (4)        
   V19 95-101  (4)          V20 102-108  (4)         V21 109-115  (4)      
   V22 116-122  (4)         V23 123-129  (4)         V24 130-136  (4)      
   V25 137-143  (4)         V26 144-150  (4)         V27 151-157  (4)      
   V28 158-164  (4)         V29 165-171  (4)         V30 172-178  (4)      
   V31 179-185  (4)         V32 186-192  (4)         V33 193-199  (4)      
   V34 200                  V35 201-202              V36 203               
   V37 204                  V38 205                  V39 206               
   V40 207                  V41 208                  V42 209               
   V43 210                  V44 211                  V45 212               
   V46 213                  V47 214                  V48 215               
   V49 216                  V50 217                  V51 218               
   V52 219                  V53 220                  V54 221               
   V55 222                  V56 223                  V57 224               
   V58 225                  V59 226                  V60 227               
   V61 228                  V62 229                  V63 230               
   V64 231                  V65 232                  V66 233               
   V67 234                  V68 235                  V69 236               
   V70 237                  V71 238                  V72 239               
   V73 240                  V74 241                  V75 242               
   V76 243                  V77 244                  V78 245               
   V79 246                  V80 247                  V81 248               
   V82 249                  V83 250                  V84 251               
   V85 252                  V86 253                  V87 254               
   V88 255                  V89 256                  V90 257               
   V91 258                  V92 259                  V93 260               
   V94 261                  V95 262                  V96 263               
   V97 264                  V98 265                  V99 266               
   V100 267                 V101 268                 V102 269              
   V103 270                 V104 271                 V105 272-273          
   V106 274                 V107 275                 V108 276-277          
   V109 278                 V110 279-280             V111 281              
   V112 282                 V113 283                 V114 284              
   V115 285                 V116 286                 V117 287              
   V118 288                 V119 289                 V120 290              
   V121 291                 V122 292                 V123 293              
   V124 294                 V125 295                 V126 296              
   V127 297                 V128 298                 V129 299              
   V130 300                 V131 301                 V132 302              
   V133 303                 V134 304                 V135 305              
   V136 306                 V137 307                 V138 308              
   V139 309                 V140 310                 V141 311              
   V142 312                 V143 313                 V144 314              
   V145 315                 V146 316                 V147 317              
   V148 318                 V149 319                 V150 320              
   V151 321                 V152 322                 V153 323              
   V154 324                 V155 325                 V156 326              
   V157 327                 V158 328                 V159 329              
   V160 330                 V161 331                 V162 332              
   V163 333                 V164 334                 V165 335              
   V166 336                 V167 337                 V168 338              
   V169 339                 V170 340                 V171 341              
   V172 342                 V173 343                 V174 344              
   V175 345                 V176 346                 V177 347              
   V178 348                 V179 349                 V180 350              
   V181 351                 V182 352                 V183 353              
   V184 354-355             V185 356                 V186 357              
   V187 358                 V188 359                 V189 360              
   V190 361                 V191 362                 V192 363              
   V193 364                 V194 365                 V195 366              
   V196 367                 V197 368                 V198 369              
   V199 370                 V200 371                 V201 372              
   V202 373                 V203 374                 V204 375              
   V205 376                 V206 377                 V207 378              
   V208 379-381             V209 382-383             V210 384              
   V211 385                 V212 386                 V213 387              
   V214 388                 V215 389                 V216 390              
   V217 391                 V218 392                 V219 393              
   V220 394                 V221 395                 V222 396              
   V223 397                 V224 398                 V225 399              
   V226 400                 V227 401                 V228 402              
   V229 403                 V230 404                 V231 405              
   V232 406                 V233 407                 V234 408              
   V235 409                 V236 410                 V237 411              
   V238 412                 V239 413                 V240 414              
   V241 415                 V242 416                 V243 417              
   V244 418                 V245 419                 V246 420              
   V247 421                 V248 422                 V249 423              
   V250 424                 V251 425                 V252 426-427          
   V253 428                 V254 429                 V255 430              
   V256 431                 V257 432                 V258 433              
   V259 434                 V260 435                 V261 436              
   V262 437                 V263 438                 V264 439              
   V265 440                 V266 441                 V267 442              
   V268 443                 V269 444                 V270 445              
   V271 446                 V272 447                 V273 448              
   V274 449                 V275 450                 V276 451              
   V277 452                 V278 453                 V279 454              
   V280 455                 V281 456                 V282 457              
   V283 458                 V284 459                 V285 460              
   V286 461                 V287 462                 V288 463              
   V289 464                 V290 465                 V291 466              
   V292 467                 V293 468                 V294 469              
   V295 470-471             V296 472                 V297 473              
   V298 474                 V299 475                 V300 476-477          
   V301 478                 V302 479                 V303 480              
   V304 481                 V305 482                 V306 483              
   V307 484                 V308 485                 V309 486              
   V310 487                 V311 488                 V312 489              
   V313 490                 V314 491                 V315 492              
   V316 493                 V317 494                 V318 495              
   V319 496                 V320 497                 V321 498              
   V322 499                 V323 500                 V324 501              
   V325 502                 V326 503                 V327 504              
   V328 505                 V329 506                 V330 507              
   V331 508                 V332 509                 V333 510              
   V334 511                 V335 512                 V336 513              
   V337 514                 V338 515                 V339 516              
   V340 517                 V341 518                 V342 519              
   V343 520                 V344 521                 V345 522              
   V346 523                 V347 524                 V348 525              
   V349 526                 V350 527                 V351 528              
   V352 529                 V353 530                 V354 531              
   V355 532                 V356 533                 V357 534              
   V358 535                 V359 536                 V360 537              
   V361 538                 V362 539                 V363 540              
   V364 541                 V365 542                 V366 543              
   V367 544                 V368 545                 V369 546              
   V370 547                 V371 548                 V372 549              
   V373 550                 V374 551                 V375 552              
   V376 553                 V377 554                 V378 555              
   V379 556                 V380 557                 V381 558              
   V382 559                 V383 560                 V384 561              
   V385 562                 V386 563                 V387 564              
   V388 565                 V389 566                 V390 567              
   V391 568                 V392 569                 V393 570              
   V394 571                 V395 572                 V396 573              
   V397 574                 V398 575                 V399 576              
   V400 577                 V401 578                 V402 579              
   V403 580                 V404 581                 V405 582              
   V406 583                 V407 584                 V408 585              
   V409 586                 V410 587                 V411 588              
   V412 589                 V413 590                 V414 591              
   V415 592                 V416 593                 V417 594              
   V418 595                 V419 596                 V420 597-598          
   V421 599                 V422 600-601             V423 602-603          
   V424 604                 V425 605                 V426 606              
   V427 607-609             V428 610-612             V429 613-615          
   V430 616                 V431 617-618             V432 619              
   V433 620                 V434 621                 V435 622-623          
   V436 624                 V437 625                 V438 626              
   V439 627                 V440 628                 V441 629              
   V442 630                 V443 631                 V444 632              
   V445 633                 V446 634-635             V447 636-637          
   V448 638-640             V449 641                 V450 642              
   V451 643                 V452 644                 V453 645-646          
   V454 647-648             V455 649-650             V456 651              
   V457 652                 V458 653                 V459 654              
   V460 655-656             V461 657                 V462 658              
   V463 659-660             V464 661                 V465 662-663          
   V466 664                 V467 665-666             V468 667-668          
   V469 669-671             V470 672                 V471 673              
   V472 674-675             V473 676-678             V474 679-680          
   V475 681                 V476 682                 V477 683              
   V478 684                 V479 685                 V480 686              
   V481 687                 V482 688                 V483 689              
   V484 690                 V485 691                 V486 692              
   V487 693                 V488 694                 V489 695              
   V490 696                 V491 697                 V492 698              
   V493 699                 V494 700                 V495 701              
   V496 702                 V497 703                 V498 704              
   V499 705                 V500 706                 V501 707              
   V502 708                 V503 709                 V504 710              
   V505 711                 V506 712                 V507 713              
   V508 714                 V509 715                 V510 716              
   V511 717                 V512 718                 V513 719              
   V514 720                 V515 721                 V516 722              
   V517 723                 V518 724                 V519 725              
   V520 726                 V521 727                 V522 728              
   V523 729                 V524 730                 V525 731              
   V526 732                 V527 733                 V528 734              
   V529 735                 V530 736                 V531 737-738          
   V532 739                 V533 740                 V534 741              
   V535 742                 V536 743                 V537 744              
   V538 745                 V539 746-751             V540 752              
.                                                                          
                                                                           
VARIABLE LABELS                                                            
     V1 "ICPSR STUDY NUMBER - 6422"                                        
 /   V2 "ICPSR EDITION NUMBER"                                             
 /   V3 "ICPSR PART NUMBER"                                                
 /   V4 "ICPSR CASE ID"                                                    
 /   V5 "NATION I (UNITED KINGDOM)"                                        
 /   V6 "W2: WEIGHT SPECIAL UNITED KINGDOM (NAT)"                          
 /   V7 "NATION II (GB AND NORTHERN IRELAND)"                              
 /   V8 "W3: WEIGHT RESULT FROM TARGET (NAT)"                              
 /   V9 "W4: WEIGHT ADJSTD TO STANDARD SIZE (NAT)"                         
 /  V10 "NATION III (UNITED GERMANY)"                                      
 /  V11 "W1: WEIGHT SPECIAL GERMANY (NAT)"                                 
 /  V12 "W5: WEIGHT EURO 6 (NAT)"                                          
 /  V13 "W6: WEIGHT EURO 10 (NAT)"                                         
 /  V14 "W7: WEIGHT EURO 12 (NAT)"                                         
 /  V15 "W8: WEIGHT EUROPE 12 + (NAT)"                                     
 /  V16 "W3_1: WEIGHT NORWAY"                                              
 /  V17 "W3_2: WEIGHT FINLAND"                                             
 /  V18 "WN_1: WEIGHT SPECIAL GERMANY NAT+NON-NAT"                         
 /  V19 "WN_2: WEIGHT SPECIAL UK (NAT + NON-NAT)"                          
 /  V20 "WN_3: WEIGHT RESLT FR TARGET NAT+NON-NAT"                         
 /  V21 "WN_4: WEIGHT ADJSTD STD SIZE NAT+NON-NAT"                         
 /  V22 "WN_5: WEIGHT EURO 6 (NAT + NON-NAT)"                              
 /  V23 "WN_6: WEIGHT EURO 10 (NAT + NON-NAT)"                             
 /  V24 "WN_7: WEIGHT EURO 12 (NAT + NON-NAT)"                             
 /  V25 "WN_8: WEIGHT EUROPE 12 + (NAT + NON-NAT)"                         
 /  V26 "WO_1: WEIGHT SPECIAL GER NAT+NON-NAT+OVR"                         
 /  V27 "WO_2: WEIGHT SPECIAL UK NAT+NON-NAT+OVER"                         
 /  V28 "WO_3: WEIGHT RSLT FR TGT NAT+NON-NAT+OVR"                         
 /  V29 "WO_4: WEIGHT ADJ STD SIZ NAT+NONNAT+OVER"                         
 /  V30 "WO_5: WEIGHT EURO 6 (NAT+NON-NAT+OVER)"                           
 /  V31 "WO_6: WEIGHT EURO 10 (NAT+NON-NAT+OVER)"                          
 /  V32 "WO_7: WEIGHT EURO 12 (NAT+NON-NAT+OVER)"                          
 /  V33 "WO_8: WEIGHT EUROPE 12+ NAT+NON-NAT+OVER"                         
 /  V34 "Q1A: ELECTORAL REGISTER"                                          
 /  V35 "Q1B: NATIONALITY"                                                 
 /  V36 "Q2: LIFE SATISFACTION"                                            
 /  V37 "Q3: DEMOCRACY SATISFACTION"                                       
 /  V38 "Q4: POLITICAL DISCUSSION - FREQUENCY"                             
 /  V39 "Q5: POLITCL DISCUSSION - CONVNCE FRIENDS"                         
 /  V40 "Q6: EVER SEEN OR HEARD OF THE NAME X"                             
 /  V41 "Q8: NAME X PLACE ASSOCIATION"                                     
 /  V42 "Q10A: NAME X COMMON OR PRODUCT OF Q9 1ST"                         
 /  V43 "Q10B: NAME X COMMON OR PRODUCT OF Q9 2ND"                         
 /  V44 "Q10C: NAME X COMMON OR PRODUCT OF Q9 3RD"                         
 /  V45 "Q10D: NAME X COMMON OR PRODUCT OF Q9 4TH"                         
 /  V46 "Q10E: NAME X COMMON OR PRODUCT OF Q9 5TH"                         
 /  V47 "Q11: HEARD OF NAME X CHEESE"                                      
 /  V48 "Q12: CHEESE X PLACE ASSOCIATION"                                  
 /  V49 "Q14A: CHEESE X COMMON/PRODUCT OF Q13 1ST"                         
 /  V50 "Q14B: CHEESE X COMMON/PRODUCT OF Q13 2ND"                         
 /  V51 "Q14C: CHEESE X COMMON/PRODUCT OF Q13 3RD"                         
 /  V52 "Q14D: CHEESE X COMMON/PRODUCT OF Q13 4TH"                         
 /  V53 "Q14E: CHEESE X COMMON/PRODUCT OF Q13 5TH"                         
 /  V54 "Q15_1: HH CONSUMPTION FREQ CHEESE X"                              
 /  V55 "Q15_2: HH CONSUMPTION FREQ ANY CHEESE"                            
 /  V56 "Q16_1: TELEVISION USE - NEWS"                                     
 /  V57 "Q16_2: DAILY NEWSPAPER USE - NEWS"                                
 /  V58 "Q16_3: RADIO USE - NEWS"                                          
 /  V59 "Q17: INTEREST IN EUROPEAN POLITICS"                               
 /  V60 "Q18: EC KNOWLEDGE IN GENERAL"                                     
 /  V61 "Q19: EC MEMBERSHIP - GOOD/BAD"                                    
 /  V62 "Q20: EC MEMBERSHIP - COUNTRY BENEFIT"                             
 /  V63 "Q21: EUROP UNIFICATION SPEED - NOWADAYS"                          
 /  V64 "Q22: EUROP UNIFICATION SPEED - PREFERNCE"                         
 /  V65 "Q23: EUROPEAN GOVERNMENT - FOR/AGAINST"                           
 /  V66 "Q24_1: EC COMMON POLICY DEF/SECURITY&DEF"                         
 /  V67 "Q24_2: EC COMMON POLICY ENVIRNMNT PROTEC"                         
 /  V68 "Q24_3: EC COMMON POLICY CURRENCY"                                 
 /  V69 "Q24_4: EC COMMON POLICY COOP THIRD WORLD"                         
 /  V70 "Q24_5: EC COMMON POLICY HEALTH & WELFARE"                         
 /  V71 "Q24_6: EC COMMON POLICY EDUCATION"                                
 /  V72 "Q24_7: EC COMMON POLICY RULES FOR PRESS"                          
 /  V73 "Q24_8: EC COMMON POLICY SCIENTIFIC RES"                           
 /  V74 "Q24_9: EC COMMON POLICY RATES OF VAT"                             
 /  V75 "Q24_10: EC COMMON POLICY FOREIGN POLICY"                          
 /  V76 "Q24_11: EC COMMON POLICY WORKERS BOARDS"                          
 /  V77 "Q24_12: EC COMMON POLICY INDUSTRL POLICY"                         
 /  V78 "Q24_13: EC COMMON POLICY CULTURAL POLICY"                         
 /  V79 "Q24_14: EC COMMON POLICY IMMIGRAT POLICY"                         
 /  V80 "Q24_15: EC COMMON POLICY POLITICL ASYLUM"                         
 /  V81 "Q24_16: EC COMMON POLICY WORKER SAFETY"                           
 /  V82 "Q24_17: EC COMMON POLICY UNEMPLOY/FIGHT"                          
 /  V83 "Q24_18: EC COMMON POLICY FIGHT AG DRUGS"                          
 /  V84 "Q25: EC DEMOCRACY SATISFACTION"                                   
 /  V85 "Q26: EC PRESIDENCY GREECE - HEARD"                                
 /  V86 "Q27: EC PRESIDENCY GREECE - IMPORTANCE"                           
 /  V87 "Q28_1: MAASTR TREATY: SINGLE CURRENCY"                            
 /  V88 "Q28_2: MAASTR TREATY: CENTRAL BANK"                               
 /  V89 "Q28_3: MAASTR TREATY: FOREIGN POLICY"                             
 /  V90 "Q28_4: MAASTR TREATY: DEFENCE POLICY"                             
 /  V91 "Q28_5: MAASTR TREATY: EP MAJORITY"                                
 /  V92 "Q28_6: MAASTR TREATY: EP EQUAL RIGHTS"                            
 /  V93 "Q28_7: MAASTR TREATY: EC CITZEN LOC VOTE"                         
 /  V94 "Q28_8: MAASTR TREATY: EC CITZEN EUR VOTE"                         
 /  V95 "Q28_9: MAASTR TREATY: EC CITZEN LOC CAND"                         
 /  V96 "Q28_10: MAASTR TREATY: EC CTZEN EUR CAND"                         
 /  V97 "Q28_11: MAASTR TREATY: EUROPEAN GOVRNMNT"                         
 /  V98 "Q28_12: MAASTR TREATY: EC RESPONSIBILITY"                         
 /  V99 "Q29: EC SINGLE MARKET - HOPEFUL/FEARFUL"                          
 / V100 "Q30: WHITE PAPER: HEARD OF"                                       
 / V101 "Q31: WHITE PAPER: POSITIVE/NO EFFECT"                             
 / V102 "Q32: EURO PARLIAMENT: HEARD OF"                                   
 / V103 "Q33: EURO ELECTION DATE: KNOW/NOT"                                
 / V104 "Q34: ELECTORAL PARTICIPATION EUROP PARL"                          
 / V105 "Q35: NOT VOTE EURO: MAIN NEG REASON"                              
 / V106 "Q36_1: EURO ELECTION - MOST IMPORTANT"                            
 / V107 "Q36_2: EURO ELECTION - NEXT MOST IMPORT"                          
 / V108 "Q37: VOTE INTENTION EUROP PARL (SEE DOC)"                         
 / V109 "Q38: DOMESTIC/FOREIGN ISSUES"                                     
 / V110 "Q39: EUROP PARLIAMENT VOTE - INFLUENCE"                           
 / V111 "Q40: EURO PARLIAMENT: PREFERRED ROLE"                             
 / V112 "Q41: WOMEN: BENEFIT OF EC POLICIES"                               
 / V113 "Q42_01: BENEFIT YES - EQUALITY LEGISLTN"                          
 / V114 "Q42_02: BENEFIT YES - EQUAL TREATMNT/PAY"                         
 / V115 "Q42_03: BENEFIT YES - MATERNITY LEAVE"                            
 / V116 "Q42_04: BENEFIT YES - SELF-EMPLOYED/PT"                           
 / V117 "Q42_05: BENEFIT YES - WORK HEALTH/SAFETY"                         
 / V118 "Q42_06: BENEFIT YES - STUDENT EXCHANGE"                           
 / V119 "Q42_07: BENEFIT YES - TRAINING SCHEMES"                           
 / V120 "Q42_08: BENEFIT YES - OWN BUSINESS"                               
 / V121 "Q42_09: BENEFIT YES - JOB CREATION POLCY"                         
 / V122 "Q42_10: BENEFIT YES - WOMEN IN SOCIETY"                           
 / V123 "Q42_11: BENEFIT YES - JUGGLE WORK/FAMILY"                         
 / V124 "Q42_12: BENEFIT YES - AS EURO CITIZEN"                            
 / V125 "Q42_13: BENEFIT YES - OTHER"                                      
 / V126 "Q42_14: BENEFIT YES - DK"                                         
 / V127 "Q43_01: BENEFIT NO - NOT DOING ANYTHING"                          
 / V128 "Q43_02: BENEFIT NO - DONT HAVE DETAILS"                           
 / V129 "Q43_03: BENEFIT NO - POLICIES TOO REMOTE"                         
 / V130 "Q43_04: BENEFIT NO - OTHER POLICIES"                              
 / V131 "Q43_05: BENEFIT NO - OTHER WOMEN NOT I"                           
 / V132 "Q43_06: BENEFIT NO - DONT GET EQUAL PAY"                          
 / V133 "Q43_07: BENEFIT NO - HASNT CHANGED IDEAS"                         
 / V134 "Q43_08: BENEFIT NO - NO HELP FIGHTING"                            
 / V135 "Q43_09: BENEFIT NO - REDUCES BENEFITS"                            
 / V136 "Q43_10: BENEFIT NO - OTHERS"                                      
 / V137 "Q43_11: BENEFIT NO - DK"                                          
 / V138 "Q44: NO CUSTOM CNTRLS BORDER CROSS SINCE"                         
 / V139 "Q45: NO CUSTOM CONTROLS HAVE HEARD"                               
 / V140 "Q46: NO CUSTM CTRLS HAVE BENEFITTED FROM"                         
 / V141 "Q47_1: NO CUSTM CTRLS LWR CNSUMER PRICES"                         
 / V142 "Q47_2: NO CUSTM CTRLS WDR CNSUMER CHOICE"                         
 / V143 "Q48_1: EUROPE 2000 -OTHER EURO EC MEMBRS"                         
 / V144 "Q48_2: EUROPE 2000 -SINGLE EUROP CURRNCY"                         
 / V145 "Q48_3: EUROPE 2000 -COMMON MILITY FORCE"                          
 / V146 "Q48_4: EUROPE 2000 -FREEDOM OF RESIDENCE"                         
 / V147 "Q49_1: HEARD OF ECU: NO, NEVER"                                   
 / V148 "Q49_2: HEARD OF ECU: YES, TELEVISION"                             
 / V149 "Q49_3: HEARD OF ECU: YES, RADIO"                                  
 / V150 "Q49_4: HEARD OF ECU: YES, NEWSPAPERS"                             
 / V151 "Q49_5: HEARD OF ECU: YES, MAGAZINES"                              
 / V152 "Q49_6: HEARD OF ECU: YES, SPEC REVIEWS"                           
 / V153 "Q49_7: HEARD OF ECU: YES, IN YOUR BANK"                           
 / V154 "Q49_8: HEARD OF ECU: YES, OTHER"                                  
 / V155 "Q50_1: ECU USE: MORTGAGE LOAN"                                    
 / V156 "Q50_2: ECU USE: BONDS OR SAVINGS BONDS"                           
 / V157 "Q50_3: ECU USE: SAVINGS TERM/NOTICE ACCT"                         
 / V158 "Q50_4: ECU USE: PAYMENTS THROUGH A BANK"                          
 / V159 "Q50_5: ECU USE: TRAVELLERS' CHEQUES"                              
 / V160 "Q50_6: ECU USE: COMMEMORATIVE MEDALS"                             
 / V161 "Q50_7: ECU USE: OTHER ANSWERS"                                    
 / V162 "Q50_8: ECU USE: NEVER USED THE ECU"                               
 / V163 "Q51: ECU USE: INTENTION TO USE"                                   
 / V164 "Q52_1: ECU USE ALREADY: PAYMENT BT BANKS"                         
 / V165 "Q52_2: ECU USE ALREADY: FOREIGN CURRENCY"                         
 / V166 "Q52_3: ECU USE ALREADY: UNIT OF ACCT"                             
 / V167 "Q52_4: ECU USE ALREADY: REAL CURRENCY"                            
 / V168 "Q53_1: ECU INFO: HOW TO USE "                                     
 / V169 "Q53_2: ECU INFO: ADVANTAGES OF USING IT"                          
 / V170 "Q53_3: ECU INFO: HOW USED IN THE FUTURE"                          
 / V171 "Q53_4: ECU INFO: NOT WANT TO KNOW MORE"                           
 / V172 "Q53_5: ECU INFO: DK"                                              
 / V173 "Q54_1: ECU IMPORT: SIMPLER FIN TRANSACT"                          
 / V174 "Q54_2: ECU IMPORT: STABLE ECONOMIES"                              
 / V175 "Q54_3: ECU IMPORT: LOSS OF NATL IDENTS"                           
 / V176 "Q54_4: ECU IMPORT: FACE INTL COMPETITION"                         
 / V177 "Q54_5: ECU IMPORT: EASIER FOR COMPANIES"                          
 / V178 "Q54_6: ECU IMPORT: KEEP PURCHASING POWER"                         
 / V179 "Q55: ECU: ADV/DISADV IN PRESENT ECONOMY"                          
 / V180 "Q56: ECU: ADV/DISADV OUR COUNTRY ECONOMY"                         
 / V181 "Q57: ECU: FAVOR/OPPOSE ADOPTION"                                  
 / V182 "Q58: LABELS HEARD: STANDARDS COMPLIANCE"                          
 / V183 "Q59: EVER SEEN THIS LABEL"                                        
 / V184 "Q60_1: NONFOOD PROD - MOST INTO ACCOUNT"                          
 / V185 "Q60_2C01: NONFOOD ALSO; PRICE"                                    
 / V186 "Q60_2C02: NONFOOD ALSO; QUALITY"                                  
 / V187 "Q60_2C03: NONFOOD ALSO; BRAND NAME"                               
 / V188 "Q60_2C04: NONFOOD ALSO; COUNTRY OF MANF"                          
 / V189 "Q60_2C05: NONFOOD ALSO; PRESENTATION"                             
 / V190 "Q60_2C06: NONFOOD ALSO; PROD KNOWLEDGE"                           
 / V191 "Q60_2C07: NONFOOD ALSO; QUALITY LABEL"                            
 / V192 "Q60_2C08: NONFOOD ALSO; SOMETHING ELSE"                           
 / V193 "Q60_2C09: NONFOOD ALSO; NONE OF THESE"                            
 / V194 "Q60_2C10: NONFOOD ALSO; DK"                                       
 / V195 "Q61_1: QUALITY PROD: MORE EXPENSIVE"                              
 / V196 "Q61_2: QUALITY PROD: LUXURY"                                      
 / V197 "Q61_3: QUALITY PROD: INNOVATIVE"                                  
 / V198 "Q61_4: QUALITY PROD: SPECIAL FEATURES"                            
 / V199 "Q61_5: QUALITY PROD: HIGH PERFORMANCE"                            
 / V200 "Q62_1: COUNTRY OF ORIGIN QUAL: GERMANY"                           
 / V201 "Q62_2: COUNTRY OF ORIGIN QUAL: SPAIN"                             
 / V202 "Q62_3 COUNTRY OF ORIGIN QUAL: FRANCE"                             
 / V203 "Q62_4 COUNTRY OF ORIGIN QUAL: ITALY"                              
 / V204 "Q62_5 COUNTRY OF ORIGIN QUAL: UK"                                 
 / V205 "Q62_6 COUNTRY OF ORIGIN QUAL: EC"                                 
 / V206 "Q62_7 COUNTRY OF ORIGIN QUAL: USA"                                
 / V207 "Q62_8 COUNTRY OF ORIGIN QUAL: JAPAN"                              
 / V208 "Q63: MOTHERTONGUE OF RESP - SEE DOCUMNT"                          
 / V209 "Q63R: MOTHERTONGUE-Q63 RECODED-SEE DOC"                           
 / V210 "Q64_01: LANGUAGE LEARNED DANISH"                                  
 / V211 "Q64_02: LANGUAGE LEARNED GERMAN"                                  
 / V212 "Q64_03: LANGUAGE LEARNED FRENCH"                                  
 / V213 "Q64_04: LANGUAGE LEARNED ITALIAN"                                 
 / V214 "Q64_05: LANGUAGE LEARNED DUTCH"                                   
 / V215 "Q64_06: LANGUAGE LEARNED ENGLISH"                                 
 / V216 "Q64_07: LANGUAGE LEARNED SPANISH"                                 
 / V217 "Q64_08: LANGUAGE LEARNED PORTUGUESE"                              
 / V218 "Q64_09: LANGUAGE LEARNED GREEK"                                   
 / V219 "Q64_10: LANGUAGE LEARNED OTHER"                                   
 / V220 "Q64_11: LANGUAGE LEARNED NONE"                                    
 / V221 "Q64_12: LANGUAGE LEARNED DK"                                      
 / V222 "Q65_01: LANGUAGE SPOKEN DANISH"                                   
 / V223 "Q65_02: LANGUAGE SPOKEN GERMAN"                                   
 / V224 "Q65_03: LANGUAGE SPOKEN FRENCH"                                   
 / V225 "Q65_04: LANGUAGE SPOKEN ITALIAN"                                  
 / V226 "Q65_05: LANGUAGE SPOKEN DUTCH"                                    
 / V227 "Q65_06: LANGUAGE SPOKEN ENGLISH"                                  
 / V228 "Q65_07: LANGUAGE SPOKEN SPANISH"                                  
 / V229 "Q65_08: LANGUAGE SPOKEN PORTUGUESE"                               
 / V230 "Q65_09: LANGUAGE SPOKEN GREEK"                                    
 / V231 "Q65_10: LANGUAGE SPOKEN OTHER"                                    
 / V232 "Q65_11: LANGUAGE SPOKEN NONE"                                     
 / V233 "Q65_12: LANGUAGE SPOKEN DK"                                       
 / V234 "Q66_01: LANGUAGE AT HOME DANISH"                                  
 / V235 "Q66_02: LANGUAGE AT HOME GERMAN"                                  
 / V236 "Q66_03: LANGUAGE AT HOME FRENCH"                                  
 / V237 "Q66_04: LANGUAGE AT HOME ITALIAN"                                 
 / V238 "Q66_05: LANGUAGE AT HOME DUTCH"                                   
 / V239 "Q66_06: LANGUAGE AT HOME ENGLISH"                                 
 / V240 "Q66_07: LANGUAGE AT HOME SPANISH"                                 
 / V241 "Q66_08: LANGUAGE AT HOME PORTUGUESE"                              
 / V242 "Q66_09: LANGUAGE AT HOME GREEK"                                   
 / V243 "Q66_10: LANGUAGE AT HOME OTHER"                                   
 / V244 "Q66_11: LANGUAGE AT HOME NONE"                                    
 / V245 "Q66_12: LANGUAGE AT HOME DK"                                      
 / V246 "Q67_1: SMOKING HABITS CIGARETTES MANUFCT"                         
 / V247 "Q67_2: SMOKING HABITS CIGARETTES ROLLOWN"                         
 / V248 "Q67_3: SMOKING HABITS CIGARS OR A PIPE"                           
 / V249 "Q67_4: SMOKING HABITS NO LONGER"                                  
 / V250 "Q67_5: SMOKING HABITS NEVER SMOKED"                               
 / V251 "Q67_6: SMOKING HABITS DONT KNOW"                                  
 / V252 "Q68: SMOKING CIGARETTES - N PER DAY"                              
 / V253 "Q69_1: GENL STOP/REDUCE; DOCTOR TELLS"                            
 / V254 "Q69_2: GENL STOP/REDUCE; RELATIVE DIES"                           
 / V255 "Q69_3: GENL STOP/REDUCE; PRICE INCREASES"                         
 / V256 "Q69_4: GENL STOP/REDUC; SCIENTIFIC PROOF"                         
 / V257 "Q69_5: GENL STOP/REDUCE; ADVERTISING"                             
 / V258 "Q69_6: GENL STOP/REDUC; SPECIAL PROGRAMS"                         
 / V259 "Q70_1: RESP STOP/REDUCE; DONT WANT TO"                            
 / V260 "Q70_2: RESP STOP/REDUCE; DOCTOR TELLS"                            
 / V261 "Q70_3: RESP STOP/REDUCE; RELATIVE DIED"                           
 / V262 "Q70_4: RESP STOP/REDUCE; PRICE INCREASES"                         
 / V263 "Q70_5: RESP STOP/REDUC; SCIENTIFIC PROOF"                         
 / V264 "Q70_6: RESP STOP/REDUCE; ADVERTISING"                             
 / V265 "Q70_7: RESP STOP/REDUC; SPECIAL PROGRAMS"                         
 / V266 "Q71_1: A/D; IF NO ADVERTISING SMOKE LESS"                         
 / V267 "Q71_2: A/D; RIGHT TO WORK IN SMOKE-FREE"                          
 / V268 "Q71_3: A/D; NOT REGULATE CIG ADVERTISING"                         
 / V269 "Q71_4: A/D; SHOULD INCR PRICE CIGARETTES"                         
 / V270 "Q71_5: A/D; NO RESTRICT SMOKING PUBLIC"                           
 / V271 "Q71_6: A/D; SMOKING CAUSES CANCER/DEATH"                          
 / V272 "Q72: SMOKING OPINION: PUBLIC REGULATION"                          
 / V273 "Q73: SEEN/HEARD ABOUT GIVING BLOOD"                               
 / V274 "Q74_01: GIVE BLOOD HEARD: TELEVISION"                             
 / V275 "Q74_02: GIVE BLOOD HEARD: RADIO"                                  
 / V276 "Q74_03: GIVE BLOOD HEARD: NEWSPAPERS"                             
 / V277 "Q74_04: GIVE BLOOD HEARD: MAGAZINES"                              
 / V278 "Q74_05: GIVE BLOOD HEARD: POSTERS"                                
 / V279 "Q74_06: GIVE BLOOD HEARD: BROCHURES"                              
 / V280 "Q74_07: GIVE BLOOD HEARD: DISCUSSIONS"                            
 / V281 "Q74_08: GIVE BLOOD HEARD: WORKPL/SCHOOL"                          
 / V282 "Q74_09: GIVE BLOOD HEARD: DONATION BUS"                           
 / V283 "Q74_10: GIVE BLOOD HEARD: ELSEWHERE"                              
 / V284 "Q74_11: GIVE BLOOD HEARD: CAN'T REMEMBER"                         
 / V285 "Q75_1: PLASMA INSTEAD OF BLOOD"                                   
 / V286 "Q75_2: CAN RCV BLOOD FROM ANYBODY ELSE"                           
 / V287 "Q75_3: PLASMA IS COMPONENT OF BLOOD"                              
 / V288 "Q75_4: ONCE CLLCTD, BLOOD CANT BE STORED"                         
 / V289 "Q75_5: BLOOD COMPONENTS CAN BE MANUFCTRD"                         
 / V290 "Q75_6: HAEMOPHILIA CLOTS IMMEDIATELY"                             
 / V291 "Q75_7: GVNG BLOOD REDCES AMT BLOOD FREVR"                         
 / V292 "Q75_8: GVNG BLOOD REDUCES HI BLOOD PRESS"                         
 / V293 "Q75_9: BLOOD DONATNS TESTED FOR DISEASES"                         
 / V294 "Q75_10: DIFFERENT BLOOD GROUPS EXIST"                             
 / V295 "Q76: PLASMA: HOW OFTEN CAN GIVE"                                  
 / V296 "Q77: PLASMA: HAVE EVER GIVEN"                                     
 / V297 "Q78: PLASMA: HOW OFTEN HAVE GIVEN"                                
 / V298 "Q79: PLASMA: LAST TIME GAVE"                                      
 / V299 "Q80: PLASMA: HAVE CONSIDERED GIVING"                              
 / V300 "Q81: BLOOD: HOW OFTEN CAN GIVE"                                   
 / V301 "Q82: BLOOD: HAVE EVER GIVEN"                                      
 / V302 "Q83: BLOOD: HOW OFTEN HAVE GIVEN"                                 
 / V303 "Q84: BLOOD: LAST TIME GAVE"                                       
 / V304 "Q85_01: NOT GIVE BLOOD 3YR DOCTOR/HEALTH"                         
 / V305 "Q85_02: NOT GIVE BLOOD 3YR NO TIME"                               
 / V306 "Q85_03: NOT GIVE BLOOD 3YR WHERE TO GO"                           
 / V307 "Q85_04: NOT GIVE BLOOD 3YR BAD EXPRIENCE"                         
 / V308 "Q85_05: NOT GIVE BLOOD 3YR INFCTD NEEDLE"                         
 / V309 "Q85_06: NOT GIVE BLOOD 3YR GET AIDS"                              
 / V310 "Q85_07: NOT GIVE BLOOD 3YR MAKE YOU WEAK"                         
 / V311 "Q85_08: NOT GIVE BLOOD 3YR IMPROPER USE"                          
 / V312 "Q85_09: NOT GIVE BLOOD 3YR AFRD NEEDLES"                          
 / V313 "Q85_10: NOT GIVE BLOOD 3YR DNT LIKE IDEA"                         
 / V314 "Q85_11: NOT GIVE BLOOD 3YR RELGIOUS REAS"                         
 / V315 "Q85_12: NOT GIVE BLOOD 3YR ATTMPT REJCTD"                         
 / V316 "Q85_13: NOT GIVE BLOOD 3YR OTHER"                                 
 / V317 "Q85_14: NOT GIVE BLOOD 3YR DK"                                    
 / V318 "Q86: NEVER GIVEN BLOOD: HAVE CONSIDERED"                          
 / V319 "Q87_01: NEVER GIVEN BLOOD DOCTOR/HEALTH"                          
 / V320 "Q87_02: NEVER GIVEN BLOOD NO TIME"                                
 / V321 "Q87_03: NEVER GIVEN BLOOD WHERE TO GO"                            
 / V322 "Q87_04: NEVER GIVEN BLOOD BAD EXPERIENCE"                         
 / V323 "Q87_05: NEVR GIVEN BLOOD INFECTED NEEDLE"                         
 / V324 "Q87_06: NEVR GIVEN BLOOD AFRAID GET AIDS"                         
 / V325 "Q87_07: NEVER GIVEN BLOOD WILL MAKE WEAK"                         
 / V326 "Q87_08: NEVER GIVEN BLOOD IMPROPER USE"                           
 / V327 "Q87_09: NEVER GIVEN BLOOD AFRD NEEDLES"                           
 / V328 "Q87_10: NEVER GIVEN BLOOD DNT LIKE IDEA"                          
 / V329 "Q87_11: NEVER GIVEN BLOOD RLIGIOUS REAS"                          
 / V330 "Q87_12: NEVER GIVEN BLOOD ATTMPT REJCTD"                          
 / V331 "Q87_13: NEVER GIVEN BLOOD OTHER"                                  
 / V332 "Q87_14: NEVER GIVEN BLOOD DK"                                     
 / V333 "Q88: EVER HAD BLOOD TRANSFUSION"                                  
 / V334 "Q89_1: KNOW SOMONE BLOOD TRANSF REL/FRND"                         
 / V335 "Q89_2: KNOW SMONE BLOOD TRANSF SMBDY ELS"                         
 / V336 "Q89_3: KNOW SOMEONE BLOOD TRANSF NOBODY"                          
 / V337 "Q90_1: WHY/WHEN GIVE BLOOD OPERATION"                             
 / V338 "Q90_2: WHY/WHEN GIVE BLOOD RIGHT THING"                           
 / V339 "Q90_3: WHY/WHEN GIVE BLOOD REL/FRD NEEDS"                         
 / V340 "Q90_4: WHY/WHEN GIVE BLOOD REL/FRND HAD"                          
 / V341 "Q90_5: WHY/WHEN GIVE BLOOD MAJR DISASTER"                         
 / V342 "Q90_6: WHY/WHEN GIVE BLOOD RARE BLOOD"                            
 / V343 "Q90_7: WHY/WHEN GIVE BLOOD OTHERS"                                
 / V344 "Q90_8: WHY/WHEN GIVE BLOOD DK"                                    
 / V345 "Q91_01: WHY NOT GIVE BLOOD; DOCTR/HEALTH"                         
 / V346 "Q91_02: WHY NOT GIVE BLOOD; NO TIME"                              
 / V347 "Q91_03: WHY NOT GIVE BLOOD; WHERE TO GO"                          
 / V348 "Q91_04: WHY NOT GIVE BLOOD; BAD EXPRIENC"                         
 / V349 "Q91_05: WHY NOT GIVE BLOOD; INFCTD NEEDL"                         
 / V350 "Q91_06: WHY NOT GIVE BLOOD; GETTING AIDS"                         
 / V351 "Q91_07: WHY NOT GIVE BLOOD; MAKE WEAK"                            
 / V352 "Q91_08: WHY NOT GIVE BLOOD; IMPROPER USE"                         
 / V353 "Q91_09: WHY NOT GIVE BLOOD; AFRD NEEDLES"                         
 / V354 "Q91_10: WHY NOT GIVE BLOOD; DNT LKE IDEA"                         
 / V355 "Q91_11: WHY NOT GIVE BLOOD; RELIG REASON"                         
 / V356 "Q91_12: WHY NOT GIVE BLOOD; ATTMPT RJCTD"                         
 / V357 "Q91_13: WHY NOT GIVE BLOOD; OTHER"                                
 / V358 "Q91_14: WHY NOT GIVE BLOOD; DK"                                   
 / V359 "Q92: FUTURE NEED OF BLOOD: SOURCE"                                
 / V360 "Q93: FREELY DONATED BLOOD COST OPINION"                           
 / V361 "Q94_1: BLOOD DONATION REWARD; NOTHING"                            
 / V362 "Q94_2: BLOOD DONATION REWARD; TOKEN"                              
 / V363 "Q94_3: BLOOD DONATION REWARD; SMALL GIFT"                         
 / V364 "Q94_4: BLOOD DONAT REWRD; DRNG WRKNG HRS"                         
 / V365 "Q94_5: BLOOD DONAT REWARD; DAYS OFF WORK"                         
 / V366 "Q94_6: BLOOD DONAT REWRD; TIME FROM WORK"                         
 / V367 "Q94_7: BLOOD DONAT REWARD; TIME & EFFORT"                         
 / V368 "Q94_8: BLOOD DONATION REWARD; DK"                                 
 / V369 "Q95_1: PLASMA DONATION REWARD; NOTHING"                           
 / V370 "Q95_2: PLASMA DONATION REWARD; TOKEN"                             
 / V371 "Q95_3: PLASMA DONATN REWARD; SMALL GIFT"                          
 / V372 "Q95_4: PLSMA DONAT REWRD; DRNG WRKNG HRS"                         
 / V373 "Q95_5: PLASMA DONAT REWRD; DAYS OFF WORK"                         
 / V374 "Q95_6: PLSMA DONAT REWRD; TIME FROM WORK"                         
 / V375 "Q95_7: PLASMA DONAT REWRD; TIME & EFFORT"                         
 / V376 "Q95_8: PLASMA DONATION REWARD; DK"                                
 / V377 "Q96: VOLUNTARY FREE DONATION PLAN HEARD"                          
 / V378 "Q97: VOLUNTRY FREE DONATN PLAN IMPORTNCE"                         
 / V379 "Q98: DONATION PLAN JOINT/SEPARATE EFFORT"                         
 / V380 "Q99: BLOOD TRANSFUSN SAFETY VS 10 YR AGO"                         
 / V381 "Q100: SAFEST BLOOD FROM OUR COUNTRY"                              
 / V382 "Q101: SOURCE OF SAFEST BLOOD PRODUCTS"                            
 / V383 "Q102_1: AIDS, AFRAID OF BLOOD/BLOOD PROD"                         
 / V384 "Q102_2: AIDS, AFRAID OF GIVING BLOOD"                             
 / V385 "Q102_3: AIDS, AFRAID OF RECEIVING BLOOD"                          
 / V386 "Q102_4: AIDS, AFRAID OF INJECTION"                                
 / V387 "Q102_5: AIDS, AFRAID OF OPERATION"                                
 / V388 "Q103_1: AIDS A/D PEOPLE TALK TOO MUCH"                            
 / V389 "Q103_2: AIDS A/D MORE INFO ABOUT AIDS"                            
 / V390 "Q103_3: AIDS A/D TOO MUCH SPENT AIDS RES"                         
 / V391 "Q103_4: AIDS A/D WILL NEVER CATCH AIDS"                           
 / V392 "Q104_1: WAYS CATCHING AIDS MEAL PREPARED"                         
 / V393 "Q104_2: WAYS CATCHING AIDS OBJCTS TOUCHD"                         
 / V394 "Q104_3: WAYS CATCHING AIDS GLASS USED"                            
 / V395 "Q104_4: WAYS CATCHING AIDS SAME TOILET"                           
 / V396 "Q104_5: WAYS CATCHING AIDS INJECT NEEDLE"                         
 / V397 "Q104_6: WAYS CATCHING AIDS RCVING BLOOD"                          
 / V398 "Q104_7: WAYS CATCHING AIDS SHAKING HANDS"                         
 / V399 "Q104_8: WAYS CATCHING AIDS KISSING MOUTH"                         
 / V400 "Q104_9: WAYS CATCHING AIDS HAVING SEX"                            
 / V401 "Q104_10: WAYS CATCHING AIDS CARE FOR"                             
 / V402 "Q104_11: WAYS CATCHING AIDS GIVING BLOOD"                         
 / V403 "Q104_12: WAYS CATCHING AIDS GIVNG PLASMA"                         
 / V404 "Q105_1: CANCER RISK; RED MEAT BEEF/LAMB"                          
 / V405 "Q105_2: CANCER RISK; POULTRY"                                     
 / V406 "Q105_3: CANCER RISK; FISH"                                        
 / V407 "Q105_4: CANCER RISK; FRESH FRUIT"                                 
 / V408 "Q105_5: CANCER RISK; GREEN VEGETABLES"                            
 / V409 "Q105_6: CANCER RISK; SALT"                                        
 / V410 "Q105_7: CANCER RISK; WHITE BREAD"                                 
 / V411 "Q105_8: CANCER RISK; BROWN/WHLMEAL BREAD"                         
 / V412 "Q105_9: CANCER RISK; HIGH FIBRE PRODUCTS"                         
 / V413 "Q105_10: CANCER RISK; DAIRY PRODUCTS"                             
 / V414 "Q105_11: CANCER RISK; EGGS"                                       
 / V415 "Q105_12: CANCER RISK; ALCOHOLIC DRINKS"                           
 / V416 "Q105_13: CANCER RISK; SUGAR"                                      
 / V417 "D1AA: SELF RATHER LEFT OR RIGHT POLITICS"                         
 / V418 "D1A1B_1: SELF ON LEFT/RIGHT SCALE"                                
 / V419 "D1A2B_1: SELF ON LEFT/RIGHT SCALE"                                
 / V420 "D1B_1: YOUR VIEWS LEFT/RIGHT SCALE"                               
 / V421 "D2: PARTY ATTACHMENT"                                             
 / V422 "D4: VOTE INTENTION (SEE DOCUMENT)"                                
 / V423 "D5: VOTING BEHAV LAST NAT ELEC (SEE DOC)"                         
 / V424 "D6_1: TRADE UNION MEMBER - RESPONDENT"                            
 / V425 "D6_2: TRADE UNION MEMBER - ELSE IN HH"                            
 / V426 "D7: MARITAL STATUS"                                               
 / V427 "D8: AGE EDUCATION"                                                
 / V428 "D9A: GENERAL EDUCATION - MONTHS"                                  
 / V429 "D9B: PROFESSIONAL EDUCATION - MONTHS"                             
 / V430 "D10: SEX"                                                         
 / V431 "D11: AGE EXACT"                                                   
 / V432 "D11: AGE RECODED - 4 GROUPS"                                      
 / V433 "D11: AGE RECODED - 6 GROUPS"                                      
 / V434 "D12: HOUSEHOLD SIZE"                                              
 / V435 "D13: HOUSEHOLD CHILDREN UNDER 15"                                 
 / V436 "D14_01: IN HH: A COLOUR TV SET"                                   
 / V437 "D14_02: IN HH: A VIDEO RECORDER"                                  
 / V438 "D14_03: IN HH: A VIDEO CAMERA"                                    
 / V439 "D14_04: IN HH: A RADIO-CLOCK"                                     
 / V440 "D14_05: IN HH: A PC/HOME COMPUTER"                                
 / V441 "D14_06: IN HH: A STILL CAMERA"                                    
 / V442 "D14_07: IN HH: AN ELECTRIC DRILL"                                 
 / V443 "D14_08: IN HH: ELECTRIC DEEP FAT FRYER"                           
 / V444 "D14_09: IN HH: 2 OR MORE CARS"                                    
 / V445 "D14_10: IN HH: 2ND HOME OR HOLIDAY FLAT"                          
 / V446 "D15A: OCCUPATION OF RESPONDENT"                                   
 / V447 "D15B: OCCUPATION OF RESPONDNT - LAST JOB"                         
 / V448 "D16: OCCUPATION - HOURS WORK PER WEEK"                            
 / V449 "D17: OCCUPATION - RESP SUPERVISOR FOR"                            
 / V450 "D18: OCCUPATION - SECTOR"                                         
 / V451 "D19A: HH MAINLY LOOKING AFTER HOME"                               
 / V452 "D19B: HH MAINLY INCOME (HEAD OF HH)"                              
 / V453 "D20: AGE EDUCATION HEAD OF HH"                                    
 / V454 "D21A: OCCUPATION HEAD OF HOUSEHOLD"                               
 / V455 "D21B: OCCUPATION HEAD OF HH - LAST JOB"                           
 / V456 "D22: OCCUPATION HEAD OF HH - SUPERVISOR"                          
 / V457 "D23: SOCIAL CLASS SUBJECTIVE"                                     
 / V458 "D24: TYPE OWNERSHIP OF DWELLING"                                  
 / V459 "D25: TYPE OF COMMUNITY"                                           
 / V460 "D26: RELIGION - DENOMINATION"                                     
 / V461 "D27: RELIGION - CHURCH ATTENDANCE"                                
 / V462 "D28: RELIGIOSITY"                                                 
 / V463 "D29: HH MONTH INCOME"                                             
 / V464 "D29_C: HH MONTH INCOME - HARMONISED"                              
 / V465 "P1_1: DATE OF INTERVIEW - DAY"                                    
 / V466 "P1_2: DATE OF INTERVIEW - MONTH"                                  
 / V467 "P2_1: TIME OF INTERVIEW - HOUR"                                   
 / V468 "P2_2: TIME OF INTERVIEW - MINUTES"                                
 / V469 "P3_1: DURATION OF INTERVIEW - MINUTES"                            
 / V470 "P4: N OF PERSONS PRESENT DURING INTERVW"                          
 / V471 "P5: RESPONDENT COOPERATION"                                       
 / V472 "P6: SIZE OF LOCALITY"                                             
 / V473 "P7_1: REGION I (SEE DOCUMENT)"                                    
 / V474 "P7_2: REGION II (SEE DOCUMENT)"                                   
 / V475 "P12: TELEPHONE AVAILABLE IN HH"                                   
 / V476 "BEL_Q31.BIS HAVE HRD OF ECHO OFFC/FLOODS"                         
 / V477 "DEN_Q101.BIS EC TO EU NAME CHNGE ADV/DIS"                         
 / V478 "GER_Q31.BIS EC SOLVE GER ECON PROB"                               
 / V479 "GER_Q31.TER GER CONTRIB TO EC-SIZE OPIN"                          
 / V480 "GRE_Q29.BIS SINGLE MKT DAILY LIFE EFFECT"                         
 / V481 "SPA_Q39.BIS_01: EMPLOYMENT"                                       
 / V482 "SPA_Q39.BIS_02: POLITICAL ECONOMY"                                
 / V483 "SPA_Q39.BIS_03: FUTR OF THE MONTRY UNION"                         
 / V484 "SPA_Q39.BIS_04: REGIONAL POLITICS"                                
 / V485 "SPA_Q39.BIS_05: FORGN POLITICS/COM SECUR"                         
 / V486 "SPA_Q39.BIS_06: CITIZENS FREEDOM/RIGHTS"                          
 / V487 "SPA_Q39.BIS_07: THE ENVIRONMENT"                                  
 / V488 "SPA_Q39.BIS_08: CONSUMER PROTECTN/RIGHTS"                         
 / V489 "SPA_Q39.BIS_09: OTHER (SPONTANEOUS)"                              
 / V490 "SPA_Q39.BIS_10: DK"                                               
 / V491 "FRA_Q31B_1 MAASTR PROTECT FRENCH FRANC"                           
 / V492 "FRA_Q31B_2 MAASTR PROTECT FRANCE SOCIALY"                         
 / V493 "FRA_Q31B_3 MAASTR PROTECT FRANCE:AMR/JAP"                         
 / V494 "IRL_Q28.BIS: EC DEFENCE PARTICIPATION"                            
 / V495 "ITA_Q28.BIS: SINGLE CURRENCY PARTICIPA"                           
 / V496 "POR_Q31.BIS: AUS/SWE/NOR IN EC GOOD/BAD"                          
 / V497 "NOR_Q106: EES-AGREEMENT GOOD/BAD FOR NOR"                         
 / V498 "NOR_Q107: EES-AGREEMENT INDEP SOLUTION"                           
 / V499 "NOR_Q108: NOR EU MEMBERSHIP IMPORTANCE"                           
 / V500 "NOR_Q109: NOR EU MEMBERSHIP FOR/AGAINST"                          
 / V501 "NOR_Q110: NOR EU MEMBERSHIP VOTING VIEW"                          
 / V502 "NOR_Q111: NOR EU MEMBRSHIP SWE/FIN ATTIT"                         
 / V503 "NOR_Q112: NOR EU MMBRSHIP SWE/FIN REFERN"                         
 / V504 "NOR_Q113: NOR EU MEMBRSHP REFERNDM ORDER"                         
 / V505 "NOR_Q114A EU MEMBERSHIP REFRNDM PREF 1ST"                         
 / V506 "NOR_Q114B EU MEMBERSHIP REFRNDM PREF 2ND"                         
 / V507 "NOR_Q115: NOR EU MEMBERSHP SWE/FIN FIRST"                         
 / V508 "NOR_Q116: NOR EU MEMBRSHP LIFE INFLUENCE"                         
 / V509 "NOR_Q117: NOR EU MEMBERSHIP NEGOT EFFECT"                         
 / V510 "NOR_Q118A: EU INFO CONFIDENCE AGRI-ORGNS"                         
 / V511 "NOR_Q118B: EU INFO CONFIDENCE GOVERNMENT"                         
 / V512 "NOR_Q118C: EU INFO CONFIDENCE EMPLYR-ORG"                         
 / V513 "NOR_Q118D: EU INFO CONFIDENCE FISHNG-ORG"                         
 / V514 "NOR_Q118E: EU INFO CONFIDENCE NOR BRDCST"                         
 / V515 "NOR_Q118F: EU INFO CONFIDENCE NOT TO EU"                          
 / V516 "NOR_Q118G: EU INFO CONFIDENCE YES TO EU"                          
 / V517 "NOR_Q118H: EU INFO CONFIDENCE NEWSPAPER"                          
 / V518 "NOR_Q119A: EU MMBR PRO/CON ENVR/RESOURCS"                         
 / V519 "NOR_Q119B: EU MMBR PRO/CON LBR/EMPLOYMNT"                         
 / V520 "NOR_Q119C: EU MEMBRSHP PRO/CON HEALTH/SS"                         
 / V521 "NOR_Q119D: EU MMBR PRO/CON FORGN/SECURTY"                         
 / V522 "NOR_Q119E: EU MMBR PRO/CON ALCOHOL/DRUGS"                         
 / V523 "NOR_Q119F: EU MMBR PRO/CON DISTRICT PLCY"                         
 / V524 "NOR_Q119G: EU MEMBR PRO/CON GENL ECONOMY"                         
 / V525 "NOR_Q119H: EU MEMBERSHIP PRO/CON CULTURE"                         
 / V526 "NOR_Q119I: EU MMBR PRO/CON POLIT INFLNCE"                         
 / V527 "NOR_Q120: NOR EU REFERENDUM 1972 VOTE"                            
 / V528 "NOR_Q121: NOR EU MEMBERSHIP BY 2000"                              
 / V529 "NOR_Q122: NOR EU NEGOTIATION INTEREST"                            
 / V530 "C1: OPINION LEADERSHIP INDEX"                                     
 / V531 "C4: SOCIO PROFESSIONAL STATUS"                                    
 / V532 "C11: MEDIA USE (NEWS TV/RADIO/PAPERS)"                            
 / V533 "C12_2: EURO SOCIAL GRADE (ESOMAR)"                                
 / V534 "C14: RESP OCCUP SCALE (D15A RECODED)"                             
 / V535 "FILTER NAT ONLY <FINLAND & NORWAY INCL>"                          
 / V536 "FILTER NATIONAL + NON-NATIONAL"                                   
 / V537 "FILTER NATIONAL + NON-NAT + OVER SAMPLE"                          
 / V538 "FILTER NAT ONLY <FINL & NORWAY NOT INCL>"                         
 / V539 "Q04: ORIGINAL INTERVIEW NUMBER"                                   
 / V540 "Q05: SPLIT BALLOT"                                                
.                                                                          
                                                                           
DOCUMENT WEIGHT VARIABLES SUPPLIED BY INRA (V6, V8, V9, V11 TO V17)        
   WEIGHT SPECIAL UNITED KINGDOM (V6)                                      
   ----------------------------------                                      
   THIS VARIABLE ADJUSTS THE BRITISH AND NORTHERN IRISH SAMPLES            
   TO THEIR RESPECTIVE PROPORTIONS IN THE UNITED KINGDOM. ALL              
   NATION WEIGHTS ARE INCLUDED. NORWAY AND FINLAND ARE WEIGHTED            
   BY "ZERO"                                                               
   -                                                                       
   UNLIKE THE "NATION WEIGHT I" IN EARLIER EUROBAROMETERS UP               
   TO 31 THIS WEIGHT ADJUSTS ALL SAMPLES TO THE STANDARD SIZE              
   -                                                                       
   WEIGHT RESULT FROM TARGET (V8)                                          
   ------------------------------                                          
   THIS VARIABLE CONTAINS WEIGHTS THAT ADJUST THE WEIGHTED SAMPLES         
   TO MAKE THEM REPRESENTATIVE FOR THE COUNTRIES FROM WHICH THEY           
   WERE DRAWN.  IT REPRODUCES THE REAL NUMBER OF CASES FOR EACH            
   COUNTRY. NORWAY AND FINLAND ARE NOT INCLUDED (WEIGHTED BY "ZERO")       
   -                                                                       
   THIS WEIGHT CORRESPONDS TO "NATION WEIGHT II" IN EARLIER EURO-          
   BAROMETERS UP TO 31                                                     
   -                                                                       
   WEIGHT ADJUSTED TO STANDARD SIZE (V9)                                   
   -------------------------------------                                   
   THIS VARIABLE CORRESPONDS TO "WEIGHT RESULT FROM TARGET"                
   ADJUSTING ALL SAMPLES TO THE STANDARD SIZE OF 1000 RESPEC-              
   TIVELY 300 (NORHERN IRELAND) OR 500 (LUXEMBOURG) CASES                  
   NORWAY AND FINLAND ARE NOT INCLUDED (WEIGHTED BY "ZERO")                
   GREAT BRITAIN (N=1000) AND NORTHERN IRELAND (N=300) ARE                 
   WEIGHTED AS INDEPENDENT SAMPLES                                         
   -                                                                       
   WEIGHT SPECIAL GERMANY (V11)                                            
   ----------------------------                                            
   THIS VARIABLE ADJUSTS THE EAST AND WEST GERMAN SAMPLES                  
   TO THEIR RESPECTIVE PROPORTIONS IN THE UNITED GERMANY.  ALL             
   NATION WEIGHTS ARE INCLUDED AND ALL SAMPLES ADJUSTED TO                 
   THE STANDARD SIZE.  NORWAY AND FINLAND ARE WEIGHTED BY "ZERO"           
   -                                                                       
   WEIGHT EURO 6 / 10 / 12 (V12, V13, V14)                                 
   ---------------------------------------                                 
   THESE VARIABLES CONTAIN WEIGHTS THAT ADJUST EACH NATIONAL               
   SAMPLE IN PROPORTION TO ITS NATION'S SHARE IN THE TOTAL                 
   POPULATION OF THE EUROPEAN COMMUNITY COUNTRIES IN THEIR                 
   HISTORIC COMPOSITION:                                                   
   -                                                                       
   EURO 6 ONLY REFERS TO THE SIX EC FOUNDER-MEMBERS (FRANCE,               
   BELGIUM, NETHERLANDS, WEST GERMANY, ITALY AND LUXEMBOURG)               
   EURO 10 EXCLUDES EAST GERMANY, SPAIN AND PORTUGAL,                      
   EURO 12 EXCLUDES EAST GERMANY (WEIGHTED BY "ZERO"),                     
   -                                                                       
   WEIGHT EURO 12 + (INCLUDING EAST GERMANY) (V15)                         
   -----------------------------------------------                         
   THIS VARIABLE CONTAINS WEIGHTS THAT ADJUST EACH NATIONAL                
   SAMPLE IN PROPORTION TO ITS NATION'S SHARE IN THE TOTAL                 
   POPULATION OF ALL THE EUROPEAN COMMUNITY COUNTRIES.  EAST               
   GERMANY AND NORTHERN IRELAND ARE TREATED AS SEPERATE SAMPLES            
   THE NATIONAL WEIGHTS FOR EACH SAMPLE ARE INCLUDED.  NORWAY              
   AND FINLAND ARE NOT INCLUDED (WEIGHTED BY "ZERO")                       
   -                                                                       
   UNLIKE THE "EUROPEAN WEIGHT" IN EARLIER EUROBAROMETERS UP TO            
   31A THIS WEIGHT CONTAINS THE ADJUSTMENT TO THE STANDARD SIZE            
   -                                                                       
   WEIGHT RESULT FROM TARGET NORWAY ONLY (V16)                             
   -------------------------------------------                             
   THIS VARIABLE CONTAINS WEIGHTS THAT ADJUST THE WEIGHTED SAMPLE          
   TO MAKE IT REPRESENTATIVE FOR NORWAY (ALL OTHER COUNTRIES ARE           
   WEIGHTED BY "ZERO").  IT REPRODUCES THE REAL NUMBER OF CASES            
   -                                                                       
   WEIGHT RESULT FROM TARGET FINLAND ONLY (V17)                            
   --------------------------------------------                            
   THIS VARIABLE CONTAINS WEIGHTS THAT ADJUST THE WEIGHTED SAMPLE          
   TO MAKE IT REPRESENTATIVE FOR FINLAND (ALL OTHER COUNTRIES ARE          
   WEIGHTED BY "ZERO"). IT REPRODUCES THE REAL NUMBER OF CASES             
   -                                                                       
   THESE WEIGHT VARIABLES INCLUDE THE NATIONAL WEIGHTS FOR                 
   EACH SAMPLE AND CONTAIN THE ADJUSTMENT TO THE STANDARD SIZE             
   -                                                                       
   USE FILTER VARIABLE V535 FOR ANALYSIS USING THE ABOVE DESCRIBED         
   WEIGHTS.  TO EXCLUDE FINLAND AND NORWAY USE FILTER VARIABLE V538        
   -                                                                       
   ADDITIONAL WEIGHT VARIABLES                                             
   ---------------------------                                             
   WEIGHT VARIABLES (V18-V25) WERE GENERATED FOR ANALYSIS OF               
   NATIONALS AND NON-NATIONALS.  THESE VARIABLES ARE ANALOGOUS             
   TO WEIGHT VARIABLES V6, V8, V9, V11 TO V15                              
   VARIABLE V536 SHOULD BE USED AS A FILTER WHEN USING THESE               
   WEIGHT VARIABLES                                                        
   -                                                                       
   WEIGHT VARIABLES (V26-V33) WERE GENERATED FOR ANALYSIS OF               
   NATIONALS, NON-NATIONALS AND OVERSAMPLE.  THESE VARIABLES               
   ARE ANALOGOUS TO WEIGHT VARIABLES V6, V8, V9, V11 TO V15                
   VARIABLE V537 SHOULD BE USED AS A FILTER WHEN USING THESE               
   WEIGHT VARIABLES                                                        
.                                                                          
                                                                           
VALUE LABELS                                                               
 V2                                                                        
    4 "FOURTH ICPSR EDITION, FEBRUARY 1998"                                
 /                                                                         
 V3                                                                        
    1 "PART ONE"                                                           
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
   14 "NORWAY"                                                             
   15 "FINLAND"                                                            
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
   15 "NORWAY"                                                             
   16 "FINLAND"                                                            
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
   14 "NORWAY"                                                             
   15 "FINLAND"                                                            
 /                                                                         
 V34                                                                       
    1 "AT PRESENT ADDRESS"                                                 
    2 "AT ANOTHER ADDRESS"                                                 
    3 "DON'T KNOW IF REGISTERED"                                           
    4 "DOES NOT APPEAR"                                                    
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V35                                                                       
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
   12 "UNITED KINGDOM (GREAT BRITAIN, N IRELAND"                           
   13 "OTHER COUNTRIES"                                                    
   14 "DON'T KNOW"                                                         
    0 "<NA>"                                                               
   99 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V36                                                                       
    1 "VERY SATISFIED"                                                     
    2 "FAIRLY SATISFIED"                                                   
    3 "NOT VERY SATISFIED"                                                 
    4 "NOT AT ALL SATISFIED"                                               
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V37 V84                                                                   
    1 "VERY SATISFIED"                                                     
    2 "FAIRLY SATISFIED"                                                   
    3 "NOT VERY SATISFIED"                                                 
    4 "NOT AT ALL SATISFIED"                                               
    5 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V38                                                                       
    1 "FREQUENTLY"                                                         
    2 "OCCASIONALLY"                                                       
    3 "NEVER"                                                              
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V39                                                                       
    1 "OFTEN"                                                              
    2 "FROM TIME TO TIME"                                                  
    3 "RARELY"                                                             
    4 "NEVER"                                                              
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7"                                              
 /                                                                         
 V40 V47 V48 V100 V141 V142 V182                                           
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 15 & 16 IN V7>"                                        
 /                                                                         
 V143 TO V146 V195 TO V199                                                 
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V41                                                                       
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, 2 IN Q6; 15 & 16 IN V7>"                                     
 /                                                                         
 V42 V43 V44 V45 V46                                                       
    1 "X IS COMMON NAME FOR A TYPE OF PRODUCT"                             
    2 "X IS PROD FR (FIRST ANSWER FROM Q.9)"                               
    0 "<NA>"                                                               
    9 "<INAP, 2 IN Q6; 15 & 16 IN V7>"                                     
 /                                                                         
 V49                                                                       
    1 "X IS COMMON NAME FOR A TYPE OF CHEESE"                              
    2 "X IS A CHEESE FROM (FIRST ANSWER FR Q13)"                           
    0 "<NA>"                                                               
    9 "<INAP 2 IN Q12; 15 & 16 IN V7>"                                     
 /                                                                         
 V50                                                                       
    1 "X IS COMMON NAME FOR A TYPE OF CHEESE"                              
    2 "X IS A CHEESE FROM (2ND ANSWER FR Q13)"                             
    0 "<NA>"                                                               
    9 "<INAP 2 IN Q12; 15 & 16 IN V7>"                                     
 /                                                                         
 V51                                                                       
    1 "X IS COMMON NAME FOR A TYPE OF CHEESE"                              
    2 "X IS A CHEESE FROM (THIRD ANSWER FR Q13)"                           
    0 "<NA>"                                                               
    9 "<INAP 2 IN Q12; 15 & 16 IN V7>"                                     
 /                                                                         
 V52                                                                       
    1 "X IS COMMON NAME FOR A TYPE OF CHEESE"                              
    2 "X IS A CHEESE FROM (4TH ANSWER FR Q13)"                             
    0 "<NA>"                                                               
    9 "<INAP 2 IN Q12; 15 & 16 IN V7>"                                     
 /                                                                         
 V53                                                                       
    1 "X IS COMMON NAME FOR A TYPE OF CHEESE"                              
    2 "X IS A CHEESE FROM (FIFTH ANSWER FR Q13)"                           
    0 "<NA>"                                                               
    9 "<INAP 2 IN Q12; 15 & 16 IN V7>"                                     
 /                                                                         
 V54 V55                                                                   
    1 "AT LEAST ONCE A WEEK"                                               
    2 "ABOUT EVERY TWO WEEKS"                                              
    3 "ABOUT EVERY MONTH"                                                  
    4 "ABOUT EVERY 2-3 MONTHS"                                             
    5 "LESS OFTEN"                                                         
    6 "(PRACTICALLY) NEVER"                                                
    7 "DK"                                                                 
    8 "<UNDOCUMENTED CODE>"                                                
    0 "<NA>"                                                               
    9 "<INAP, 15 & 16 IN V7>"                                              
 /                                                                         
 V56 TO V58                                                                
    1 "EVERYDAY"                                                           
    2 "SEVERAL TIMES A WEEK"                                               
    3 "ONCE OR TWICE A WEEK"                                               
    4 "LESS OFTEN"                                                         
    5 "NEVER"                                                              
    6 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V59                                                                       
    1 "A GREAT DEAL"                                                       
    2 "TO SOME EXTENT"                                                     
    3 "NOT MUCH"                                                           
    4 "NOT AT ALL"                                                         
    5 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V60                                                                       
    1 "VERY WELL"                                                          
    2 "QUITE WELL"                                                         
    3 "NOT VERY WELL"                                                      
    4 "NOT AT ALL WELL"                                                    
    5 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V61                                                                       
    1 "A GOOD THING"                                                       
    2 "A BAD THING"                                                        
    3 "NEITHER GOOD NOR BAD"                                               
    4 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V62                                                                       
    1 "BENEFITED"                                                          
    2 "NOT BENEFITED"                                                      
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V63 V64                                                                   
    1 "1 STANDING STILL"                                                   
    2 "2"                                                                  
    3 "3"                                                                  
    4 "4"                                                                  
    5 "5"                                                                  
    6 "6"                                                                  
    7 "7 AS FAST AS POSSIBLE"                                              
    8 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V65                                                                       
    1 "FOR"                                                                
    2 "AGAINST"                                                            
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V66 TO V83                                                                
    1 "(NATIONAL) GOVERNMENT"                                              
    2 "THE EUROPEAN COMMUNITY"                                             
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V85                                                                       
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT GREECE>"                                                 
 /                                                                         
 V86                                                                       
    1 "VERY IMPORTANT"                                                     
    2 "IMPORTANT"                                                          
    3 "NOT VERY IMPORTANT"                                                 
    4 "NOT AT ALL IMPORTANT"                                               
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT GREECE>"                                                 
 /                                                                         
 V87 TO V98                                                                
    1 "FOR"                                                                
    2 "AGAINST"                                                            
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V99                                                                       
    1 "VERY HOPEFUL"                                                       
    2 "RATHER HOPEFUL"                                                     
    3 "RATHER FEARFUL"                                                     
    4 "VERY FEARFUL"                                                       
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V101                                                                      
    1 "A POSITIVE EFFECT"                                                  
    2 "NOT A POSITIVE EFFECT"                                              
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, 15 & 16 IN V7>"                                              
 /                                                                         
 V102                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V103                                                                      
    1 "YES CORRECT DATE MENTIONED"                                         
    2 "YES INCORRECT DATE MENTIONED"                                       
    3 "NO, DOES NOT KNOW THE DATE"                                         
    0 "<NA>"                                                               
    9 "<INAP, 15 & 16 IN V7>"                                              
 /                                                                         
 V104                                                                      
    1 "WILL CERTAINLY GO AND VOTE"                                         
    2 "WILL PROBABLY GO AND VOTE"                                          
    3 "WILL PROBABLY NOT VOTE"                                             
    4 "WILL CERTAINLY NOT VOTE"                                            
    5 "OTHER ANSWER (SPONTANEOUS)"                                         
    6 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, 15 & 16 IN V7>"                                              
 /                                                                         
 V105                                                                      
    1 "NOT INTRSTD POLITICS OR ELECTIONS"                                  
    2 "NOT INTRSTD EUROPEAN ELECTIONS"                                     
    3 "LOST INTRST EUROPEAN MATTERS"                                       
    4 "NEVER BEEN INTRSTD EUROPEAN MATTERS"                                
    5 "ALWAYS BEEN AGAINST EUROPE"                                         
    6 "AGAINST EVEN MORE EUROPE"                                           
    7 "NOT WELL ENOUGH INFORMED TO VOTE"                                   
    8 "RESULT IS FOREGONE CONCLUSION"                                      
    9 "OTHER REASONS (SPONTANEOUS)"                                        
   10 "DK"                                                                 
    0 "<NA>"                                                               
   99 "<INAP, NOT 2-6 Q34; 15 & 16 V7>"                                    
 /                                                                         
 V106                                                                      
    1 "A) INDIVIDUAL CANDIDATES"                                           
    2 "B) PARTIES"                                                         
    3 "C) CONTENT PROPOSED POLICIES"                                       
    4 "D) NONE OF THESE (SPONTANEOUS)"                                     
    5 "E) DK"                                                              
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 OR 2 Q34; 15 & 16 V7>"                                 
 /                                                                         
 V107                                                                      
    1 "A) INDIVIDUAL CANDIDATES"                                           
    2 "B) PARTIES"                                                         
    3 "C) CONTENT PROPOSED POLICIES"                                       
    4 "D) NONE OF THESE (SPONTANEOUS)"                                     
    5 "E) DK"                                                              
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 OR 2 Q34; 15 & 16 V7>"                                 
 /                                                                         
 V108                                                                      
   00 "NO ANSWER"                                                          
   90 "OTHER PARTY"                                                        
   95 "WOULD VOTE BLANK/SPOIL VOTE"                                        
   96 "WOULD NOT VOTE"                                                     
   98 "DK"                                                                 
   99 "<INAP, NOT 1 OR 2 IN Q34; 15 & 16 V7>"                              
.                                                                          
DOCUMENT                                                                   
 V108 - Q37, PARTY CODING                                                  
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
       (82)  <DVU> DEUTSCHE VOLKSUNION <GERMAN POPULAR UNION>              
.                                                                          
VALUE LABELS                                                               
 V109                                                                      
    1 "YOUR OPIN ABOUT NATL ISSUES"                                        
    2 "YOUR OPIN ABOUT EUROPE"                                             
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 OR 2 IN Q34; 15 & 16 V7>"                              
 /                                                                         
 V110                                                                      
    1 "UNEMPLOYMENT/RECESSION"                                             
    2 "DEMOCRACY IN EURO COMMUNITY"                                        
    3 "WORKER'S RIGHTS"                                                    
    4 "SOCIAL BENEFITS/HEALTH CARE"                                        
    5 "EDUCATION"                                                          
    6 "RACISM"                                                             
    7 "FOREIGN POLICY/DEFENCE"                                             
    8 "PENSIONERS'RIGHTS"                                                  
    9 "HOMELESSNESS/POVERTY"                                               
   10 "CRIME"                                                              
   11 "THE ENVIRONMENT"                                                    
   12 "TAXATION"                                                           
   13 "MONETARY UNION"                                                     
   14 "DK"                                                                 
    0 "<NA>"                                                               
   99 "<INAP, NOT 1 OR 2 IN Q34; 15 & 16 V7>"                              
 /                                                                         
 V111                                                                      
    1 "YES, MORE POWER"                                                    
    2 "NO, NOT MORE POWER"                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V112                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT WOMEN>"                                                  
 /                                                                         
 V113 TO V137                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
    9 "<INAP, NOT WOMEN; 15 IN V7>"                                        
 /                                                                         
 V138                                                                      
    1 "NO, NOT CROSSED SUCH BORDERS"                                       
    2 "YES, CROSSED AND SAVED TIME"                                        
    3 "YES, CROSSED BUT DIDNT SAVE TIME"                                   
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, 15 & 16 IN V7>"                                              
 /                                                                         
 V139                                                                      
    1 "YES, HEARD ABOUT"                                                   
    2 "NO, NOT HEARD ABOUT"                                                
    0 "<NA>"                                                               
    9 "<INAP, 15 & 16 IN V7>"                                              
 /                                                                         
 V140                                                                      
    1 "YES, BENEFITED"                                                     
    2 "NO, NOT BENEFITED"                                                  
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, 2 IN Q45; 15 & 16 IN V7>"                                    
 /                                                                         
 V147 TO V154  V185 TO V194 V246 TO V251                                   
 V361 TO V376                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
 /                                                                         
 V155 TO V162                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q49C1; 15 IN V7>"                                   
 /                                                                         
 V163                                                                      
    1 "YES, DEFINITELY"                                                    
    2 "YES, PROBABLY"                                                      
    3 "NO, PROBABLY NOT"                                                   
    4 "NO, DEFINITELY NOT"                                                 
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q49C1-C8; 15 IN V7>"                                
 /                                                                         
 V164                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q49C1-C8>"                                          
 /                                                                         
 V165                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q49C1-C8>"                                          
 /                                                                         
 V166 V167                                                                 
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q49C1-C8>"                                          
 /                                                                         
 V168 TO V172                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q49C1-C8; 15 IN V7>"                                
 /                                                                         
 V173 TO V178                                                              
    1 "IMPORTANT"                                                          
    2 "NOT IMPORTANT"                                                      
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V179 V180                                                                 
    1 "AN ADVANTAGE"                                                       
    2 "A DISADVANTAGE"                                                     
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, 15 IN V7>"                                                   
 /                                                                         
 V181                                                                      
    1 "STRONGLY IN FAVOUR"                                                 
    2 "SOMEWHAT IN FAVOUR"                                                 
    3 "SOMEWHAT OPPOSED"                                                   
    4 "STRONGLY OPPOSED"                                                   
    5 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V183                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q58; 15 & 16 IN V7>"                                
 /                                                                         
 V184                                                                      
    1 "A) PRICE"                                                           
    2 "B) QUALITY"                                                         
    3 "C) BRAND NAME"                                                      
    4 "D) COUNTRY OF ORIGIN/MFR"                                           
    5 "E) PRESENTATION/PACKAGING"                                          
    6 "F) YOUR PROD KNOWLEDGE"                                             
    7 "G) HAS QUALITY LABEL"                                               
    8 "H) SOMETHING ELSE"                                                  
    9 "I) NONE OF THESE (SPONTANEOUS)"                                     
   10 "J) DK"                                                              
    0 "<NA>"                                                               
 /                                                                         
 V200 TO V207 V266 TO V271 V388 TO V391                                    
    1 "TEND TO AGREE"                                                      
    2 "TEND TO DISAGREE"                                                   
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V208                                                                      
  990 "OTHERS"                                                             
  998 "<NA, INCL ALL NOR, FIN>"                                            
.                                                                          
DOCUMENT                                                                   
  Q63 - MOTHERTONGUE                                                       
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
      (10)  POLISH                                                         
 .                                                                         
VALUE LABELS                                                               
 V209                                                                      
    1 "DANISH"                                                             
    2 "GERMAN"                                                             
    3 "FRENCH"                                                             
    4 "ITALIAN"                                                            
    5 "DUTCH"                                                              
    6 "ENGLISH"                                                            
    7 "SPANISH"                                                            
    8 "PORTUGUESE"                                                         
    9 "GREEK"                                                              
   10 "OTHER"                                                              
    0 "<NA, INCL ALL NOR, FIN>"                                            
 /                                                                         
 V210 TO V221 V222 TO V233 V234 TO V245                                    
 V436 TO V445                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V252                                                                      
    1 "LESS THAN 5 CIGARETTES"                                             
    2 "5 TO 9"                                                             
    3 "10 TO 14"                                                           
    4 "15 TO 19"                                                           
    5 "20 TO 24"                                                           
    6 "25 TO 29"                                                           
    7 "30 TO 34"                                                           
    8 "35 TO 39"                                                           
    9 "40 OR MORE"                                                         
   10 "DO NOT SMOKE EVERY DAY"                                             
   11 "DK"                                                                 
    0 "<NA>"                                                               
   99 "<INAP, NOT 1 IN Q67C1-C2>"                                          
 /                                                                         
 V253 TO V258                                                              
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "PERHAPS (SPONTANEOUS)"                                              
    4 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V259                                                                      
    1 "YES"                                                                
    0 "DONT WANT TO STOP/CUT DOWN"                                         
    8 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q67C1-C3>"                                          
 /                                                                         
 V260 TO V265                                                              
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "PERHAPS (SPONTANEOUS)"                                              
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q67C1-C3>"                                          
 /                                                                         
 V266 TO V271                                                              
    1 "TEND TO AGREE"                                                      
    2 "TEND TO DISAGREE"                                                   
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V272                                                                      
    1 "SMOKING IS INDIV MATTER STRICTLY"                                   
    2 "SMOKING AFFECTS OTHRS/SHOULD BE REGULATD"                           
    3 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V273                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V274 TO V284                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q73; 16 IN V7>"                                     
 /                                                                         
 V285 TO V294                                                              
    1 "TRUE"                                                               
    2 "FALSE"                                                              
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V295                                                                      
    1 "ONCE OR MORE A DAY"                                                 
    2 "ONCE EVERY 2-6 DAYS"                                                
    3 "ONCE EVERY 1-4 WEEKS"                                               
    4 "ONCE EVERY MONTH"                                                   
    5 "ONCE EVERY 2 MONTHS"                                                
    6 "ONCE EVERY 3-4 MONTHS"                                              
    7 "ONCE EVERY 5-6 MONTHS"                                              
    8 "ONCE EVERY 7-12 MONTHS"                                             
    9 "LESS THAN ONCE/YEAR"                                                
   10 "NEVER"                                                              
   11 "DK"                                                                 
   99 "<INAP, NOT 1 IN Q75_1; 16 IN V7>"                                   
    0 "<NA>"                                                               
 /                                                                         
 V296                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q75_1; 16 IN V7>"                                   
 /                                                                         
 V297                                                                      
    1 "ONLY ONCE"                                                          
    2 "A FEW TIMES"                                                        
    3 "MANY TIMES"                                                         
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q77; 16 IN V7>"                                     
 /                                                                         
 V298                                                                      
    1 "IN THE LAST YEAR"                                                   
    2 "MORE THAN ONE YR UP TO 3 YRS AGO"                                   
    3 "OVER 3 YEARS AGO"                                                   
    4 "DK, CAN'T REMEMBER (SPONTANEOUS)"                                   
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q77; 16 IN V7>"                                     
 /                                                                         
 V299                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 2 IN Q77; 16 IN V7>"                                     
 /                                                                         
 V300                                                                      
    1 "ONCE OR MORE A DAY"                                                 
    2 "ONCE EVERY 2-6 DAYS"                                                
    3 "ONCE EVERY 1-4 WEEKS"                                               
    4 "ONCE EVERY MONTH"                                                   
    5 "ONCE EVERY 2 MONTHS"                                                
    6 "ONCE EVERY 3-4 MONTHS"                                              
    7 "ONCE EVERY 5-6 MONTHS"                                              
    8 "ONCE EVERY 7-12 MONTHS"                                             
    9 "LESS THAN ONCE A YEAR"                                              
   10 "NEVER"                                                              
   11 "DK"                                                                 
    0 "<NA>"                                                               
   99 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V301                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V302                                                                      
    1 "ONLY ONCE"                                                          
    2 "A FEW TIMES"                                                        
    3 "MANY TIMES"                                                         
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q82; 16 IN V7>"                                     
 /                                                                         
 V303                                                                      
    1 "IN THE LAST YEAR"                                                   
    2 "MORE THAN ONE YR UP TO 3 YEARS AGO"                                 
    3 "OVER 3 YEARS AGO"                                                   
    4 "DK, CAN'T REMEMBER (SPONTANEOUS)"                                   
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN Q82; 16 IN V7>"                                     
 /                                                                         
 V304 TO V317                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
    9 "<INAP, NOT 3 IN Q84; 16 IN V7>"                                     
 /                                                                         
 V318                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 2 IN Q82; 16 IN V7>"                                     
 /                                                                         
 V319 TO V332                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
    9 "<INAP, NOT 2 IN Q86; 16 IN V7>"                                     
 /                                                                         
 V333                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK/DON'T REMEMBER (SPONTANEOUS)"                                    
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V334 TO V358                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V359                                                                      
    1 "ACCEPT BLOOD GIVEN BY SELF"                                         
    2 "ACCEPT BLOOD DONAT BY RELAT/FRIEND"                                 
    3 "ACCEPT BLOOD DONAT BY ANYONE"                                       
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V360                                                                      
    1 "SHLD BE GIVEN FOR FREE"                                             
    2 "COVER COST COLLECTING/TEST/DISTRIB"                                 
    3 "CHARGE OVER COLLECTION COST"                                        
    4 "SOLD LIKE ANY OTHER PRODUCT"                                        
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V361 TO V376                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V377 V381 V424 V425 V475                                                  
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V378                                                                      
    1 "VERY IMPORTANT"                                                     
    2 "SOMEWHAT IMPORTANT"                                                 
    3 "NOT VERY IMPORTANT"                                                 
    4 "NOT IMPORTANT AT ALL"                                               
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V379                                                                      
    1 "EACH COUNTRY SEPARATELY"                                            
    2 "ALL COUNTRIES WORKING TOGETHER"                                     
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V380                                                                      
    1 "SAFER"                                                              
    2 "AS SAFE"                                                            
    3 "LESS SAFE"                                                          
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V382                                                                      
    1 "OTHER EC/UE/(EC) COUNTRIES"                                         
    2 "OTHER EUROPEAN COUNTRIES"                                           
    3 "UNITED STATES OF AMERICA"                                           
    4 "CANADA"                                                             
    5 "JAPAN"                                                              
    6 "OTHERS (SPECIFY)"                                                   
    7 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 2 IN Q100; 16 IN V7>"                                    
 /                                                                         
 V383                                                                      
    1 "MORE AFRAID"                                                        
    2 "NOT MORE AFRAID"                                                    
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V384                                                                      
    1 "MORE AFRAID"                                                        
    2 "NOT MORE AFRAID"                                                    
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V385 TO V387                                                              
    1 "MORE AFRAID"                                                        
    2 "NOT MORE AFRAID"                                                    
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V392 TO V403                                                              
    1 "YES"                                                                
    2 "POSSIBLY"                                                           
    3 "NOT"                                                                
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V404 TO V416                                                              
    1 "INCREASE"                                                           
    2 "DECREASE"                                                           
    3 "NO EFFECT"                                                          
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V417                                                                      
    1 "RATHER LEFT"                                                        
    2 "MIDDLE/NEITHER NOR (SPONT)"                                         
    3 "RATHER RIGHT"                                                       
    4 "REFUSAL"                                                            
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 15 & 16 IN V7>"                                        
 /                                                                         
 V418                                                                      
    1 "NOT VERY LEFT"                                                      
    2 ""                                                                   
    3 ""                                                                   
    4 ""                                                                   
    5 "VERY LEFT"                                                          
    7 "REFUSAL"                                                            
    8 "DK"                                                                 
    9 "<NA/INAP, CODED 15 & 16 IN V7>"                                     
 /                                                                         
 V419                                                                      
    1 "NOT VERY RIGHT"                                                     
    2 ""                                                                   
    3 ""                                                                   
    4 ""                                                                   
    5 "VERY RIGHT"                                                         
    7 "REFUSAL"                                                            
    8 "DK"                                                                 
    9 "<NA/INAP, CODED 15 & 16 IN V7>"                                     
 /                                                                         
 V420                                                                      
    1 "LEFT"                                                               
    2 ""                                                                   
    3 ""                                                                   
    4 ""                                                                   
    5 ""                                                                   
    6 ""                                                                   
    7 ""                                                                   
    8 ""                                                                   
    9 ""                                                                   
   10 "RIGHT"                                                              
   97 "REFUSAL"                                                            
   98 "DK"                                                                 
   99 "<INAP, CODED 15 & 16 IN V7>"                                        
    0 "<NA>"                                                               
 /                                                                         
 V421                                                                      
    1 "VERY CLOSE"                                                         
    2 "FAIRLY CLOSE"                                                       
    3 "MERELY A SYMPATHISER"                                               
    4 "CLOSE TO NO PARTICULAR PARTY"                                       
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V422 V423                                                                 
   00 "NO ANSWER"                                                          
   90 "OTHER PARTY"                                                        
   95 "WOULD VOTE BLANK/SPOIL VOTE"                                        
   96 "WOULD NOT VOTE"                                                     
   98 "DK"                                                                 
   99 "<NA>"                                                               
.                                                                          
DOCUMENT                                                                   
  V422 - D4, VOTE INTENTION                                                
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
       (71)  <SMP> SUOMEN MAASEUDUN PUOLUE <RURAL PARTY>                   
.                                                                          
DOCUMENT                                                                   
 V423 - D5, VOTE BEHAVIOR LAST ELECTION                                    
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
       (71)  <SMP> SUOMEN MAASEUDUN PUOLUE <RURAL PARTY>                   
 .                                                                         
VALUE LABELS                                                               
 V426                                                                      
    1 "SINGLE"                                                             
    2 "MARRIED"                                                            
    3 "LIVING AS MARRIED"                                                  
    4 "DIVORCED"                                                           
    5 "SEPARATED"                                                          
    6 "WIDOWED"                                                            
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V427                                                                      
  997 "ILLITERATE/NVR STDY (POR)"                                          
  998 "STILL STUDYING"                                                     
  999 "<INAP, 16 IN V7>"                                                   
    0 "<NA>"                                                               
 /                                                                         
 V428 TO V429                                                              
  998 "NO"                                                                 
  999 "<INAP, 997-999 V427; 16 V7>"                                        
    0 "<NA>"                                                               
 /                                                                         
 V430                                                                      
    1 "MALE"                                                               
    2 "FEMALE"                                                             
 /                                                                         
 V431                                                                      
    0 "<NA>"                                                               
 /                                                                         
 V432                                                                      
    1 "15-24"                                                              
    2 "25-39"                                                              
    3 "40-54"                                                              
    4 "55+"                                                                
    0 "<NA>"                                                               
 /                                                                         
 V433                                                                      
    1 "15-24"                                                              
    2 "25-34"                                                              
    3 "35-44"                                                              
    4 "45-54"                                                              
    5 "55-64"                                                              
    6 "65+"                                                                
    0 "<NA>"                                                               
 /                                                                         
 V434                                                                      
    1 "ONE PERSON"                                                         
    2 "2 PERSONS"                                                          
    3 "3 PERSONS"                                                          
    4 "4 PERSONS"                                                          
    5 "5 PERSONS"                                                          
    6 "6 PERSONS"                                                          
    7 "7 PERSONS"                                                          
    8 "8 PERSONS"                                                          
    9 "9 AND MORE PERSONS"                                                 
    0 "<NA>"                                                               
 /                                                                         
 V435                                                                      
    1 "ONE CHILD"                                                          
    2 "TWO CHILDREN"                                                       
    3 "THREE CHILDREN"                                                     
    4 "FOUR CHILDREN"                                                      
    5 "FIVE CHILDREN"                                                      
    6 "SIX CHILDREN"                                                       
    7 "SEVEN CHILDREN"                                                     
    8 "EIGHT CHILDREN"                                                     
    9 "NINE CHILDREN OR MORE"                                              
   10 "NONE/NO CHILD"                                                      
    0 "<NA>"                                                               
 /                                                                         
 V446                                                                      
    1 "LOOKING AFTER HH"                                                   
    2 "STUDENT"                                                            
    3 "UNEMPLOYED"                                                         
    4 "RETIRED"                                                            
    5 "FARMER"                                                             
    6 "FISHERMAN"                                                          
    7 "PROFESSIONAL"                                                       
    8 "SHOPOWNER, CRAFTSMEN"                                               
    9 "BUSINESS PROPRIETORS"                                               
   10 "EMPLOYED PROFESSIONAL"                                              
   11 "GENERAL MANAGEMENT"                                                 
   12 "MIDDLE MANAGEMENT"                                                  
   13 "EMPLOYED AT DESK"                                                   
   14 "EMPLOYED TRAVELLING"                                                
   15 "EMPLOYED SERVICE"                                                   
   16 "SUPERVISOR"                                                         
   17 "SKILLED MANUAL WORKER"                                              
   18 "OTHER MANUAL WORKER"                                                
    0 "<NA>"                                                               
   99 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V447                                                                      
    1 "FARMER"                                                             
    2 "FISHERMAN"                                                          
    3 "PROFESSIONAL"                                                       
    4 "SHOPOWNER, CRAFTSMEN"                                               
    5 "BUSINESS PROPRIETORS"                                               
    6 "EMPLOYED PROFESSIONAL"                                              
    7 "GENERAL MANAGEMENT"                                                 
    8 "MIDDLE MANAGEMENT"                                                  
    9 "EMPLOYED AT DESK"                                                   
   10 "EMPLOYED TRAVELLING"                                                
   11 "EMPLOYED SERVICE"                                                   
   12 "SUPERVISOR"                                                         
   13 "SKILLED MANUAL WORKER"                                              
   14 "OTHER MANUAL WORKER"                                                
   15 "NEVER DID ANY PAID WORK"                                            
    0 "<NA>"                                                               
   99 "<INAP, NOT 1-4 IN D15A; 16 IN V7>"                                  
 /                                                                         
 V448                                                                      
  998 "<NA>"                                                               
  999 "<INAP, 5-18 IN D15A; 16 IN V7>"                                     
 /                                                                         
 V449                                                                      
    1 "NONE"                                                               
    2 "1 TO 4"                                                             
    3 "5 TO 9"                                                             
    4 "10 AND OVER"                                                        
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 5-18 D15A, 1-14 D15B; 16 V7>"                            
 /                                                                         
 V450                                                                      
    1 "PUBLIC EMPLOYMENT"                                                  
    2 "NATIONALISED INDUSTRY"                                              
    3 "PRIVATE INDUSTRY"                                                   
    4 "PRIVATE SERVICES"                                                   
    5 "DOES NOT KNOW"                                                      
    0 "<NA>"                                                               
    9 "<INAP-NOT 10-18 D15A, 6-14 D15B; 16 V7>"                            
 /                                                                         
 V451 V452                                                                 
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "<UNDOCUMENTED CODE>"                                                
    9 "<INAP, 16 IN V7>"                                                   
    0 "<NA>"                                                               
 /                                                                         
 V453                                                                      
   97 "ILLITERATE/NVR STDY <POR ONLY>"                                     
   98 "STILL STUDYING"                                                     
   99 "<INAP, NOT CODE 2 D19B; 16 V7>"                                     
    0 "<NA>"                                                               
 /                                                                         
 V454                                                                      
    1 "LOOKING AFTER HH"                                                   
    2 "STUDENT"                                                            
    3 "UNEMPLOYED"                                                         
    4 "RETIRED"                                                            
    5 "FARMER"                                                             
    6 "FISHERMAN"                                                          
    7 "PROFESSIONAL"                                                       
    8 "SHOPOWNER, CRAFTSMEN"                                               
    9 "BUSINESS PROPRIETORS"                                               
   10 "EMPLOYED PROFESSIONAL"                                              
   11 "GENERAL MANAGEMENT"                                                 
   12 "MIDDLE MANAGEMENT"                                                  
   13 "EMPLOYED AT DESK"                                                   
   14 "EMPLOYED TRAVELLING"                                                
   15 "EMPLOYED SERVICE"                                                   
   16 "SUPERVISOR"                                                         
   17 "SKILLED MANUAL WORKER"                                              
   18 "OTHER MANUAL WORKER"                                                
    0 "<NA>"                                                               
   99 "<INAP, NOT 2 IN D19B; 16 IN V7>"                                    
 /                                                                         
 V455                                                                      
    1 "FARMER"                                                             
    2 "FISHERMAN"                                                          
    3 "PROFESSIONAL"                                                       
    4 "SHOPOWNER, CRAFTSMEN"                                               
    5 "BUSINESS PROPRIETORS"                                               
    6 "EMPLOYED PROFESSIONAL"                                              
    7 " GENERAL MANAGEMENT"                                                
    8 " MIDDLE MANAGEMENT"                                                 
    9 " EMPLOYED AT DESK"                                                  
   10 " EMPLOYED TRAVELLING"                                               
   11 " EMPLOYED SERVICE"                                                  
   12 " SUPERVISOR"                                                        
   13 " SKILLED MANUAL WORKER"                                             
   14 " OTHER MANUAL WORKER"                                               
   15 "NEVER DID ANY PAID WORK"                                            
    0 "<NA>"                                                               
   99 "<INAP, NOT 1-4 IN D21A; 16 IN V7>"                                  
 /                                                                         
 V456                                                                      
    1 "NONE"                                                               
    2 "1 TO 4"                                                             
    3 "5 TO 9"                                                             
    4 "10 AND OVER"                                                        
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 5-18 D21A, 1-14 D21B; 16 V7>"                            
 /                                                                         
 V457                                                                      
    1 "MIDDLE CLASS"                                                       
    2 "LOWER MIDDLE CLASS"                                                 
    3 "WORKING CLASS"                                                      
    4 "UPPER CLASS"                                                        
    5 "UPPER MIDDLE CLASS"                                                 
    6 "REFUSES TO BE CLASSIFIED"                                           
    7 "OTHER"                                                              
    8 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V458                                                                      
    1 "OWN HOUSE"                                                          
    2 "OWN APARTMENT"                                                      
    3 "RENT PRIV HOUSE"                                                    
    4 "RENT PRIV APARTMENT"                                                
    5 "RENT CORPOR HOUSE"                                                  
    6 "RENT CORPOR APARTMENT"                                              
    7 "OTHER"                                                              
    8 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V459                                                                      
    1 "RURAL AREA OR VILLAGE"                                              
    2 "SMALL OR MIDDLE SIZE TOWN"                                          
    3 "LARGE TOWN"                                                         
    4 "DK"                                                                 
    0 "<NA>"                                                               
 /                                                                         
 V460                                                                      
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
   99 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V461                                                                      
    1 "SEVERAL TIMES A WEEK"                                               
    2 "ONCE A WEEK"                                                        
    3 "A FEW TIMES A YEAR"                                                 
    4 "ONCE A YEAR OR LESS"                                                
    5 "NEVER"                                                              
    6 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1-4 IN D26; 16 IN V7>"                                   
 /                                                                         
 V462                                                                      
    1 "RELIGIOUS"                                                          
    2 "NOT RELIGIOUS"                                                      
    3 "AN AGNOSTIC"                                                        
    4 "AN ATHEIST"                                                         
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V463                                                                      
   97 "REFUSAL"                                                            
   98 "DK"                                                                 
    0 "<NA>"                                                               
.                                                                          
DOCUMENT                                                                   
  V463 - D29, HH INCOME                                                    
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
      (10)  300001 FIM AND MORE                                            
 .                                                                         
VALUE LABELS                                                               
 V464                                                                      
    1 "+ +"                                                                
    2 "+"                                                                  
    3 "-"                                                                  
    4 "- -"                                                                
    5 "DK/REFUSAL"                                                         
    9 "<INAP, 15 & 16 IN V7>"                                              
 /                                                                         
 V465                                                                      
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V466                                                                      
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V467 V468                                                                 
    98 "<NA>"                                                              
    99 "<INAP, CODED 16 IN V7>"                                            
 /                                                                         
 V469                                                                      
    0 "<NA>"                                                               
  999 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V470                                                                      
    1 "TWO, INTERVIEWER/RESPONDENT"                                        
    2 "THREE"                                                              
    3 "FOUR"                                                               
    4 "FIVE OR MORE"                                                       
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V471                                                                      
    1 "EXCELLENT"                                                          
    2 "FAIR"                                                               
    3 "AVERAGE"                                                            
    4 "BAD"                                                                
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V472                                                                      
    0 "<NA>"                                                               
   99 "<INAP, CODED 16 IN V7>"                                             
.                                                                          
DOCUMENT                                                                   
  V472 - P6, SIZE OF COMMUNITY                                             
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
      (05)  SPREDT BEBYGGLES                                               
 .                                                                         
DOCUMENT                                                                   
  V473 - P7.1                                                              
  REGION I (NUTS 2 LEVEL)                                                  
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
      (11)  LAPIN LAANI (NORTHERN)                                         
 .                                                                         
VALUE LABELS                                                               
 V473                                                                      
   99 "<INAP, CODED 10 IN V7>"                                             
 /                                                                         
 V474                                                                      
   99 "<INAP, 6-8, 11, 13, 16 IN V7>"                                      
.                                                                          
DOCUMENT                                                                   
 V474 - P7.2                                                               
   REGION II  (NUTS 1 LEVEL)                                               
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
      (04)  TRONDELAG/NORTHERN                                             
 .                                                                         
VALUE LABELS                                                               
 V475                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V476                                                                      
    1 "NO, DK THIS OFFICE"                                                 
    2 "YES, KNOW OFFC, SEND CHK"                                           
    3 "YES, KNOW OFFC, NO CHK"                                             
    4 "NSP"                                                                
    0 "<NA>"                                                               
    9 "<INAP, NOT 2 IN V7>"                                                
 /                                                                         
 V477                                                                      
    1 "AN ADVANTAGE"                                                       
    2 "A DISADVANTAGE"                                                     
    3 "DOESN'T MATTER"                                                     
    4 "NOT NOTICED BEFORE TODAY"                                           
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 7 IN V7>"                                                
 /                                                                         
 V478                                                                      
    1 "YES"                                                                
    2 "NO"                                                                 
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 4 NOR 14 IN V7>"                                         
 /                                                                         
 V479                                                                      
    1 "TOO MUCH"                                                           
    2 "JUST RIGHT"                                                         
    3 "NOT ENOUGH"                                                         
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 4 NOR 14 IN V7>"                                         
 /                                                                         
 V480                                                                      
    1 "A LOT AFFECTED LIFE/WORK"                                           
    2 "A LITTLE AFFECTED LIFE/WORK"                                        
    3 "NOT AFFECTED LIFE/WORK"                                             
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 11 IN V7>"                                               
 /                                                                         
 V481 TO V490                                                              
    1 "MENTIONED"                                                          
    0 "NOT MENTIONED"                                                      
    8 "<NA>"                                                               
    9 "<INAP, NOT 12 IN V7>"                                               
 /                                                                         
 V491 V492 V493                                                            
    1 "MORE PROTECTION"                                                    
    2 "LESS PROTECTION"                                                    
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 1 IN V7>"                                                
 /                                                                         
 V494                                                                      
    1 "IN FAVOUR"                                                          
    2 "OPPOSED"                                                            
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 8 IN V7>"                                                
 /                                                                         
 V495                                                                      
    1 "PARTICIPATE W/OUT PROBLEMS"                                         
    2 "PARTICIPATE WITH DELAY"                                             
    3 "NOT ABLE TO PARTCICIPATE"                                           
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 5 IN V7>"                                                
 /                                                                         
 V496                                                                      
    1 "GOOD THING"                                                         
    2 "BAD THING"                                                          
    3 "NO EFFECT"                                                          
    4 "NSP"                                                                
    0 "<NA>"                                                               
    9 "<INAP, NOT 13 IN V7>"                                               
 /                                                                         
 V497                                                                      
    1 "GOOD"                                                               
    2 "BAD"                                                                
    3 "GOOD AND BAD"                                                       
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V498                                                                      
    1 "INDEPENDENT/DURABLE SOLUTION"                                       
    2 "STEP ON ROAD TO MEMBERSHIP"                                         
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V499                                                                      
    1 "VERY IMPORTANT"                                                     
    2 "FAIRLY IMPORTANT"                                                   
    3 "NOT IMPORTANT"                                                      
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V500                                                                      
    1 "FOR"                                                                
    2 "AGAINST"                                                            
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V501                                                                      
    1 "WOULD DEF VOTE FOR"                                                 
    2 "WOULD PROB VOTE FOR"                                                
    3 "WOULD PROB VOTE AGAINST"                                            
    4 "WOULD DEF VOTE AGAINST"                                             
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V502                                                                      
    1 "DECISIVE"                                                           
    2 "SOME"                                                               
    3 "NONE AT ALL"                                                        
    4 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V503                                                                      
    1 "YES, VERY MUCH IMPORTANCE"                                          
    2 "YES, MUCH IMPORTANCE"                                               
    3 "YES, A LITTLE IMPORTANCE"                                           
    4 "YES, VERY LITTLE IMPORTANCE"                                        
    5 "NO, DON'T THINK SO"                                                 
    6 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V504                                                                      
    1 "GREAT IMPORTANCE"                                                   
    2 "SOME IMPORTANCE"                                                    
    3 "LITTLE IMPORTANCE"                                                  
    4 "NO IMPORTANCE"                                                      
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V505 V506                                                                 
    1 "NOR REF FIRST"                                                      
    2 "NOR REF BEFORE SWEDEN"                                              
    3 "NOR REF SAME TIME AS SWEDEN"                                        
    4 "NOR REF AFTER SWEDEN"                                               
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V507                                                                      
    1 "WOULD DEFENITELY VOTE FOR"                                          
    2 "WOULD PROBABLY VOTE FOR"                                            
    3 "WOULD PROBABLY VOTE AGAINST"                                        
    4 "WOULD DEFENITELY VOTE AGAINST"                                      
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V508                                                                      
    1 "VERY POSITIVELY"                                                    
    2 "FAIRLY POSITIVELY"                                                  
    3 "FAIRLY NEGATIVELY"                                                  
    4 "VERY NEGATIVELY"                                                    
    5 "WILL NOT HAVE ANY INFLUENCE"                                        
    6 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V509                                                                      
    1 "MORE POSITIVE TOWARDS MEMBERSHIP"                                   
    2 "MORE NEGATIVE TOWARDS MEMBERSHIP"                                   
    3 "MORE INSECURE"                                                      
    4 "OR NOT CHANGED OPNION"                                              
    5 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V510 TO V517                                                              
    1 "GREAT CONFIDENCE"                                                   
    2 "MUCH CONFIDENCE"                                                    
    3 "A LITTLE CONFIDENCE"                                                
    4 "VERY LITTLE CONFIDENCE"                                             
    5 "NO CONFIDENCE AT ALL"                                               
    6 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V518  TO V526                                                             
    1 "ADVANTAGE"                                                          
    2 "DISADVANTAGE"                                                       
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V527                                                                      
    1 "DID NOT VOTE IN 1972"                                               
    2 "VOTED FOR"                                                          
    3 "VOTED AGAINST"                                                      
    4 "DON'T REMEMBER"                                                     
    5 "NO ANSWER"                                                          
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V528                                                                      
    1 "DO BELEIVE"                                                         
    2 "DO NOT BELIEVE"                                                     
    3 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V529                                                                      
    1 "VERY INTERESTED"                                                    
    2 "FAIRLY INTERESTED"                                                  
    3 "A LITTLE INTERESTED"                                                
    4 "NOT MUCH INTERESTED"                                                
    5 "NOT INTERESTED AT ALL"                                              
    6 "DK"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, NOT 15 IN V7>"                                               
 /                                                                         
 V530                                                                      
    1 "+ + HIGH"                                                           
    2 "+"                                                                  
    3 "-"                                                                  
    4 "- - LOW"                                                            
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V531                                                                      
    1 "FARMER & FISHER"                                                    
    2 "PROFESSIONALS"                                                      
    3 "SHOPOWNER, CRAFTSMEN"                                               
    4 "BUSINESS PROPRIETORS"                                               
    5 "EMPLOYED PROFESSIONAL"                                              
    6 "GENERAL MANAGEMENT"                                                 
    7 "MIDDLE MANAGEMENT"                                                  
    8 "EMPLOYED AT A DESK"                                                 
    9 "EMPLOYED TRAVELLING"                                                
   10 "EMPLOYED SERVICE"                                                   
   11 "SUPERVISORS"                                                        
   12 "SKILLED MANUAL WORKERS"                                             
   13 "OTHER MANUAL WORKER"                                                
    0 "<NA>"                                                               
   99 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V532                                                                      
    1 "+++"                                                                
    2 "++"                                                                 
    3 "--"                                                                 
    4 "---"                                                                
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V533                                                                      
    1 "A"                                                                  
    2 "B"                                                                  
    3 "C"                                                                  
    4 "D"                                                                  
    5 "E1"                                                                 
    6 "E2"                                                                 
    7 "E3"                                                                 
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V534                                                                      
    1 "SELF-EMPLOYED"                                                      
    2 "MANAGERS"                                                           
    3 "OTHER WHITE COLLARS"                                                
    4 "MANUAL WORKERS"                                                     
    5 "HOUSE PERSON"                                                       
    6 "UNEMPLOYED"                                                         
    0 "<NA>"                                                               
    9 "<INAP, CODED 16 IN V7>"                                             
 /                                                                         
 V535                                                                      
    1 "NATIONALS ONLY"                                                     
    0 "NON NAT+OVERSAMPLE"                                                 
 /                                                                         
 V536                                                                      
    1 "NATIONALS+NON NAT"                                                  
    0 "OVERSAMPLE"                                                         
    9 "<INAP, 15 & 16 IN V7>"                                              
 /                                                                         
 V537                                                                      
    1 "ALL V451 CODED 1"                                                   
    0 "V451 NOT CODED 1"                                                   
    9 "<INAP, 15 & 16 IN V7>"                                              
 /                                                                         
 V538                                                                      
  1 "NATIONALS"                                                            
  0 "NON NATIONALS"                                                        
 /                                                                         
 V540                                                                      
    9 "INAP, NOT PART OF SPLIT BALLOT"                                     
    1 "VERS A: EUR COMMUNITY"                                              
    2 "VERS B: EUR UNION (EUR COMMTY)"                                     
.                                                                          
                                                                           
* MISSING VALUES                                                           
   V34 (0, 9) /                                                            
   V35 (0, 13 THRU HI) /                                                   
   V36 (0, 5, 9)                                                           
   V37 V84 (0, 5) /                                                        
   V38 (0, 4, 9) /                                                         
   V39 (0, 5, 9) /                                                         
   V40 (0, 3, 9) /                                                         
   V47 V48 V100 V141 V142 V200 TO V207 V273                                
     V301 V377 V381 V424 V425 V475 (0, 3, 9) /                             
   V41 (0, 3, 9) /                                                         
   V42 V43 V44 V45 V46 (0, 9) /                                            
   V49 (0, 9) /                                                            
   V50 (0, 9) /                                                            
   V51 (0, 9) /                                                            
   V52 (0, 9) /                                                            
   V53 (0, 9) /                                                            
   V54 V55 (0, 7 THRU HI) /                                                
   V56 TO V58 (0, 6, 9) /                                                  
   V59 (0, 5) /                                                            
   V60 (0, 5) /                                                            
   V61 (0, 4) /                                                            
   V62 V102 (0, 3) /                                                       
   V63 V64 (0, 8, 9) /                                                     
   V65 (0, 3, 9) /                                                         
   V66 TO V83 (0, 3) /                                                     
   V85 (0, 3, 9) /                                                         
   V86 (0, 5, 9) /                                                         
   V87 TO V98 (0, 3) /                                                     
   V99 (0, 5, 9) /                                                         
   V101 (0, 3, 9) /                                                        
   V103 (0, 9) /                                                           
   V104 (0, 6, 9) /                                                        
   V105 (0, 10, 99) /                                                      
   V106 (0, 5, 9) /                                                        
   V107 (0, 5, 9) /                                                        
   V108 (0, 90 THRU HI) /                                                  
   V109 (0, 3, 9) /                                                        
   V110 (0, 14, 99) /                                                      
   V111 (0, 3) /                                                           
   V112 (0, 3, 9) /                                                        
   V113 TO V137 (8, 9) /                                                   
   V138 (0, 4, 9) /                                                        
   V139 (0, 9) /                                                           
   V140 (0, 3, 9) /                                                        
   V143 TO V146 (0, 3) /                                                   
   V147 TO V154 V185 TO V194 V246 TO V251 (8) /                            
   V155 TO V162 (8, 9) /                                                   
   V163 (0, 5, 9) /                                                        
   V164 TO V167 (0, 3, 9) /                                                
   V166 V167 (0, 3, 9) /                                                   
   V168 TO V172 (8, 9) /                                                   
   V173 TO V178 (0, 3) /                                                   
   V179 V180 (0, 3, 9) /                                                   
   V181 (0, 5) /                                                           
   V182 V183 (0, 3, 9) /                                                   
   V184 (0, 10) /                                                          
   V195 TO V199 (0, 3) /                                                   
   V208 (0, 990, 998) /                                                    
   V209 (0) /                                                              
   V210 TO V221 V222 TO V233 V234 TO V245 (8, 9) /                         
   V252 (0, 11, 99) /                                                      
   V253 TO V258 (0, 4) /                                                   
   V259 (4, 8, 9) /                                                        
   V260 TO V265 (0, 4, 9) /                                                
   V266 TO V271 (0, 3) /                                                   
   V272 (0, 3) /                                                           
   V274 TO V284 (8, 9) /                                                   
   V285 TO V294 (0, 3, 9) /                                                
   V295 (0, 11, 99) /                                                      
   V296 (0, 3, 9) /                                                        
   V297 V298 (0, 4, 9) /                                                   
   V299 (0, 3, 9) /                                                        
   V300 (0, 11, 99) /                                                      
   V302 V303 (0, 4, 9) /                                                   
   V304 TO V317 (8, 9) /                                                   
   V318 (0, 3, 9) /                                                        
   V319 TO V332 V334 TO V358 (8, 9) /                                      
   V333 (0, 3, 9) /                                                        
   V359 (0, 4, 9) /                                                        
   V360 (0, 5, 9) /                                                        
   V361 TO V376 (8, 9) /                                                   
   V378 (0, 5, 9) /                                                        
   V379 (0, 3, 9) /                                                        
   V380 (0, 4, 9) /                                                        
   V382 (0, 7, 9) /                                                        
   V383 (0, 3, 9) /                                                        
   V384 (0, 3, 9) /                                                        
   V385 TO V387 V388 TO V391 (0, 3, 9) /                                   
   V392 TO V403 V404 TO V416 (0, 4, 9) /                                   
   V417 (0, 4 THRU HI) /                                                   
   V418 V419 (7, 8, 9) /                                                   
   V420 V463 (0, 97 THRU HI) /                                             
   V421 (0, 5, 9) /                                                        
   V422 V423 (0, 90 THRU HI) /                                             
   V426 (0,9) /                                                            
   V427 (0, 997, 999) /                                                    
   V428 V429 (0, 998, 999) /                                               
   V431 (0) /                                                              
   V432 (0) /                                                              
   V433 (0) /                                                              
   V434 (0) /                                                              
   V435 (0, 11) /                                                          
   V436 TO V445 (8, 9) /                                                   
   V446 V447 (0, 99) /                                                     
   V448 (998, 999) /                                                       
   V449 V450 (0, 5 ,9) /                                                   
   V451 V452 (0, 3, 9) /                                                   
   V453 (0, 97, 99) /                                                      
   V454 (0, 99) /                                                          
   V455 V472 (0, 99) /                                                     
   V456 (0, 5, 9) /                                                        
   V457 V458 (0, 8, 9) /                                                   
   V459 (0, 4) /                                                           
   V460 (0, 10, 99) /                                                      
   V461 (0, 6 THRU HI) /                                                   
   V462 V464 (0, 5, 9) /                                                   
   V465 (0, 99) /                                                          
   V466 V470 (0, 9) /                                                      
   V467 V468 (98, 99) /                                                    
   V469 (0, 999) /                                                         
   V471 V475 (0, 9) /                                                      
   V473 (0, 999) /                                                         
   V474 (99) /                                                             
   V476 (0, 4, 9) /                                                        
   V477 (0, 5, 9) /                                                        
   V478 (0, 3, 9) /                                                        
   V479 (0, 4, 9) /                                                        
   V480 (0, 4, 9) /                                                        
   V481 TO V490 (8, 9) /                                                   
   V491 TO V494 (0, 3, 9) /                                                
   V495 V496 (0, 4, 9) /                                                   
   V497 (0, 4, 9) /                                                        
   V498 (0, 3, 9) /                                                        
   V499 (0, 4, 9) /                                                        
   V500 (0, 3, 9) /                                                        
   V501 (0, 5, 9) /                                                        
   V502 (0, 4, 9) /                                                        
   V503 (0, 6, 9) /                                                        
   V504 (0, 5, 9) /                                                        
   V505 V506 (0, 9) /                                                      
   V507 (0, 5, 9) /                                                        
   V508 (0, 6, 9) /                                                        
   V509 (0, 5, 9) /                                                        
   V510 TO V517 (0, 6, 9) /                                                
   V518 TO V526 (0, 3, 9) /                                                
   V527 (0, 5, 9) /                                                        
   V528 (0, 3, 9) /                                                        
   V529 (0, 6, 9) /                                                        
   V530 (0, 9) /                                                           
   V531 (0, 99) /                                                          
   V532 (0, 9) /                                                           
   V533 (0, 9) /                                                           
   V534 (0, 9) /                                                           
   V536 V537 (9) /                                                         
   V540 (9)                                                                
.                                                                          
                                                                           
* Users may add their own data transformation commands here .              
