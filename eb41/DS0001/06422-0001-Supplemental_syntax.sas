*-------------------------------------------------------------------------*
 |                                                                         
 |               SAS COMPANION PROGRAM FILE FOR ICPSR 06422
 |        EURO-BAROMETER 41.0: TRADE ISSUES, BLOOD DONATION, AIDS,
 |                      AND SMOKING, MARCH-JUNE 1994
 |
 |
 | This SAS program is provided for optional use with the SAS transport
 | version of this data file as distributed by ICPSR. The metadata provided
 | below are not stored in the SAS transport version of this data
 | collection.  Users need to use SAS PROC COPY to copy the SAS transport
 | file to a SAS data set on their system. This program can then be used in
 | conjunction with the SAS system data file.
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions.  Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set. Users
 | should replace "SAS-dataset" with their name for the SAS data set copied
 | from the SAS transport file. Users can add a SAS libname statement
 | and an output SAS data set name to make a permanent SAS data set.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in the section.
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables stored in the SAS data set. Users can refer to their
 | SAS manual for information on how to permanently store formats in a
 | SAS catalog.
 |
 | NOTE:  Users should modify these sections to suit their specific needs.
 | The MISSING VALUE RECODES section has been commented out (i.e., '/*'
 | and '*/').  To make this section active in the program, users should
 | remove the SAS comment indicators from this section.
 |
 *------------------------------------------------------------------------;

* SAS PROC FORMAT;

PROC FORMAT;
  VALUE V2ffffff  4='(4) FOURTH ICPSR EDITION, FEBRUARY 1998' ;
  VALUE V3ffffff  1='(1) PART ONE' ;
  VALUE V5ffffff  1='(1) FRANCE' 2='(2) BELGIUM' 3='(3) NETHERLANDS' 4='(4) WEST GERMANY'
                  5='(5) ITALY' 6='(6) LUXEMBOURG' 7='(7) DENMARK' 8='(8) IRELAND'
                  9='(9) UNITED KINGDOM' 10='(10) GREECE' 11='(11) SPAIN' 12='(12) PORTUGAL'
                  13='(13) EAST GERMANY' 14='(14) NORWAY' 15='(15) FINLAND' ;
  VALUE V7ffffff  1='(1) FRANCE' 2='(2) BELGIUM' 3='(3) NETHERLANDS' 4='(4) WEST GERMANY'
                  5='(5) ITALY' 6='(6) LUXEMBOURG' 7='(7) DENMARK' 8='(8) IRELAND'
                  9='(9) GREAT BRITAIN' 10='(10) NORTHERN IRELAND' 11='(11) GREECE'
                  12='(12) SPAIN' 13='(13) PORTUGAL' 14='(14) EAST GERMANY' 15='(15) NORWAY'
                  16='(16) FINLAND' ;
  VALUE V10fffff  1='(1) FRANCE' 2='(2) BELGIUM' 3='(3) NETHERLANDS' 4='(4) GERMANY'
                  5='(5) ITALY' 6='(6) LUXEMBOURG' 7='(7) DENMARK' 8='(8) IRELAND'
                  9='(9) GREAT BRITAIN' 10='(10) NORTHERN IRELAND' 11='(11) GREECE'
                  12='(12) SPAIN' 13='(13) PORTUGAL' 14='(14) NORWAY' 15='(15) FINLAND' ;
  VALUE V34fffff  0='(0) <NA>' 1='(1) AT PRESENT ADDRESS' 2='(2) AT ANOTHER ADDRESS'
                  3='(3) DON''T KNOW IF REGISTERED' 4='(4) DOES NOT APPEAR'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V35fffff  0='(0) <NA>' 1='(1) BELGIUM' 2='(2) DENMARK' 3='(3) GERMANY' 4='(4) GREECE'
                  5='(5) SPAIN' 6='(6) FRANCE' 7='(7) IRELAND' 8='(8) ITALY' 9='(9) LUXEMBURG'
                  10='(10) NETHERLANDS' 11='(11) PORTUGAL'
                  12='(12) UNITED KINGDOM (GREAT BRITAIN, N IRELAND'
                  13='(13) OTHER COUNTRIES' 14='(14) DON''T KNOW'
                  99='(99) <INAP, CODED 16 IN V7>' ;
  VALUE V36fffff  0='(0) <NA>' 1='(1) VERY SATISFIED' 2='(2) FAIRLY SATISFIED'
                  3='(3) NOT VERY SATISFIED' 4='(4) NOT AT ALL SATISFIED' 5='(5) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V37fffff  0='(0) <NA>' 1='(1) VERY SATISFIED' 2='(2) FAIRLY SATISFIED'
                  3='(3) NOT VERY SATISFIED' 4='(4) NOT AT ALL SATISFIED' 5='(5) DK' ;
  VALUE V38fffff  0='(0) <NA>' 1='(1) FREQUENTLY' 2='(2) OCCASIONALLY' 3='(3) NEVER' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V39fffff  0='(0) <NA>' 1='(1) OFTEN' 2='(2) FROM TIME TO TIME' 3='(3) RARELY'
                  4='(4) NEVER' 5='(5) DK' 9='(9) <INAP, CODED 16 IN V7' ;
  VALUE V40fffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, CODED 15 & 16 IN V7>' ;
  VALUE V41fffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, 2 IN Q6; 15 & 16 IN V7>' ;
  VALUE V42fffff  0='(0) <NA>' 1='(1) X IS COMMON NAME FOR A TYPE OF PRODUCT'
                  2='(2) X IS PROD FR (FIRST ANSWER FROM Q.9)'
                  9='(9) <INAP, 2 IN Q6; 15 & 16 IN V7>' ;
  VALUE V43fffff  0='(0) <NA>' 1='(1) X IS COMMON NAME FOR A TYPE OF PRODUCT'
                  2='(2) X IS PROD FR (FIRST ANSWER FROM Q.9)'
                  9='(9) <INAP, 2 IN Q6; 15 & 16 IN V7>' ;
  VALUE V44fffff  0='(0) <NA>' 1='(1) X IS COMMON NAME FOR A TYPE OF PRODUCT'
                  2='(2) X IS PROD FR (FIRST ANSWER FROM Q.9)'
                  9='(9) <INAP, 2 IN Q6; 15 & 16 IN V7>' ;
  VALUE V45fffff  0='(0) <NA>' 1='(1) X IS COMMON NAME FOR A TYPE OF PRODUCT'
                  2='(2) X IS PROD FR (FIRST ANSWER FROM Q.9)'
                  9='(9) <INAP, 2 IN Q6; 15 & 16 IN V7>' ;
  VALUE V46fffff  0='(0) <NA>' 1='(1) X IS COMMON NAME FOR A TYPE OF PRODUCT'
                  2='(2) X IS PROD FR (FIRST ANSWER FROM Q.9)'
                  9='(9) <INAP, 2 IN Q6; 15 & 16 IN V7>' ;
  VALUE V47fffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, CODED 15 & 16 IN V7>' ;
  VALUE V48fffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, CODED 15 & 16 IN V7>' ;
  VALUE V49fffff  0='(0) <NA>' 1='(1) X IS COMMON NAME FOR A TYPE OF CHEESE'
                  2='(2) X IS A CHEESE FROM (FIRST ANSWER FR Q13)'
                  9='(9) <INAP 2 IN Q12; 15 & 16 IN V7>' ;
  VALUE V50fffff  0='(0) <NA>' 1='(1) X IS COMMON NAME FOR A TYPE OF CHEESE'
                  2='(2) X IS A CHEESE FROM (2ND ANSWER FR Q13)'
                  9='(9) <INAP 2 IN Q12; 15 & 16 IN V7>' ;
  VALUE V51fffff  0='(0) <NA>' 1='(1) X IS COMMON NAME FOR A TYPE OF CHEESE'
                  2='(2) X IS A CHEESE FROM (THIRD ANSWER FR Q13)'
                  9='(9) <INAP 2 IN Q12; 15 & 16 IN V7>' ;
  VALUE V52fffff  0='(0) <NA>' 1='(1) X IS COMMON NAME FOR A TYPE OF CHEESE'
                  2='(2) X IS A CHEESE FROM (4TH ANSWER FR Q13)'
                  9='(9) <INAP 2 IN Q12; 15 & 16 IN V7>' ;
  VALUE V53fffff  0='(0) <NA>' 1='(1) X IS COMMON NAME FOR A TYPE OF CHEESE'
                  2='(2) X IS A CHEESE FROM (FIFTH ANSWER FR Q13)'
                  9='(9) <INAP 2 IN Q12; 15 & 16 IN V7>' ;
  VALUE V54fffff  0='(0) <NA>' 1='(1) AT LEAST ONCE A WEEK' 2='(2) ABOUT EVERY TWO WEEKS'
                  3='(3) ABOUT EVERY MONTH' 4='(4) ABOUT EVERY 2-3 MONTHS'
                  5='(5) LESS OFTEN' 6='(6) (PRACTICALLY) NEVER' 7='(7) DK'
                  8='(8) <UNDOCUMENTED CODE>' 9='(9) <INAP, 15 & 16 IN V7>' ;
  VALUE V55fffff  0='(0) <NA>' 1='(1) AT LEAST ONCE A WEEK' 2='(2) ABOUT EVERY TWO WEEKS'
                  3='(3) ABOUT EVERY MONTH' 4='(4) ABOUT EVERY 2-3 MONTHS'
                  5='(5) LESS OFTEN' 6='(6) (PRACTICALLY) NEVER' 7='(7) DK'
                  8='(8) <UNDOCUMENTED CODE>' 9='(9) <INAP, 15 & 16 IN V7>' ;
  VALUE V56fffff  0='(0) <NA>' 1='(1) EVERYDAY' 2='(2) SEVERAL TIMES A WEEK'
                  3='(3) ONCE OR TWICE A WEEK' 4='(4) LESS OFTEN' 5='(5) NEVER' 6='(6) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V57fffff  0='(0) <NA>' 1='(1) EVERYDAY' 2='(2) SEVERAL TIMES A WEEK'
                  3='(3) ONCE OR TWICE A WEEK' 4='(4) LESS OFTEN' 5='(5) NEVER' 6='(6) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V58fffff  0='(0) <NA>' 1='(1) EVERYDAY' 2='(2) SEVERAL TIMES A WEEK'
                  3='(3) ONCE OR TWICE A WEEK' 4='(4) LESS OFTEN' 5='(5) NEVER' 6='(6) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V59fffff  0='(0) <NA>' 1='(1) A GREAT DEAL' 2='(2) TO SOME EXTENT' 3='(3) NOT MUCH'
                  4='(4) NOT AT ALL' 5='(5) DK' ;
  VALUE V60fffff  0='(0) <NA>' 1='(1) VERY WELL' 2='(2) QUITE WELL' 3='(3) NOT VERY WELL'
                  4='(4) NOT AT ALL WELL' 5='(5) DK' ;
  VALUE V61fffff  0='(0) <NA>' 1='(1) A GOOD THING' 2='(2) A BAD THING'
                  3='(3) NEITHER GOOD NOR BAD' 4='(4) DK' ;
  VALUE V62fffff  0='(0) <NA>' 1='(1) BENEFITED' 2='(2) NOT BENEFITED' 3='(3) DK' ;
  VALUE V63fffff  0='(0) <NA>' 1='(1) 1 STANDING STILL' 2='(2) 2' 3='(3) 3' 4='(4) 4' 5='(5) 5' 6='(6) 6'
                  7='(7) 7 AS FAST AS POSSIBLE' 8='(8) DK' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V64fffff  0='(0) <NA>' 1='(1) 1 STANDING STILL' 2='(2) 2' 3='(3) 3' 4='(4) 4' 5='(5) 5' 6='(6) 6'
                  7='(7) 7 AS FAST AS POSSIBLE' 8='(8) DK' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V65fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V66fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V67fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V68fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V69fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V70fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V71fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V72fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V73fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V74fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V75fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V76fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V77fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V78fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V79fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V80fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V81fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V82fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V83fffff  0='(0) <NA>' 1='(1) (NATIONAL) GOVERNMENT'
                  2='(2) THE EUROPEAN COMMUNITY' 3='(3) DK' ;
  VALUE V84fffff  0='(0) <NA>' 1='(1) VERY SATISFIED' 2='(2) FAIRLY SATISFIED'
                  3='(3) NOT VERY SATISFIED' 4='(4) NOT AT ALL SATISFIED' 5='(5) DK' ;
  VALUE V85fffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' 9='(9) <INAP, NOT GREECE>' ;
  VALUE V86fffff  0='(0) <NA>' 1='(1) VERY IMPORTANT' 2='(2) IMPORTANT'
                  3='(3) NOT VERY IMPORTANT' 4='(4) NOT AT ALL IMPORTANT' 5='(5) DK'
                  9='(9) <INAP, NOT GREECE>' ;
  VALUE V87fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V88fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V89fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V90fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V91fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V92fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V93fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V94fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V95fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V96fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V97fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V98fffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK' ;
  VALUE V99fffff  0='(0) <NA>' 1='(1) VERY HOPEFUL' 2='(2) RATHER HOPEFUL'
                  3='(3) RATHER FEARFUL' 4='(4) VERY FEARFUL' 5='(5) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V100ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, CODED 15 & 16 IN V7>' ;
  VALUE V101ffff  0='(0) <NA>' 1='(1) A POSITIVE EFFECT' 2='(2) NOT A POSITIVE EFFECT'
                  3='(3) DK' 9='(9) <INAP, 15 & 16 IN V7>' ;
  VALUE V102ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' ;
  VALUE V103ffff  0='(0) <NA>' 1='(1) YES CORRECT DATE MENTIONED'
                  2='(2) YES INCORRECT DATE MENTIONED'
                  3='(3) NO, DOES NOT KNOW THE DATE' 9='(9) <INAP, 15 & 16 IN V7>' ;
  VALUE V104ffff  0='(0) <NA>' 1='(1) WILL CERTAINLY GO AND VOTE'
                  2='(2) WILL PROBABLY GO AND VOTE' 3='(3) WILL PROBABLY NOT VOTE'
                  4='(4) WILL CERTAINLY NOT VOTE' 5='(5) OTHER ANSWER (SPONTANEOUS)'
                  6='(6) DK' 9='(9) <INAP, 15 & 16 IN V7>' ;
  VALUE V105ffff  0='(0) <NA>' 1='(1) NOT INTRSTD POLITICS OR ELECTIONS'
                  2='(2) NOT INTRSTD EUROPEAN ELECTIONS'
                  3='(3) LOST INTRST EUROPEAN MATTERS'
                  4='(4) NEVER BEEN INTRSTD EUROPEAN MATTERS'
                  5='(5) ALWAYS BEEN AGAINST EUROPE' 6='(6) AGAINST EVEN MORE EUROPE'
                  7='(7) NOT WELL ENOUGH INFORMED TO VOTE'
                  8='(8) RESULT IS FOREGONE CONCLUSION'
                  9='(9) OTHER REASONS (SPONTANEOUS)' 10='(10) DK'
                  99='(99) <INAP, NOT 2-6 Q34; 15 & 16 V7>' ;
  VALUE V106ffff  0='(0) <NA>' 1='(1) A) INDIVIDUAL CANDIDATES' 2='(2) B) PARTIES'
                  3='(3) C) CONTENT PROPOSED POLICIES'
                  4='(4) D) NONE OF THESE (SPONTANEOUS)' 5='(5) E) DK'
                  9='(9) <INAP, NOT 1 OR 2 Q34; 15 & 16 V7>' ;
  VALUE V107ffff  0='(0) <NA>' 1='(1) A) INDIVIDUAL CANDIDATES' 2='(2) B) PARTIES'
                  3='(3) C) CONTENT PROPOSED POLICIES'
                  4='(4) D) NONE OF THESE (SPONTANEOUS)' 5='(5) E) DK'
                  9='(9) <INAP, NOT 1 OR 2 Q34; 15 & 16 V7>' ;
  VALUE V108ffff  0='(0) NO ANSWER' 90='(90) OTHER PARTY'
                  95='(95) WOULD VOTE BLANK/SPOIL VOTE' 96='(96) WOULD NOT VOTE'
                  98='(98) DK' 99='(99) <INAP, NOT 1 OR 2 IN Q34; 15 & 16 V7>' ;
  VALUE V109ffff  0='(0) <NA>' 1='(1) YOUR OPIN ABOUT NATL ISSUES'
                  2='(2) YOUR OPIN ABOUT EUROPE' 3='(3) DK'
                  9='(9) <INAP, NOT 1 OR 2 IN Q34; 15 & 16 V7>' ;
  VALUE V110ffff  0='(0) <NA>' 1='(1) UNEMPLOYMENT/RECESSION'
                  2='(2) DEMOCRACY IN EURO COMMUNITY' 3='(3) WORKER''S RIGHTS'
                  4='(4) SOCIAL BENEFITS/HEALTH CARE' 5='(5) EDUCATION' 6='(6) RACISM'
                  7='(7) FOREIGN POLICY/DEFENCE' 8='(8) PENSIONERS''RIGHTS'
                  9='(9) HOMELESSNESS/POVERTY' 10='(10) CRIME' 11='(11) THE ENVIRONMENT'
                  12='(12) TAXATION' 13='(13) MONETARY UNION' 14='(14) DK'
                  99='(99) <INAP, NOT 1 OR 2 IN Q34; 15 & 16 V7>' ;
  VALUE V111ffff  0='(0) <NA>' 1='(1) YES, MORE POWER' 2='(2) NO, NOT MORE POWER' 3='(3) DK' ;
  VALUE V112ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' 9='(9) <INAP, NOT WOMEN>' ;
  VALUE V113ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V114ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V115ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V116ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V117ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V118ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V119ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V120ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V121ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V122ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V123ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V124ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V125ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V126ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V127ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V128ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V129ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V130ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V131ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V132ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V133ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V134ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V135ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V136ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V137ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT WOMEN; 15 IN V7>' ;
  VALUE V138ffff  0='(0) <NA>' 1='(1) NO, NOT CROSSED SUCH BORDERS'
                  2='(2) YES, CROSSED AND SAVED TIME'
                  3='(3) YES, CROSSED BUT DIDNT SAVE TIME' 4='(4) DK'
                  9='(9) <INAP, 15 & 16 IN V7>' ;
  VALUE V139ffff  0='(0) <NA>' 1='(1) YES, HEARD ABOUT' 2='(2) NO, NOT HEARD ABOUT'
                  9='(9) <INAP, 15 & 16 IN V7>' ;
  VALUE V140ffff  0='(0) <NA>' 1='(1) YES, BENEFITED' 2='(2) NO, NOT BENEFITED' 3='(3) DK'
                  9='(9) <INAP, 2 IN Q45; 15 & 16 IN V7>' ;
  VALUE V141ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, CODED 15 & 16 IN V7>' ;
  VALUE V142ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, CODED 15 & 16 IN V7>' ;
  VALUE V143ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' ;
  VALUE V144ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' ;
  VALUE V145ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' ;
  VALUE V146ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' ;
  VALUE V147ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V148ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V149ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V150ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V151ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V152ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V153ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V154ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V155ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1; 15 IN V7>' ;
  VALUE V156ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1; 15 IN V7>' ;
  VALUE V157ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1; 15 IN V7>' ;
  VALUE V158ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1; 15 IN V7>' ;
  VALUE V159ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1; 15 IN V7>' ;
  VALUE V160ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1; 15 IN V7>' ;
  VALUE V161ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1; 15 IN V7>' ;
  VALUE V162ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1; 15 IN V7>' ;
  VALUE V163ffff  0='(0) <NA>' 1='(1) YES, DEFINITELY' 2='(2) YES, PROBABLY'
                  3='(3) NO, PROBABLY NOT' 4='(4) NO, DEFINITELY NOT' 5='(5) DK'
                  9='(9) <INAP, NOT 1 IN Q49C1-C8; 15 IN V7>' ;
  VALUE V164ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, NOT 1 IN Q49C1-C8>' ;
  VALUE V165ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, NOT 1 IN Q49C1-C8>' ;
  VALUE V166ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, NOT 1 IN Q49C1-C8>' ;
  VALUE V167ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, NOT 1 IN Q49C1-C8>' ;
  VALUE V168ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1-C8; 15 IN V7>' ;
  VALUE V169ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1-C8; 15 IN V7>' ;
  VALUE V170ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1-C8; 15 IN V7>' ;
  VALUE V171ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1-C8; 15 IN V7>' ;
  VALUE V172ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q49C1-C8; 15 IN V7>' ;
  VALUE V173ffff  0='(0) <NA>' 1='(1) IMPORTANT' 2='(2) NOT IMPORTANT' 3='(3) DK' ;
  VALUE V174ffff  0='(0) <NA>' 1='(1) IMPORTANT' 2='(2) NOT IMPORTANT' 3='(3) DK' ;
  VALUE V175ffff  0='(0) <NA>' 1='(1) IMPORTANT' 2='(2) NOT IMPORTANT' 3='(3) DK' ;
  VALUE V176ffff  0='(0) <NA>' 1='(1) IMPORTANT' 2='(2) NOT IMPORTANT' 3='(3) DK' ;
  VALUE V177ffff  0='(0) <NA>' 1='(1) IMPORTANT' 2='(2) NOT IMPORTANT' 3='(3) DK' ;
  VALUE V178ffff  0='(0) <NA>' 1='(1) IMPORTANT' 2='(2) NOT IMPORTANT' 3='(3) DK' ;
  VALUE V179ffff  0='(0) <NA>' 1='(1) AN ADVANTAGE' 2='(2) A DISADVANTAGE' 3='(3) DK'
                  9='(9) <INAP, 15 IN V7>' ;
  VALUE V180ffff  0='(0) <NA>' 1='(1) AN ADVANTAGE' 2='(2) A DISADVANTAGE' 3='(3) DK'
                  9='(9) <INAP, 15 IN V7>' ;
  VALUE V181ffff  0='(0) <NA>' 1='(1) STRONGLY IN FAVOUR' 2='(2) SOMEWHAT IN FAVOUR'
                  3='(3) SOMEWHAT OPPOSED' 4='(4) STRONGLY OPPOSED' 5='(5) DK' ;
  VALUE V182ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, CODED 15 & 16 IN V7>' ;
  VALUE V183ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, NOT 1 IN Q58; 15 & 16 IN V7>' ;
  VALUE V184ffff  0='(0) <NA>' 1='(1) A) PRICE' 2='(2) B) QUALITY' 3='(3) C) BRAND NAME'
                  4='(4) D) COUNTRY OF ORIGIN/MFR' 5='(5) E) PRESENTATION/PACKAGING'
                  6='(6) F) YOUR PROD KNOWLEDGE' 7='(7) G) HAS QUALITY LABEL'
                  8='(8) H) SOMETHING ELSE' 9='(9) I) NONE OF THESE (SPONTANEOUS)'
                  10='(10) J) DK' ;
  VALUE V185ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V186ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V187ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V188ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V189ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V190ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V191ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V192ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V193ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V194ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V195ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' ;
  VALUE V196ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' ;
  VALUE V197ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' ;
  VALUE V198ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' ;
  VALUE V199ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' ;
  VALUE V200ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V201ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V202ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V203ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V204ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V205ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V206ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V207ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V208ffff  990='(990) OTHERS' 998='(998) <NA, INCL ALL NOR, FIN>' ;
  VALUE V209ffff  0='(0) <NA, INCL ALL NOR, FIN>' 1='(1) DANISH' 2='(2) GERMAN'
                  3='(3) FRENCH' 4='(4) ITALIAN' 5='(5) DUTCH' 6='(6) ENGLISH' 7='(7) SPANISH'
                  8='(8) PORTUGUESE' 9='(9) GREEK' 10='(10) OTHER' ;
  VALUE V210ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V211ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V212ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V213ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V214ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V215ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V216ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V217ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V218ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V219ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V220ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V221ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V222ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V223ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V224ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V225ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V226ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V227ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V228ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V229ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V230ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V231ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V232ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V233ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V234ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V235ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V236ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V237ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V238ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V239ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V240ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V241ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V242ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V243ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V244ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V245ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V246ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V247ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V248ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V249ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V250ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V251ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>' ;
  VALUE V252ffff  0='(0) <NA>' 1='(1) LESS THAN 5 CIGARETTES' 2='(2) 5 TO 9' 3='(3) 10 TO 14'
                  4='(4) 15 TO 19' 5='(5) 20 TO 24' 6='(6) 25 TO 29' 7='(7) 30 TO 34'
                  8='(8) 35 TO 39' 9='(9) 40 OR MORE' 10='(10) DO NOT SMOKE EVERY DAY'
                  11='(11) DK' 99='(99) <INAP, NOT 1 IN Q67C1-C2>' ;
  VALUE V253ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK' ;
  VALUE V254ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK' ;
  VALUE V255ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK' ;
  VALUE V256ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK' ;
  VALUE V257ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK' ;
  VALUE V258ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK' ;
  VALUE V259ffff  0='(0) DONT WANT TO STOP/CUT DOWN' 1='(1) YES' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q67C1-C3>' ;
  VALUE V260ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK'
                  9='(9) <INAP, NOT 1 IN Q67C1-C3>' ;
  VALUE V261ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK'
                  9='(9) <INAP, NOT 1 IN Q67C1-C3>' ;
  VALUE V262ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK'
                  9='(9) <INAP, NOT 1 IN Q67C1-C3>' ;
  VALUE V263ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK'
                  9='(9) <INAP, NOT 1 IN Q67C1-C3>' ;
  VALUE V264ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK'
                  9='(9) <INAP, NOT 1 IN Q67C1-C3>' ;
  VALUE V265ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) PERHAPS (SPONTANEOUS)' 4='(4) DK'
                  9='(9) <INAP, NOT 1 IN Q67C1-C3>' ;
  VALUE V266ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK' ;
  VALUE V267ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK' ;
  VALUE V268ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK' ;
  VALUE V269ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK' ;
  VALUE V270ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK' ;
  VALUE V271ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK' ;
  VALUE V272ffff  0='(0) <NA>' 1='(1) SMOKING IS INDIV MATTER STRICTLY'
                  2='(2) SMOKING AFFECTS OTHRS/SHOULD BE REGULATD' 3='(3) DK' ;
  VALUE V273ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V274ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q73; 16 IN V7>' ;
  VALUE V275ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q73; 16 IN V7>' ;
  VALUE V276ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q73; 16 IN V7>' ;
  VALUE V277ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q73; 16 IN V7>' ;
  VALUE V278ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q73; 16 IN V7>' ;
  VALUE V279ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q73; 16 IN V7>' ;
  VALUE V280ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q73; 16 IN V7>' ;
  VALUE V281ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q73; 16 IN V7>' ;
  VALUE V282ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q73; 16 IN V7>' ;
  VALUE V283ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q73; 16 IN V7>' ;
  VALUE V284ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 1 IN Q73; 16 IN V7>' ;
  VALUE V285ffff  0='(0) <NA>' 1='(1) TRUE' 2='(2) FALSE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V286ffff  0='(0) <NA>' 1='(1) TRUE' 2='(2) FALSE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V287ffff  0='(0) <NA>' 1='(1) TRUE' 2='(2) FALSE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V288ffff  0='(0) <NA>' 1='(1) TRUE' 2='(2) FALSE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V289ffff  0='(0) <NA>' 1='(1) TRUE' 2='(2) FALSE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V290ffff  0='(0) <NA>' 1='(1) TRUE' 2='(2) FALSE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V291ffff  0='(0) <NA>' 1='(1) TRUE' 2='(2) FALSE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V292ffff  0='(0) <NA>' 1='(1) TRUE' 2='(2) FALSE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V293ffff  0='(0) <NA>' 1='(1) TRUE' 2='(2) FALSE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V294ffff  0='(0) <NA>' 1='(1) TRUE' 2='(2) FALSE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V295ffff  0='(0) <NA>' 1='(1) ONCE OR MORE A DAY' 2='(2) ONCE EVERY 2-6 DAYS'
                  3='(3) ONCE EVERY 1-4 WEEKS' 4='(4) ONCE EVERY MONTH'
                  5='(5) ONCE EVERY 2 MONTHS' 6='(6) ONCE EVERY 3-4 MONTHS'
                  7='(7) ONCE EVERY 5-6 MONTHS' 8='(8) ONCE EVERY 7-12 MONTHS'
                  9='(9) LESS THAN ONCE/YEAR' 10='(10) NEVER' 11='(11) DK'
                  99='(99) <INAP, NOT 1 IN Q75_1; 16 IN V7>' ;
  VALUE V296ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, NOT 1 IN Q75_1; 16 IN V7>' ;
  VALUE V297ffff  0='(0) <NA>' 1='(1) ONLY ONCE' 2='(2) A FEW TIMES' 3='(3) MANY TIMES'
                  4='(4) DK' 9='(9) <INAP, NOT 1 IN Q77; 16 IN V7>' ;
  VALUE V298ffff  0='(0) <NA>' 1='(1) IN THE LAST YEAR'
                  2='(2) MORE THAN ONE YR UP TO 3 YRS AGO' 3='(3) OVER 3 YEARS AGO'
                  4='(4) DK, CAN''T REMEMBER (SPONTANEOUS)'
                  9='(9) <INAP, NOT 1 IN Q77; 16 IN V7>' ;
  VALUE V299ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, NOT 2 IN Q77; 16 IN V7>' ;
  VALUE V300ffff  0='(0) <NA>' 1='(1) ONCE OR MORE A DAY' 2='(2) ONCE EVERY 2-6 DAYS'
                  3='(3) ONCE EVERY 1-4 WEEKS' 4='(4) ONCE EVERY MONTH'
                  5='(5) ONCE EVERY 2 MONTHS' 6='(6) ONCE EVERY 3-4 MONTHS'
                  7='(7) ONCE EVERY 5-6 MONTHS' 8='(8) ONCE EVERY 7-12 MONTHS'
                  9='(9) LESS THAN ONCE A YEAR' 10='(10) NEVER' 11='(11) DK'
                  99='(99) <INAP, CODED 16 IN V7>' ;
  VALUE V301ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V302ffff  0='(0) <NA>' 1='(1) ONLY ONCE' 2='(2) A FEW TIMES' 3='(3) MANY TIMES'
                  4='(4) DK' 9='(9) <INAP, NOT 1 IN Q82; 16 IN V7>' ;
  VALUE V303ffff  0='(0) <NA>' 1='(1) IN THE LAST YEAR'
                  2='(2) MORE THAN ONE YR UP TO 3 YEARS AGO' 3='(3) OVER 3 YEARS AGO'
                  4='(4) DK, CAN''T REMEMBER (SPONTANEOUS)'
                  9='(9) <INAP, NOT 1 IN Q82; 16 IN V7>' ;
  VALUE V304ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V305ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V306ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V307ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V308ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V309ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V310ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V311ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V312ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V313ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V314ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V315ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V316ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V317ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 3 IN Q84; 16 IN V7>' ;
  VALUE V318ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, NOT 2 IN Q82; 16 IN V7>' ;
  VALUE V319ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V320ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V321ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V322ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V323ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V324ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V325ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V326ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V327ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V328ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V329ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V330ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V331ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V332ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 2 IN Q86; 16 IN V7>' ;
  VALUE V333ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO'
                  3='(3) DK/DON''T REMEMBER (SPONTANEOUS)'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V334ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V335ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V336ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V337ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V338ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V339ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V340ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V341ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V342ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V343ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V344ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V345ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V346ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V347ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V348ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V349ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V350ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V351ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V352ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V353ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V354ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V355ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V356ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V357ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V358ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V359ffff  0='(0) <NA>' 1='(1) ACCEPT BLOOD GIVEN BY SELF'
                  2='(2) ACCEPT BLOOD DONAT BY RELAT/FRIEND'
                  3='(3) ACCEPT BLOOD DONAT BY ANYONE' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V360ffff  0='(0) <NA>' 1='(1) SHLD BE GIVEN FOR FREE'
                  2='(2) COVER COST COLLECTING/TEST/DISTRIB'
                  3='(3) CHARGE OVER COLLECTION COST'
                  4='(4) SOLD LIKE ANY OTHER PRODUCT' 5='(5) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V361ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V362ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V363ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V364ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V365ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V366ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V367ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V368ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V369ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V370ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V371ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V372ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V373ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V374ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V375ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V376ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V377ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V378ffff  0='(0) <NA>' 1='(1) VERY IMPORTANT' 2='(2) SOMEWHAT IMPORTANT'
                  3='(3) NOT VERY IMPORTANT' 4='(4) NOT IMPORTANT AT ALL' 5='(5) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V379ffff  0='(0) <NA>' 1='(1) EACH COUNTRY SEPARATELY'
                  2='(2) ALL COUNTRIES WORKING TOGETHER' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V380ffff  0='(0) <NA>' 1='(1) SAFER' 2='(2) AS SAFE' 3='(3) LESS SAFE' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V381ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V382ffff  0='(0) <NA>' 1='(1) OTHER EC/UE/(EC) COUNTRIES'
                  2='(2) OTHER EUROPEAN COUNTRIES' 3='(3) UNITED STATES OF AMERICA'
                  4='(4) CANADA' 5='(5) JAPAN' 6='(6) OTHERS (SPECIFY)' 7='(7) DK'
                  9='(9) <INAP, NOT 2 IN Q100; 16 IN V7>' ;
  VALUE V383ffff  0='(0) <NA>' 1='(1) MORE AFRAID' 2='(2) NOT MORE AFRAID' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V384ffff  0='(0) <NA>' 1='(1) MORE AFRAID' 2='(2) NOT MORE AFRAID' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V385ffff  0='(0) <NA>' 1='(1) MORE AFRAID' 2='(2) NOT MORE AFRAID' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V386ffff  0='(0) <NA>' 1='(1) MORE AFRAID' 2='(2) NOT MORE AFRAID' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V387ffff  0='(0) <NA>' 1='(1) MORE AFRAID' 2='(2) NOT MORE AFRAID' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V388ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V389ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V390ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V391ffff  0='(0) <NA>' 1='(1) TEND TO AGREE' 2='(2) TEND TO DISAGREE' 3='(3) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V392ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V393ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V394ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V395ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V396ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V397ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V398ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V399ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V400ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V401ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V402ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V403ffff  0='(0) <NA>' 1='(1) YES' 2='(2) POSSIBLY' 3='(3) NOT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V404ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V405ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V406ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V407ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V408ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V409ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V410ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V411ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V412ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V413ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V414ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V415ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V416ffff  0='(0) <NA>' 1='(1) INCREASE' 2='(2) DECREASE' 3='(3) NO EFFECT' 4='(4) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V417ffff  0='(0) <NA>' 1='(1) RATHER LEFT' 2='(2) MIDDLE/NEITHER NOR (SPONT)'
                  3='(3) RATHER RIGHT' 4='(4) REFUSAL' 5='(5) DK'
                  9='(9) <INAP, CODED 15 & 16 IN V7>' ;
  VALUE V418ffff  1='(1) NOT VERY LEFT' 5='(5) VERY LEFT' 7='(7) REFUSAL' 8='(8) DK'
                  9='(9) <NA/INAP, CODED 15 & 16 IN V7>' ;
  VALUE V419ffff  1='(1) NOT VERY RIGHT' 5='(5) VERY RIGHT' 7='(7) REFUSAL' 8='(8) DK'
                  9='(9) <NA/INAP, CODED 15 & 16 IN V7>' ;
  VALUE V420ffff  0='(0) <NA>' 1='(1) LEFT' 10='(10) RIGHT' 97='(97) REFUSAL' 98='(98) DK'
                  99='(99) <INAP, CODED 15 & 16 IN V7>' ;
  VALUE V421ffff  0='(0) <NA>' 1='(1) VERY CLOSE' 2='(2) FAIRLY CLOSE'
                  3='(3) MERELY A SYMPATHISER' 4='(4) CLOSE TO NO PARTICULAR PARTY'
                  5='(5) DK' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V422ffff  0='(0) NO ANSWER' 90='(90) OTHER PARTY'
                  95='(95) WOULD VOTE BLANK/SPOIL VOTE' 96='(96) WOULD NOT VOTE'
                  98='(98) DK' 99='(99) <NA>' ;
  VALUE V423ffff  0='(0) NO ANSWER' 90='(90) OTHER PARTY'
                  95='(95) WOULD VOTE BLANK/SPOIL VOTE' 96='(96) WOULD NOT VOTE'
                  98='(98) DK' 99='(99) <NA>' ;
  VALUE V424ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V425ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V426ffff  0='(0) <NA>' 1='(1) SINGLE' 2='(2) MARRIED' 3='(3) LIVING AS MARRIED'
                  4='(4) DIVORCED' 5='(5) SEPARATED' 6='(6) WIDOWED'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V427ffff  0='(0) <NA>' 997='(997) ILLITERATE/NVR STDY (POR)'
                  998='(998) STILL STUDYING' 999='(999) <INAP, 16 IN V7>' ;
  VALUE V428ffff  0='(0) <NA>' 998='(998) NO' 999='(999) <INAP, 997-999 V427; 16 V7>' ;
  VALUE V429ffff  0='(0) <NA>' 998='(998) NO' 999='(999) <INAP, 997-999 V427; 16 V7>' ;
  VALUE V430ffff  1='(1) MALE' 2='(2) FEMALE' ;
  VALUE V431ffff  0='(0) <NA>' ;
  VALUE V432ffff  0='(0) <NA>' 1='(1) 15-24' 2='(2) 25-39' 3='(3) 40-54' 4='(4) 55+' ;
  VALUE V433ffff  0='(0) <NA>' 1='(1) 15-24' 2='(2) 25-34' 3='(3) 35-44' 4='(4) 45-54' 5='(5) 55-64'
                  6='(6) 65+' ;
  VALUE V434ffff  0='(0) <NA>' 1='(1) ONE PERSON' 2='(2) 2 PERSONS' 3='(3) 3 PERSONS'
                  4='(4) 4 PERSONS' 5='(5) 5 PERSONS' 6='(6) 6 PERSONS' 7='(7) 7 PERSONS'
                  8='(8) 8 PERSONS' 9='(9) 9 AND MORE PERSONS' ;
  VALUE V435ffff  0='(0) <NA>' 1='(1) ONE CHILD' 2='(2) TWO CHILDREN' 3='(3) THREE CHILDREN'
                  4='(4) FOUR CHILDREN' 5='(5) FIVE CHILDREN' 6='(6) SIX CHILDREN'
                  7='(7) SEVEN CHILDREN' 8='(8) EIGHT CHILDREN'
                  9='(9) NINE CHILDREN OR MORE' 10='(10) NONE/NO CHILD' ;
  VALUE V436ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V437ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V438ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V439ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V440ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V441ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V442ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V443ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V444ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V445ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V446ffff  0='(0) <NA>' 1='(1) LOOKING AFTER HH' 2='(2) STUDENT' 3='(3) UNEMPLOYED'
                  4='(4) RETIRED' 5='(5) FARMER' 6='(6) FISHERMAN' 7='(7) PROFESSIONAL'
                  8='(8) SHOPOWNER, CRAFTSMEN' 9='(9) BUSINESS PROPRIETORS'
                  10='(10) EMPLOYED PROFESSIONAL' 11='(11) GENERAL MANAGEMENT'
                  12='(12) MIDDLE MANAGEMENT' 13='(13) EMPLOYED AT DESK'
                  14='(14) EMPLOYED TRAVELLING' 15='(15) EMPLOYED SERVICE'
                  16='(16) SUPERVISOR' 17='(17) SKILLED MANUAL WORKER'
                  18='(18) OTHER MANUAL WORKER' 99='(99) <INAP, CODED 16 IN V7>' ;
  VALUE V447ffff  0='(0) <NA>' 1='(1) FARMER' 2='(2) FISHERMAN' 3='(3) PROFESSIONAL'
                  4='(4) SHOPOWNER, CRAFTSMEN' 5='(5) BUSINESS PROPRIETORS'
                  6='(6) EMPLOYED PROFESSIONAL' 7='(7) GENERAL MANAGEMENT'
                  8='(8) MIDDLE MANAGEMENT' 9='(9) EMPLOYED AT DESK'
                  10='(10) EMPLOYED TRAVELLING' 11='(11) EMPLOYED SERVICE'
                  12='(12) SUPERVISOR' 13='(13) SKILLED MANUAL WORKER'
                  14='(14) OTHER MANUAL WORKER' 15='(15) NEVER DID ANY PAID WORK'
                  99='(99) <INAP, NOT 1-4 IN D15A; 16 IN V7>' ;
  VALUE V448ffff  998='(998) <NA>' 999='(999) <INAP, 5-18 IN D15A; 16 IN V7>' ;
  VALUE V449ffff  0='(0) <NA>' 1='(1) NONE' 2='(2) 1 TO 4' 3='(3) 5 TO 9' 4='(4) 10 AND OVER'
                  5='(5) DK' 9='(9) <INAP, NOT 5-18 D15A, 1-14 D15B; 16 V7>' ;
  VALUE V450ffff  0='(0) <NA>' 1='(1) PUBLIC EMPLOYMENT' 2='(2) NATIONALISED INDUSTRY'
                  3='(3) PRIVATE INDUSTRY' 4='(4) PRIVATE SERVICES' 5='(5) DOES NOT KNOW'
                  9='(9) <INAP-NOT 10-18 D15A, 6-14 D15B; 16 V7>' ;
  VALUE V451ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) <UNDOCUMENTED CODE>'
                  9='(9) <INAP, 16 IN V7>' ;
  VALUE V452ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) <UNDOCUMENTED CODE>'
                  9='(9) <INAP, 16 IN V7>' ;
  VALUE V453ffff  0='(0) <NA>' 97='(97) ILLITERATE/NVR STDY <POR ONLY>'
                  98='(98) STILL STUDYING' 99='(99) <INAP, NOT CODE 2 D19B; 16 V7>' ;
  VALUE V454ffff  0='(0) <NA>' 1='(1) LOOKING AFTER HH' 2='(2) STUDENT' 3='(3) UNEMPLOYED'
                  4='(4) RETIRED' 5='(5) FARMER' 6='(6) FISHERMAN' 7='(7) PROFESSIONAL'
                  8='(8) SHOPOWNER, CRAFTSMEN' 9='(9) BUSINESS PROPRIETORS'
                  10='(10) EMPLOYED PROFESSIONAL' 11='(11) GENERAL MANAGEMENT'
                  12='(12) MIDDLE MANAGEMENT' 13='(13) EMPLOYED AT DESK'
                  14='(14) EMPLOYED TRAVELLING' 15='(15) EMPLOYED SERVICE'
                  16='(16) SUPERVISOR' 17='(17) SKILLED MANUAL WORKER'
                  18='(18) OTHER MANUAL WORKER'
                  99='(99) <INAP, NOT 2 IN D19B; 16 IN V7>' ;
  VALUE V455ffff  0='(0) <NA>' 1='(1) FARMER' 2='(2) FISHERMAN' 3='(3) PROFESSIONAL'
                  4='(4) SHOPOWNER, CRAFTSMEN' 5='(5) BUSINESS PROPRIETORS'
                  6='(6) EMPLOYED PROFESSIONAL' 7='(7) GENERAL MANAGEMENT'
                  8='(8) MIDDLE MANAGEMENT' 9='(9) EMPLOYED AT DESK'
                  10='(10) EMPLOYED TRAVELLING' 11='(11) EMPLOYED SERVICE'
                  12='(12) SUPERVISOR' 13='(13) SKILLED MANUAL WORKER'
                  14='(14) OTHER MANUAL WORKER' 15='(15) NEVER DID ANY PAID WORK'
                  99='(99) <INAP, NOT 1-4 IN D21A; 16 IN V7>' ;
  VALUE V456ffff  0='(0) <NA>' 1='(1) NONE' 2='(2) 1 TO 4' 3='(3) 5 TO 9' 4='(4) 10 AND OVER'
                  5='(5) DK' 9='(9) <INAP, NOT 5-18 D21A, 1-14 D21B; 16 V7>' ;
  VALUE V457ffff  0='(0) <NA>' 1='(1) MIDDLE CLASS' 2='(2) LOWER MIDDLE CLASS'
                  3='(3) WORKING CLASS' 4='(4) UPPER CLASS' 5='(5) UPPER MIDDLE CLASS'
                  6='(6) REFUSES TO BE CLASSIFIED' 7='(7) OTHER' 8='(8) DK'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V458ffff  0='(0) <NA>' 1='(1) OWN HOUSE' 2='(2) OWN APARTMENT'
                  3='(3) RENT PRIV HOUSE' 4='(4) RENT PRIV APARTMENT'
                  5='(5) RENT CORPOR HOUSE' 6='(6) RENT CORPOR APARTMENT' 7='(7) OTHER'
                  8='(8) DK' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V459ffff  0='(0) <NA>' 1='(1) RURAL AREA OR VILLAGE'
                  2='(2) SMALL OR MIDDLE SIZE TOWN' 3='(3) LARGE TOWN' 4='(4) DK' ;
  VALUE V460ffff  0='(0) <NA>' 1='(1) ROMAN CATHOLIC' 2='(2) PROTESTANT' 3='(3) ORTHODOX'
                  4='(4) JEWISH' 5='(5) MUSLIM' 6='(6) BUDDHIST' 7='(7) HINDU' 8='(8) OTHER'
                  9='(9) NONE' 10='(10) DK' 99='(99) <INAP, CODED 16 IN V7>' ;
  VALUE V461ffff  0='(0) <NA>' 1='(1) SEVERAL TIMES A WEEK' 2='(2) ONCE A WEEK'
                  3='(3) A FEW TIMES A YEAR' 4='(4) ONCE A YEAR OR LESS' 5='(5) NEVER'
                  6='(6) DK' 9='(9) <INAP, NOT 1-4 IN D26; 16 IN V7>' ;
  VALUE V462ffff  0='(0) <NA>' 1='(1) RELIGIOUS' 2='(2) NOT RELIGIOUS' 3='(3) AN AGNOSTIC'
                  4='(4) AN ATHEIST' 5='(5) DK' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V463ffff  0='(0) <NA>' 97='(97) REFUSAL' 98='(98) DK' ;
  VALUE V464ffff  1='(1) + +' 2='(2) +' 3='(3) -' 4='(4) - -' 5='(5) DK/REFUSAL'
                  9='(9) <INAP, 15 & 16 IN V7>' ;
  VALUE V465ffff  0='(0) <NA>' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V466ffff  0='(0) <NA>' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V467ffff  98='(98) <NA>' 99='(99) <INAP, CODED 16 IN V7>' ;
  VALUE V468ffff  98='(98) <NA>' 99='(99) <INAP, CODED 16 IN V7>' ;
  VALUE V469ffff  0='(0) <NA>' 999='(999) <INAP, CODED 16 IN V7>' ;
  VALUE V470ffff  0='(0) <NA>' 1='(1) TWO, INTERVIEWER/RESPONDENT' 2='(2) THREE' 3='(3) FOUR'
                  4='(4) FIVE OR MORE' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V471ffff  0='(0) <NA>' 1='(1) EXCELLENT' 2='(2) FAIR' 3='(3) AVERAGE' 4='(4) BAD'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V472ffff  0='(0) <NA>' 99='(99) <INAP, CODED 16 IN V7>' ;
  VALUE V473ffff  99='(99) <INAP, CODED 10 IN V7>' ;
  VALUE V474ffff  99='(99) <INAP, 6-8, 11, 13, 16 IN V7>' ;
  VALUE V475ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V476ffff  0='(0) <NA>' 1='(1) NO, DK THIS OFFICE'
                  2='(2) YES, KNOW OFFC, SEND CHK' 3='(3) YES, KNOW OFFC, NO CHK'
                  4='(4) NSP' 9='(9) <INAP, NOT 2 IN V7>' ;
  VALUE V477ffff  0='(0) <NA>' 1='(1) AN ADVANTAGE' 2='(2) A DISADVANTAGE'
                  3='(3) DOESN''T MATTER' 4='(4) NOT NOTICED BEFORE TODAY' 5='(5) DK'
                  9='(9) <INAP, NOT 7 IN V7>' ;
  VALUE V478ffff  0='(0) <NA>' 1='(1) YES' 2='(2) NO' 3='(3) DK'
                  9='(9) <INAP, NOT 4 NOR 14 IN V7>' ;
  VALUE V479ffff  0='(0) <NA>' 1='(1) TOO MUCH' 2='(2) JUST RIGHT' 3='(3) NOT ENOUGH' 4='(4) DK'
                  9='(9) <INAP, NOT 4 NOR 14 IN V7>' ;
  VALUE V480ffff  0='(0) <NA>' 1='(1) A LOT AFFECTED LIFE/WORK'
                  2='(2) A LITTLE AFFECTED LIFE/WORK' 3='(3) NOT AFFECTED LIFE/WORK'
                  4='(4) DK' 9='(9) <INAP, NOT 11 IN V7>' ;
  VALUE V481ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 12 IN V7>' ;
  VALUE V482ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 12 IN V7>' ;
  VALUE V483ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 12 IN V7>' ;
  VALUE V484ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 12 IN V7>' ;
  VALUE V485ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 12 IN V7>' ;
  VALUE V486ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 12 IN V7>' ;
  VALUE V487ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 12 IN V7>' ;
  VALUE V488ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 12 IN V7>' ;
  VALUE V489ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 12 IN V7>' ;
  VALUE V490ffff  0='(0) NOT MENTIONED' 1='(1) MENTIONED' 8='(8) <NA>'
                  9='(9) <INAP, NOT 12 IN V7>' ;
  VALUE V491ffff  0='(0) <NA>' 1='(1) MORE PROTECTION' 2='(2) LESS PROTECTION' 3='(3) DK'
                  9='(9) <INAP, NOT 1 IN V7>' ;
  VALUE V492ffff  0='(0) <NA>' 1='(1) MORE PROTECTION' 2='(2) LESS PROTECTION' 3='(3) DK'
                  9='(9) <INAP, NOT 1 IN V7>' ;
  VALUE V493ffff  0='(0) <NA>' 1='(1) MORE PROTECTION' 2='(2) LESS PROTECTION' 3='(3) DK'
                  9='(9) <INAP, NOT 1 IN V7>' ;
  VALUE V494ffff  0='(0) <NA>' 1='(1) IN FAVOUR' 2='(2) OPPOSED' 3='(3) DK'
                  9='(9) <INAP, NOT 8 IN V7>' ;
  VALUE V495ffff  0='(0) <NA>' 1='(1) PARTICIPATE W/OUT PROBLEMS'
                  2='(2) PARTICIPATE WITH DELAY' 3='(3) NOT ABLE TO PARTCICIPATE'
                  4='(4) DK' 9='(9) <INAP, NOT 5 IN V7>' ;
  VALUE V496ffff  0='(0) <NA>' 1='(1) GOOD THING' 2='(2) BAD THING' 3='(3) NO EFFECT' 4='(4) NSP'
                  9='(9) <INAP, NOT 13 IN V7>' ;
  VALUE V497ffff  0='(0) <NA>' 1='(1) GOOD' 2='(2) BAD' 3='(3) GOOD AND BAD' 4='(4) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V498ffff  0='(0) <NA>' 1='(1) INDEPENDENT/DURABLE SOLUTION'
                  2='(2) STEP ON ROAD TO MEMBERSHIP' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V499ffff  0='(0) <NA>' 1='(1) VERY IMPORTANT' 2='(2) FAIRLY IMPORTANT'
                  3='(3) NOT IMPORTANT' 4='(4) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V500ffff  0='(0) <NA>' 1='(1) FOR' 2='(2) AGAINST' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V501ffff  0='(0) <NA>' 1='(1) WOULD DEF VOTE FOR' 2='(2) WOULD PROB VOTE FOR'
                  3='(3) WOULD PROB VOTE AGAINST' 4='(4) WOULD DEF VOTE AGAINST'
                  5='(5) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V502ffff  0='(0) <NA>' 1='(1) DECISIVE' 2='(2) SOME' 3='(3) NONE AT ALL' 4='(4) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V503ffff  0='(0) <NA>' 1='(1) YES, VERY MUCH IMPORTANCE'
                  2='(2) YES, MUCH IMPORTANCE' 3='(3) YES, A LITTLE IMPORTANCE'
                  4='(4) YES, VERY LITTLE IMPORTANCE' 5='(5) NO, DON''T THINK SO'
                  6='(6) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V504ffff  0='(0) <NA>' 1='(1) GREAT IMPORTANCE' 2='(2) SOME IMPORTANCE'
                  3='(3) LITTLE IMPORTANCE' 4='(4) NO IMPORTANCE' 5='(5) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V505ffff  0='(0) <NA>' 1='(1) NOR REF FIRST' 2='(2) NOR REF BEFORE SWEDEN'
                  3='(3) NOR REF SAME TIME AS SWEDEN' 4='(4) NOR REF AFTER SWEDEN'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V506ffff  0='(0) <NA>' 1='(1) NOR REF FIRST' 2='(2) NOR REF BEFORE SWEDEN'
                  3='(3) NOR REF SAME TIME AS SWEDEN' 4='(4) NOR REF AFTER SWEDEN'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V507ffff  0='(0) <NA>' 1='(1) WOULD DEFENITELY VOTE FOR'
                  2='(2) WOULD PROBABLY VOTE FOR' 3='(3) WOULD PROBABLY VOTE AGAINST'
                  4='(4) WOULD DEFENITELY VOTE AGAINST' 5='(5) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V508ffff  0='(0) <NA>' 1='(1) VERY POSITIVELY' 2='(2) FAIRLY POSITIVELY'
                  3='(3) FAIRLY NEGATIVELY' 4='(4) VERY NEGATIVELY'
                  5='(5) WILL NOT HAVE ANY INFLUENCE' 6='(6) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V509ffff  0='(0) <NA>' 1='(1) MORE POSITIVE TOWARDS MEMBERSHIP'
                  2='(2) MORE NEGATIVE TOWARDS MEMBERSHIP' 3='(3) MORE INSECURE'
                  4='(4) OR NOT CHANGED OPNION' 5='(5) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V510ffff  0='(0) <NA>' 1='(1) GREAT CONFIDENCE' 2='(2) MUCH CONFIDENCE'
                  3='(3) A LITTLE CONFIDENCE' 4='(4) VERY LITTLE CONFIDENCE'
                  5='(5) NO CONFIDENCE AT ALL' 6='(6) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V511ffff  0='(0) <NA>' 1='(1) GREAT CONFIDENCE' 2='(2) MUCH CONFIDENCE'
                  3='(3) A LITTLE CONFIDENCE' 4='(4) VERY LITTLE CONFIDENCE'
                  5='(5) NO CONFIDENCE AT ALL' 6='(6) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V512ffff  0='(0) <NA>' 1='(1) GREAT CONFIDENCE' 2='(2) MUCH CONFIDENCE'
                  3='(3) A LITTLE CONFIDENCE' 4='(4) VERY LITTLE CONFIDENCE'
                  5='(5) NO CONFIDENCE AT ALL' 6='(6) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V513ffff  0='(0) <NA>' 1='(1) GREAT CONFIDENCE' 2='(2) MUCH CONFIDENCE'
                  3='(3) A LITTLE CONFIDENCE' 4='(4) VERY LITTLE CONFIDENCE'
                  5='(5) NO CONFIDENCE AT ALL' 6='(6) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V514ffff  0='(0) <NA>' 1='(1) GREAT CONFIDENCE' 2='(2) MUCH CONFIDENCE'
                  3='(3) A LITTLE CONFIDENCE' 4='(4) VERY LITTLE CONFIDENCE'
                  5='(5) NO CONFIDENCE AT ALL' 6='(6) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V515ffff  0='(0) <NA>' 1='(1) GREAT CONFIDENCE' 2='(2) MUCH CONFIDENCE'
                  3='(3) A LITTLE CONFIDENCE' 4='(4) VERY LITTLE CONFIDENCE'
                  5='(5) NO CONFIDENCE AT ALL' 6='(6) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V516ffff  0='(0) <NA>' 1='(1) GREAT CONFIDENCE' 2='(2) MUCH CONFIDENCE'
                  3='(3) A LITTLE CONFIDENCE' 4='(4) VERY LITTLE CONFIDENCE'
                  5='(5) NO CONFIDENCE AT ALL' 6='(6) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V517ffff  0='(0) <NA>' 1='(1) GREAT CONFIDENCE' 2='(2) MUCH CONFIDENCE'
                  3='(3) A LITTLE CONFIDENCE' 4='(4) VERY LITTLE CONFIDENCE'
                  5='(5) NO CONFIDENCE AT ALL' 6='(6) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V518ffff  0='(0) <NA>' 1='(1) ADVANTAGE' 2='(2) DISADVANTAGE' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V519ffff  0='(0) <NA>' 1='(1) ADVANTAGE' 2='(2) DISADVANTAGE' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V520ffff  0='(0) <NA>' 1='(1) ADVANTAGE' 2='(2) DISADVANTAGE' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V521ffff  0='(0) <NA>' 1='(1) ADVANTAGE' 2='(2) DISADVANTAGE' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V522ffff  0='(0) <NA>' 1='(1) ADVANTAGE' 2='(2) DISADVANTAGE' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V523ffff  0='(0) <NA>' 1='(1) ADVANTAGE' 2='(2) DISADVANTAGE' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V524ffff  0='(0) <NA>' 1='(1) ADVANTAGE' 2='(2) DISADVANTAGE' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V525ffff  0='(0) <NA>' 1='(1) ADVANTAGE' 2='(2) DISADVANTAGE' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V526ffff  0='(0) <NA>' 1='(1) ADVANTAGE' 2='(2) DISADVANTAGE' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V527ffff  0='(0) <NA>' 1='(1) DID NOT VOTE IN 1972' 2='(2) VOTED FOR'
                  3='(3) VOTED AGAINST' 4='(4) DON''T REMEMBER' 5='(5) NO ANSWER'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V528ffff  0='(0) <NA>' 1='(1) DO BELEIVE' 2='(2) DO NOT BELIEVE' 3='(3) DK'
                  9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V529ffff  0='(0) <NA>' 1='(1) VERY INTERESTED' 2='(2) FAIRLY INTERESTED'
                  3='(3) A LITTLE INTERESTED' 4='(4) NOT MUCH INTERESTED'
                  5='(5) NOT INTERESTED AT ALL' 6='(6) DK' 9='(9) <INAP, NOT 15 IN V7>' ;
  VALUE V530ffff  0='(0) <NA>' 1='(1) + + HIGH' 2='(2) +' 3='(3) -' 4='(4) - - LOW'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V531ffff  0='(0) <NA>' 1='(1) FARMER & FISHER' 2='(2) PROFESSIONALS'
                  3='(3) SHOPOWNER, CRAFTSMEN' 4='(4) BUSINESS PROPRIETORS'
                  5='(5) EMPLOYED PROFESSIONAL' 6='(6) GENERAL MANAGEMENT'
                  7='(7) MIDDLE MANAGEMENT' 8='(8) EMPLOYED AT A DESK'
                  9='(9) EMPLOYED TRAVELLING' 10='(10) EMPLOYED SERVICE'
                  11='(11) SUPERVISORS' 12='(12) SKILLED MANUAL WORKERS'
                  13='(13) OTHER MANUAL WORKER' 99='(99) <INAP, CODED 16 IN V7>' ;
  VALUE V532ffff  0='(0) <NA>' 1='(1) +++' 2='(2) ++' 3='(3) --' 4='(4) ---'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V533ffff  0='(0) <NA>' 1='(1) A' 2='(2) B' 3='(3) C' 4='(4) D' 5='(5) E1' 6='(6) E2' 7='(7) E3'
                  9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V534ffff  0='(0) <NA>' 1='(1) SELF-EMPLOYED' 2='(2) MANAGERS'
                  3='(3) OTHER WHITE COLLARS' 4='(4) MANUAL WORKERS' 5='(5) HOUSE PERSON'
                  6='(6) UNEMPLOYED' 9='(9) <INAP, CODED 16 IN V7>' ;
  VALUE V535ffff  0='(0) NON NAT+OVERSAMPLE' 1='(1) NATIONALS ONLY' ;
  VALUE V536ffff  0='(0) OVERSAMPLE' 1='(1) NATIONALS+NON NAT'
                  9='(9) <INAP, 15 & 16 IN V7>' ;
  VALUE V537ffff  0='(0) V451 NOT CODED 1' 1='(1) ALL V451 CODED 1'
                  9='(9) <INAP, 15 & 16 IN V7>' ;
  VALUE V538ffff  0='(0) NON NATIONALS' 1='(1) NATIONALS' ;
  VALUE V540ffff  1='(1) VERS A: EUR COMMUNITY'
                  2='(2) VERS B: EUR UNION (EUR COMMTY)'
                  9='(9) INAP, NOT PART OF SPLIT BALLOT' ;
RUN;

* SAS DATA STEP;
DATA;
SET SAS-dataset ;


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (V34 = 0 OR V34 = 9) THEN V34 = .;
   IF (V35 = 0) THEN V35 = .;
   IF (V35 >= 13) THEN V35 = .;
   IF (V36 = 0 OR V36 = 5 OR V36 = 9) THEN V36 = .;
   IF (V37 = 0 OR V37 = 5) THEN V37 = .;
   IF (V38 = 0 OR V38 = 4 OR V38 = 9) THEN V38 = .;
   IF (V39 = 0 OR V39 = 5 OR V39 = 9) THEN V39 = .;
   IF (V40 = 0 OR V40 = 3 OR V40 = 9) THEN V40 = .;
   IF (V41 = 0 OR V41 = 3 OR V41 = 9) THEN V41 = .;
   IF (V42 = 0 OR V42 = 9) THEN V42 = .;
   IF (V43 = 0 OR V43 = 9) THEN V43 = .;
   IF (V44 = 0 OR V44 = 9) THEN V44 = .;
   IF (V45 = 0 OR V45 = 9) THEN V45 = .;
   IF (V46 = 0 OR V46 = 9) THEN V46 = .;
   IF (V47 = 0 OR V47 = 3 OR V47 = 9) THEN V47 = .;
   IF (V48 = 0 OR V48 = 3 OR V48 = 9) THEN V48 = .;
   IF (V49 = 0 OR V49 = 9) THEN V49 = .;
   IF (V50 = 0 OR V50 = 9) THEN V50 = .;
   IF (V51 = 0 OR V51 = 9) THEN V51 = .;
   IF (V52 = 0 OR V52 = 9) THEN V52 = .;
   IF (V53 = 0 OR V53 = 9) THEN V53 = .;
   IF (V54 = 0) THEN V54 = .;
   IF (V54 >= 7) THEN V54 = .;
   IF (V55 = 0) THEN V55 = .;
   IF (V55 >= 7) THEN V55 = .;
   IF (V56 = 0 OR V56 = 6 OR V56 = 9) THEN V56 = .;
   IF (V57 = 0 OR V57 = 6 OR V57 = 9) THEN V57 = .;
   IF (V58 = 0 OR V58 = 6 OR V58 = 9) THEN V58 = .;
   IF (V59 = 0 OR V59 = 5) THEN V59 = .;
   IF (V60 = 0 OR V60 = 5) THEN V60 = .;
   IF (V61 = 0 OR V61 = 4) THEN V61 = .;
   IF (V62 = 0 OR V62 = 3) THEN V62 = .;
   IF (V63 = 0 OR V63 = 8 OR V63 = 9) THEN V63 = .;
   IF (V64 = 0 OR V64 = 8 OR V64 = 9) THEN V64 = .;
   IF (V65 = 0 OR V65 = 3 OR V65 = 9) THEN V65 = .;
   IF (V66 = 0 OR V66 = 3) THEN V66 = .;
   IF (V67 = 0 OR V67 = 3) THEN V67 = .;
   IF (V68 = 0 OR V68 = 3) THEN V68 = .;
   IF (V69 = 0 OR V69 = 3) THEN V69 = .;
   IF (V70 = 0 OR V70 = 3) THEN V70 = .;
   IF (V71 = 0 OR V71 = 3) THEN V71 = .;
   IF (V72 = 0 OR V72 = 3) THEN V72 = .;
   IF (V73 = 0 OR V73 = 3) THEN V73 = .;
   IF (V74 = 0 OR V74 = 3) THEN V74 = .;
   IF (V75 = 0 OR V75 = 3) THEN V75 = .;
   IF (V76 = 0 OR V76 = 3) THEN V76 = .;
   IF (V77 = 0 OR V77 = 3) THEN V77 = .;
   IF (V78 = 0 OR V78 = 3) THEN V78 = .;
   IF (V79 = 0 OR V79 = 3) THEN V79 = .;
   IF (V80 = 0 OR V80 = 3) THEN V80 = .;
   IF (V81 = 0 OR V81 = 3) THEN V81 = .;
   IF (V82 = 0 OR V82 = 3) THEN V82 = .;
   IF (V83 = 0 OR V83 = 3) THEN V83 = .;
   IF (V84 = 0 OR V84 = 5) THEN V84 = .;
   IF (V85 = 0 OR V85 = 3 OR V85 = 9) THEN V85 = .;
   IF (V86 = 0 OR V86 = 5 OR V86 = 9) THEN V86 = .;
   IF (V87 = 0 OR V87 = 3) THEN V87 = .;
   IF (V88 = 0 OR V88 = 3) THEN V88 = .;
   IF (V89 = 0 OR V89 = 3) THEN V89 = .;
   IF (V90 = 0 OR V90 = 3) THEN V90 = .;
   IF (V91 = 0 OR V91 = 3) THEN V91 = .;
   IF (V92 = 0 OR V92 = 3) THEN V92 = .;
   IF (V93 = 0 OR V93 = 3) THEN V93 = .;
   IF (V94 = 0 OR V94 = 3) THEN V94 = .;
   IF (V95 = 0 OR V95 = 3) THEN V95 = .;
   IF (V96 = 0 OR V96 = 3) THEN V96 = .;
   IF (V97 = 0 OR V97 = 3) THEN V97 = .;
   IF (V98 = 0 OR V98 = 3) THEN V98 = .;
   IF (V99 = 0 OR V99 = 5 OR V99 = 9) THEN V99 = .;
   IF (V100 = 0 OR V100 = 3 OR V100 = 9) THEN V100 = .;
   IF (V101 = 0 OR V101 = 3 OR V101 = 9) THEN V101 = .;
   IF (V102 = 0 OR V102 = 3) THEN V102 = .;
   IF (V103 = 0 OR V103 = 9) THEN V103 = .;
   IF (V104 = 0 OR V104 = 6 OR V104 = 9) THEN V104 = .;
   IF (V105 = 0 OR V105 = 10 OR V105 = 99) THEN V105 = .;
   IF (V106 = 0 OR V106 = 5 OR V106 = 9) THEN V106 = .;
   IF (V107 = 0 OR V107 = 5 OR V107 = 9) THEN V107 = .;
   IF (V108 = 0) THEN V108 = .;
   IF (V108 >= 90) THEN V108 = .;
   IF (V109 = 0 OR V109 = 3 OR V109 = 9) THEN V109 = .;
   IF (V110 = 0 OR V110 = 14 OR V110 = 99) THEN V110 = .;
   IF (V111 = 0 OR V111 = 3) THEN V111 = .;
   IF (V112 = 0 OR V112 = 3 OR V112 = 9) THEN V112 = .;
   IF (V113 = 8 OR V113 = 9) THEN V113 = .;
   IF (V114 = 8 OR V114 = 9) THEN V114 = .;
   IF (V115 = 8 OR V115 = 9) THEN V115 = .;
   IF (V116 = 8 OR V116 = 9) THEN V116 = .;
   IF (V117 = 8 OR V117 = 9) THEN V117 = .;
   IF (V118 = 8 OR V118 = 9) THEN V118 = .;
   IF (V119 = 8 OR V119 = 9) THEN V119 = .;
   IF (V120 = 8 OR V120 = 9) THEN V120 = .;
   IF (V121 = 8 OR V121 = 9) THEN V121 = .;
   IF (V122 = 8 OR V122 = 9) THEN V122 = .;
   IF (V123 = 8 OR V123 = 9) THEN V123 = .;
   IF (V124 = 8 OR V124 = 9) THEN V124 = .;
   IF (V125 = 8 OR V125 = 9) THEN V125 = .;
   IF (V126 = 8 OR V126 = 9) THEN V126 = .;
   IF (V127 = 8 OR V127 = 9) THEN V127 = .;
   IF (V128 = 8 OR V128 = 9) THEN V128 = .;
   IF (V129 = 8 OR V129 = 9) THEN V129 = .;
   IF (V130 = 8 OR V130 = 9) THEN V130 = .;
   IF (V131 = 8 OR V131 = 9) THEN V131 = .;
   IF (V132 = 8 OR V132 = 9) THEN V132 = .;
   IF (V133 = 8 OR V133 = 9) THEN V133 = .;
   IF (V134 = 8 OR V134 = 9) THEN V134 = .;
   IF (V135 = 8 OR V135 = 9) THEN V135 = .;
   IF (V136 = 8 OR V136 = 9) THEN V136 = .;
   IF (V137 = 8 OR V137 = 9) THEN V137 = .;
   IF (V138 = 0 OR V138 = 4 OR V138 = 9) THEN V138 = .;
   IF (V139 = 0 OR V139 = 9) THEN V139 = .;
   IF (V140 = 0 OR V140 = 3 OR V140 = 9) THEN V140 = .;
   IF (V141 = 0 OR V141 = 3 OR V141 = 9) THEN V141 = .;
   IF (V142 = 0 OR V142 = 3 OR V142 = 9) THEN V142 = .;
   IF (V143 = 0 OR V143 = 3) THEN V143 = .;
   IF (V144 = 0 OR V144 = 3) THEN V144 = .;
   IF (V145 = 0 OR V145 = 3) THEN V145 = .;
   IF (V146 = 0 OR V146 = 3) THEN V146 = .;
   IF (V147 = 8) THEN V147 = .;
   IF (V148 = 8) THEN V148 = .;
   IF (V149 = 8) THEN V149 = .;
   IF (V150 = 8) THEN V150 = .;
   IF (V151 = 8) THEN V151 = .;
   IF (V152 = 8) THEN V152 = .;
   IF (V153 = 8) THEN V153 = .;
   IF (V154 = 8) THEN V154 = .;
   IF (V155 = 8 OR V155 = 9) THEN V155 = .;
   IF (V156 = 8 OR V156 = 9) THEN V156 = .;
   IF (V157 = 8 OR V157 = 9) THEN V157 = .;
   IF (V158 = 8 OR V158 = 9) THEN V158 = .;
   IF (V159 = 8 OR V159 = 9) THEN V159 = .;
   IF (V160 = 8 OR V160 = 9) THEN V160 = .;
   IF (V161 = 8 OR V161 = 9) THEN V161 = .;
   IF (V162 = 8 OR V162 = 9) THEN V162 = .;
   IF (V163 = 0 OR V163 = 5 OR V163 = 9) THEN V163 = .;
   IF (V164 = 0 OR V164 = 3 OR V164 = 9) THEN V164 = .;
   IF (V165 = 0 OR V165 = 3 OR V165 = 9) THEN V165 = .;
   IF (V166 = 0 OR V166 = 3 OR V166 = 9) THEN V166 = .;
   IF (V167 = 0 OR V167 = 3 OR V167 = 9) THEN V167 = .;
   IF (V168 = 8 OR V168 = 9) THEN V168 = .;
   IF (V169 = 8 OR V169 = 9) THEN V169 = .;
   IF (V170 = 8 OR V170 = 9) THEN V170 = .;
   IF (V171 = 8 OR V171 = 9) THEN V171 = .;
   IF (V172 = 8 OR V172 = 9) THEN V172 = .;
   IF (V173 = 0 OR V173 = 3) THEN V173 = .;
   IF (V174 = 0 OR V174 = 3) THEN V174 = .;
   IF (V175 = 0 OR V175 = 3) THEN V175 = .;
   IF (V176 = 0 OR V176 = 3) THEN V176 = .;
   IF (V177 = 0 OR V177 = 3) THEN V177 = .;
   IF (V178 = 0 OR V178 = 3) THEN V178 = .;
   IF (V179 = 0 OR V179 = 3 OR V179 = 9) THEN V179 = .;
   IF (V180 = 0 OR V180 = 3 OR V180 = 9) THEN V180 = .;
   IF (V181 = 0 OR V181 = 5) THEN V181 = .;
   IF (V182 = 0 OR V182 = 3 OR V182 = 9) THEN V182 = .;
   IF (V183 = 0 OR V183 = 3 OR V183 = 9) THEN V183 = .;
   IF (V184 = 0 OR V184 = 10) THEN V184 = .;
   IF (V185 = 8) THEN V185 = .;
   IF (V186 = 8) THEN V186 = .;
   IF (V187 = 8) THEN V187 = .;
   IF (V188 = 8) THEN V188 = .;
   IF (V189 = 8) THEN V189 = .;
   IF (V190 = 8) THEN V190 = .;
   IF (V191 = 8) THEN V191 = .;
   IF (V192 = 8) THEN V192 = .;
   IF (V193 = 8) THEN V193 = .;
   IF (V194 = 8) THEN V194 = .;
   IF (V195 = 0 OR V195 = 3) THEN V195 = .;
   IF (V196 = 0 OR V196 = 3) THEN V196 = .;
   IF (V197 = 0 OR V197 = 3) THEN V197 = .;
   IF (V198 = 0 OR V198 = 3) THEN V198 = .;
   IF (V199 = 0 OR V199 = 3) THEN V199 = .;
   IF (V200 = 0 OR V200 = 3 OR V200 = 9) THEN V200 = .;
   IF (V201 = 0 OR V201 = 3 OR V201 = 9) THEN V201 = .;
   IF (V202 = 0 OR V202 = 3 OR V202 = 9) THEN V202 = .;
   IF (V203 = 0 OR V203 = 3 OR V203 = 9) THEN V203 = .;
   IF (V204 = 0 OR V204 = 3 OR V204 = 9) THEN V204 = .;
   IF (V205 = 0 OR V205 = 3 OR V205 = 9) THEN V205 = .;
   IF (V206 = 0 OR V206 = 3 OR V206 = 9) THEN V206 = .;
   IF (V207 = 0 OR V207 = 3 OR V207 = 9) THEN V207 = .;
   IF (V208 = 0 OR V208 = 990 OR V208 = 998) THEN V208 = .;
   IF (V209 = 0) THEN V209 = .;
   IF (V210 = 8 OR V210 = 9) THEN V210 = .;
   IF (V211 = 8 OR V211 = 9) THEN V211 = .;
   IF (V212 = 8 OR V212 = 9) THEN V212 = .;
   IF (V213 = 8 OR V213 = 9) THEN V213 = .;
   IF (V214 = 8 OR V214 = 9) THEN V214 = .;
   IF (V215 = 8 OR V215 = 9) THEN V215 = .;
   IF (V216 = 8 OR V216 = 9) THEN V216 = .;
   IF (V217 = 8 OR V217 = 9) THEN V217 = .;
   IF (V218 = 8 OR V218 = 9) THEN V218 = .;
   IF (V219 = 8 OR V219 = 9) THEN V219 = .;
   IF (V220 = 8 OR V220 = 9) THEN V220 = .;
   IF (V221 = 8 OR V221 = 9) THEN V221 = .;
   IF (V222 = 8 OR V222 = 9) THEN V222 = .;
   IF (V223 = 8 OR V223 = 9) THEN V223 = .;
   IF (V224 = 8 OR V224 = 9) THEN V224 = .;
   IF (V225 = 8 OR V225 = 9) THEN V225 = .;
   IF (V226 = 8 OR V226 = 9) THEN V226 = .;
   IF (V227 = 8 OR V227 = 9) THEN V227 = .;
   IF (V228 = 8 OR V228 = 9) THEN V228 = .;
   IF (V229 = 8 OR V229 = 9) THEN V229 = .;
   IF (V230 = 8 OR V230 = 9) THEN V230 = .;
   IF (V231 = 8 OR V231 = 9) THEN V231 = .;
   IF (V232 = 8 OR V232 = 9) THEN V232 = .;
   IF (V233 = 8 OR V233 = 9) THEN V233 = .;
   IF (V234 = 8 OR V234 = 9) THEN V234 = .;
   IF (V235 = 8 OR V235 = 9) THEN V235 = .;
   IF (V236 = 8 OR V236 = 9) THEN V236 = .;
   IF (V237 = 8 OR V237 = 9) THEN V237 = .;
   IF (V238 = 8 OR V238 = 9) THEN V238 = .;
   IF (V239 = 8 OR V239 = 9) THEN V239 = .;
   IF (V240 = 8 OR V240 = 9) THEN V240 = .;
   IF (V241 = 8 OR V241 = 9) THEN V241 = .;
   IF (V242 = 8 OR V242 = 9) THEN V242 = .;
   IF (V243 = 8 OR V243 = 9) THEN V243 = .;
   IF (V244 = 8 OR V244 = 9) THEN V244 = .;
   IF (V245 = 8 OR V245 = 9) THEN V245 = .;
   IF (V246 = 8) THEN V246 = .;
   IF (V247 = 8) THEN V247 = .;
   IF (V248 = 8) THEN V248 = .;
   IF (V249 = 8) THEN V249 = .;
   IF (V250 = 8) THEN V250 = .;
   IF (V251 = 8) THEN V251 = .;
   IF (V252 = 0 OR V252 = 11 OR V252 = 99) THEN V252 = .;
   IF (V253 = 0 OR V253 = 4) THEN V253 = .;
   IF (V254 = 0 OR V254 = 4) THEN V254 = .;
   IF (V255 = 0 OR V255 = 4) THEN V255 = .;
   IF (V256 = 0 OR V256 = 4) THEN V256 = .;
   IF (V257 = 0 OR V257 = 4) THEN V257 = .;
   IF (V258 = 0 OR V258 = 4) THEN V258 = .;
   IF (V259 = 4 OR V259 = 8 OR V259 = 9) THEN V259 = .;
   IF (V260 = 0 OR V260 = 4 OR V260 = 9) THEN V260 = .;
   IF (V261 = 0 OR V261 = 4 OR V261 = 9) THEN V261 = .;
   IF (V262 = 0 OR V262 = 4 OR V262 = 9) THEN V262 = .;
   IF (V263 = 0 OR V263 = 4 OR V263 = 9) THEN V263 = .;
   IF (V264 = 0 OR V264 = 4 OR V264 = 9) THEN V264 = .;
   IF (V265 = 0 OR V265 = 4 OR V265 = 9) THEN V265 = .;
   IF (V266 = 0 OR V266 = 3) THEN V266 = .;
   IF (V267 = 0 OR V267 = 3) THEN V267 = .;
   IF (V268 = 0 OR V268 = 3) THEN V268 = .;
   IF (V269 = 0 OR V269 = 3) THEN V269 = .;
   IF (V270 = 0 OR V270 = 3) THEN V270 = .;
   IF (V271 = 0 OR V271 = 3) THEN V271 = .;
   IF (V272 = 0 OR V272 = 3) THEN V272 = .;
   IF (V273 = 0 OR V273 = 3 OR V273 = 9) THEN V273 = .;
   IF (V274 = 8 OR V274 = 9) THEN V274 = .;
   IF (V275 = 8 OR V275 = 9) THEN V275 = .;
   IF (V276 = 8 OR V276 = 9) THEN V276 = .;
   IF (V277 = 8 OR V277 = 9) THEN V277 = .;
   IF (V278 = 8 OR V278 = 9) THEN V278 = .;
   IF (V279 = 8 OR V279 = 9) THEN V279 = .;
   IF (V280 = 8 OR V280 = 9) THEN V280 = .;
   IF (V281 = 8 OR V281 = 9) THEN V281 = .;
   IF (V282 = 8 OR V282 = 9) THEN V282 = .;
   IF (V283 = 8 OR V283 = 9) THEN V283 = .;
   IF (V284 = 8 OR V284 = 9) THEN V284 = .;
   IF (V285 = 0 OR V285 = 3 OR V285 = 9) THEN V285 = .;
   IF (V286 = 0 OR V286 = 3 OR V286 = 9) THEN V286 = .;
   IF (V287 = 0 OR V287 = 3 OR V287 = 9) THEN V287 = .;
   IF (V288 = 0 OR V288 = 3 OR V288 = 9) THEN V288 = .;
   IF (V289 = 0 OR V289 = 3 OR V289 = 9) THEN V289 = .;
   IF (V290 = 0 OR V290 = 3 OR V290 = 9) THEN V290 = .;
   IF (V291 = 0 OR V291 = 3 OR V291 = 9) THEN V291 = .;
   IF (V292 = 0 OR V292 = 3 OR V292 = 9) THEN V292 = .;
   IF (V293 = 0 OR V293 = 3 OR V293 = 9) THEN V293 = .;
   IF (V294 = 0 OR V294 = 3 OR V294 = 9) THEN V294 = .;
   IF (V295 = 0 OR V295 = 11 OR V295 = 99) THEN V295 = .;
   IF (V296 = 0 OR V296 = 3 OR V296 = 9) THEN V296 = .;
   IF (V297 = 0 OR V297 = 4 OR V297 = 9) THEN V297 = .;
   IF (V298 = 0 OR V298 = 4 OR V298 = 9) THEN V298 = .;
   IF (V299 = 0 OR V299 = 3 OR V299 = 9) THEN V299 = .;
   IF (V300 = 0 OR V300 = 11 OR V300 = 99) THEN V300 = .;
   IF (V301 = 0 OR V301 = 3 OR V301 = 9) THEN V301 = .;
   IF (V302 = 0 OR V302 = 4 OR V302 = 9) THEN V302 = .;
   IF (V303 = 0 OR V303 = 4 OR V303 = 9) THEN V303 = .;
   IF (V304 = 8 OR V304 = 9) THEN V304 = .;
   IF (V305 = 8 OR V305 = 9) THEN V305 = .;
   IF (V306 = 8 OR V306 = 9) THEN V306 = .;
   IF (V307 = 8 OR V307 = 9) THEN V307 = .;
   IF (V308 = 8 OR V308 = 9) THEN V308 = .;
   IF (V309 = 8 OR V309 = 9) THEN V309 = .;
   IF (V310 = 8 OR V310 = 9) THEN V310 = .;
   IF (V311 = 8 OR V311 = 9) THEN V311 = .;
   IF (V312 = 8 OR V312 = 9) THEN V312 = .;
   IF (V313 = 8 OR V313 = 9) THEN V313 = .;
   IF (V314 = 8 OR V314 = 9) THEN V314 = .;
   IF (V315 = 8 OR V315 = 9) THEN V315 = .;
   IF (V316 = 8 OR V316 = 9) THEN V316 = .;
   IF (V317 = 8 OR V317 = 9) THEN V317 = .;
   IF (V318 = 0 OR V318 = 3 OR V318 = 9) THEN V318 = .;
   IF (V319 = 8 OR V319 = 9) THEN V319 = .;
   IF (V320 = 8 OR V320 = 9) THEN V320 = .;
   IF (V321 = 8 OR V321 = 9) THEN V321 = .;
   IF (V322 = 8 OR V322 = 9) THEN V322 = .;
   IF (V323 = 8 OR V323 = 9) THEN V323 = .;
   IF (V324 = 8 OR V324 = 9) THEN V324 = .;
   IF (V325 = 8 OR V325 = 9) THEN V325 = .;
   IF (V326 = 8 OR V326 = 9) THEN V326 = .;
   IF (V327 = 8 OR V327 = 9) THEN V327 = .;
   IF (V328 = 8 OR V328 = 9) THEN V328 = .;
   IF (V329 = 8 OR V329 = 9) THEN V329 = .;
   IF (V330 = 8 OR V330 = 9) THEN V330 = .;
   IF (V331 = 8 OR V331 = 9) THEN V331 = .;
   IF (V332 = 8 OR V332 = 9) THEN V332 = .;
   IF (V333 = 0 OR V333 = 3 OR V333 = 9) THEN V333 = .;
   IF (V334 = 8 OR V334 = 9) THEN V334 = .;
   IF (V335 = 8 OR V335 = 9) THEN V335 = .;
   IF (V336 = 8 OR V336 = 9) THEN V336 = .;
   IF (V337 = 8 OR V337 = 9) THEN V337 = .;
   IF (V338 = 8 OR V338 = 9) THEN V338 = .;
   IF (V339 = 8 OR V339 = 9) THEN V339 = .;
   IF (V340 = 8 OR V340 = 9) THEN V340 = .;
   IF (V341 = 8 OR V341 = 9) THEN V341 = .;
   IF (V342 = 8 OR V342 = 9) THEN V342 = .;
   IF (V343 = 8 OR V343 = 9) THEN V343 = .;
   IF (V344 = 8 OR V344 = 9) THEN V344 = .;
   IF (V345 = 8 OR V345 = 9) THEN V345 = .;
   IF (V346 = 8 OR V346 = 9) THEN V346 = .;
   IF (V347 = 8 OR V347 = 9) THEN V347 = .;
   IF (V348 = 8 OR V348 = 9) THEN V348 = .;
   IF (V349 = 8 OR V349 = 9) THEN V349 = .;
   IF (V350 = 8 OR V350 = 9) THEN V350 = .;
   IF (V351 = 8 OR V351 = 9) THEN V351 = .;
   IF (V352 = 8 OR V352 = 9) THEN V352 = .;
   IF (V353 = 8 OR V353 = 9) THEN V353 = .;
   IF (V354 = 8 OR V354 = 9) THEN V354 = .;
   IF (V355 = 8 OR V355 = 9) THEN V355 = .;
   IF (V356 = 8 OR V356 = 9) THEN V356 = .;
   IF (V357 = 8 OR V357 = 9) THEN V357 = .;
   IF (V358 = 8 OR V358 = 9) THEN V358 = .;
   IF (V359 = 0 OR V359 = 4 OR V359 = 9) THEN V359 = .;
   IF (V360 = 0 OR V360 = 5 OR V360 = 9) THEN V360 = .;
   IF (V361 = 8 OR V361 = 9) THEN V361 = .;
   IF (V362 = 8 OR V362 = 9) THEN V362 = .;
   IF (V363 = 8 OR V363 = 9) THEN V363 = .;
   IF (V364 = 8 OR V364 = 9) THEN V364 = .;
   IF (V365 = 8 OR V365 = 9) THEN V365 = .;
   IF (V366 = 8 OR V366 = 9) THEN V366 = .;
   IF (V367 = 8 OR V367 = 9) THEN V367 = .;
   IF (V368 = 8 OR V368 = 9) THEN V368 = .;
   IF (V369 = 8 OR V369 = 9) THEN V369 = .;
   IF (V370 = 8 OR V370 = 9) THEN V370 = .;
   IF (V371 = 8 OR V371 = 9) THEN V371 = .;
   IF (V372 = 8 OR V372 = 9) THEN V372 = .;
   IF (V373 = 8 OR V373 = 9) THEN V373 = .;
   IF (V374 = 8 OR V374 = 9) THEN V374 = .;
   IF (V375 = 8 OR V375 = 9) THEN V375 = .;
   IF (V376 = 8 OR V376 = 9) THEN V376 = .;
   IF (V377 = 0 OR V377 = 3 OR V377 = 9) THEN V377 = .;
   IF (V378 = 0 OR V378 = 5 OR V378 = 9) THEN V378 = .;
   IF (V379 = 0 OR V379 = 3 OR V379 = 9) THEN V379 = .;
   IF (V380 = 0 OR V380 = 4 OR V380 = 9) THEN V380 = .;
   IF (V381 = 0 OR V381 = 3 OR V381 = 9) THEN V381 = .;
   IF (V382 = 0 OR V382 = 7 OR V382 = 9) THEN V382 = .;
   IF (V383 = 0 OR V383 = 3 OR V383 = 9) THEN V383 = .;
   IF (V384 = 0 OR V384 = 3 OR V384 = 9) THEN V384 = .;
   IF (V385 = 0 OR V385 = 3 OR V385 = 9) THEN V385 = .;
   IF (V386 = 0 OR V386 = 3 OR V386 = 9) THEN V386 = .;
   IF (V387 = 0 OR V387 = 3 OR V387 = 9) THEN V387 = .;
   IF (V388 = 0 OR V388 = 3 OR V388 = 9) THEN V388 = .;
   IF (V389 = 0 OR V389 = 3 OR V389 = 9) THEN V389 = .;
   IF (V390 = 0 OR V390 = 3 OR V390 = 9) THEN V390 = .;
   IF (V391 = 0 OR V391 = 3 OR V391 = 9) THEN V391 = .;
   IF (V392 = 0 OR V392 = 4 OR V392 = 9) THEN V392 = .;
   IF (V393 = 0 OR V393 = 4 OR V393 = 9) THEN V393 = .;
   IF (V394 = 0 OR V394 = 4 OR V394 = 9) THEN V394 = .;
   IF (V395 = 0 OR V395 = 4 OR V395 = 9) THEN V395 = .;
   IF (V396 = 0 OR V396 = 4 OR V396 = 9) THEN V396 = .;
   IF (V397 = 0 OR V397 = 4 OR V397 = 9) THEN V397 = .;
   IF (V398 = 0 OR V398 = 4 OR V398 = 9) THEN V398 = .;
   IF (V399 = 0 OR V399 = 4 OR V399 = 9) THEN V399 = .;
   IF (V400 = 0 OR V400 = 4 OR V400 = 9) THEN V400 = .;
   IF (V401 = 0 OR V401 = 4 OR V401 = 9) THEN V401 = .;
   IF (V402 = 0 OR V402 = 4 OR V402 = 9) THEN V402 = .;
   IF (V403 = 0 OR V403 = 4 OR V403 = 9) THEN V403 = .;
   IF (V404 = 0 OR V404 = 4 OR V404 = 9) THEN V404 = .;
   IF (V405 = 0 OR V405 = 4 OR V405 = 9) THEN V405 = .;
   IF (V406 = 0 OR V406 = 4 OR V406 = 9) THEN V406 = .;
   IF (V407 = 0 OR V407 = 4 OR V407 = 9) THEN V407 = .;
   IF (V408 = 0 OR V408 = 4 OR V408 = 9) THEN V408 = .;
   IF (V409 = 0 OR V409 = 4 OR V409 = 9) THEN V409 = .;
   IF (V410 = 0 OR V410 = 4 OR V410 = 9) THEN V410 = .;
   IF (V411 = 0 OR V411 = 4 OR V411 = 9) THEN V411 = .;
   IF (V412 = 0 OR V412 = 4 OR V412 = 9) THEN V412 = .;
   IF (V413 = 0 OR V413 = 4 OR V413 = 9) THEN V413 = .;
   IF (V414 = 0 OR V414 = 4 OR V414 = 9) THEN V414 = .;
   IF (V415 = 0 OR V415 = 4 OR V415 = 9) THEN V415 = .;
   IF (V416 = 0 OR V416 = 4 OR V416 = 9) THEN V416 = .;
   IF (V417 = 0) THEN V417 = .;
   IF (V417 >= 4) THEN V417 = .;
   IF (V418 = 7 OR V418 = 8 OR V418 = 9) THEN V418 = .;
   IF (V419 = 7 OR V419 = 8 OR V419 = 9) THEN V419 = .;
   IF (V420 = 0) THEN V420 = .;
   IF (V420 >= 97) THEN V420 = .;
   IF (V421 = 0 OR V421 = 5 OR V421 = 9) THEN V421 = .;
   IF (V422 = 0) THEN V422 = .;
   IF (V422 >= 90) THEN V422 = .;
   IF (V423 = 0) THEN V423 = .;
   IF (V423 >= 90) THEN V423 = .;
   IF (V424 = 0 OR V424 = 3 OR V424 = 9) THEN V424 = .;
   IF (V425 = 0 OR V425 = 3 OR V425 = 9) THEN V425 = .;
   IF (V426 = 0 OR V426 = 9) THEN V426 = .;
   IF (V427 = 0 OR V427 = 997 OR V427 = 999) THEN V427 = .;
   IF (V428 = 0 OR V428 = 998 OR V428 = 999) THEN V428 = .;
   IF (V429 = 0 OR V429 = 998 OR V429 = 999) THEN V429 = .;
   IF (V431 = 0) THEN V431 = .;
   IF (V432 = 0) THEN V432 = .;
   IF (V433 = 0) THEN V433 = .;
   IF (V434 = 0) THEN V434 = .;
   IF (V435 = 0 OR V435 = 11) THEN V435 = .;
   IF (V436 = 8 OR V436 = 9) THEN V436 = .;
   IF (V437 = 8 OR V437 = 9) THEN V437 = .;
   IF (V438 = 8 OR V438 = 9) THEN V438 = .;
   IF (V439 = 8 OR V439 = 9) THEN V439 = .;
   IF (V440 = 8 OR V440 = 9) THEN V440 = .;
   IF (V441 = 8 OR V441 = 9) THEN V441 = .;
   IF (V442 = 8 OR V442 = 9) THEN V442 = .;
   IF (V443 = 8 OR V443 = 9) THEN V443 = .;
   IF (V444 = 8 OR V444 = 9) THEN V444 = .;
   IF (V445 = 8 OR V445 = 9) THEN V445 = .;
   IF (V446 = 0 OR V446 = 99) THEN V446 = .;
   IF (V447 = 0 OR V447 = 99) THEN V447 = .;
   IF (V448 = 998 OR V448 = 999) THEN V448 = .;
   IF (V449 = 0 OR V449 = 5 OR V449 = 9) THEN V449 = .;
   IF (V450 = 0 OR V450 = 5 OR V450 = 9) THEN V450 = .;
   IF (V451 = 0 OR V451 = 3 OR V451 = 9) THEN V451 = .;
   IF (V452 = 0 OR V452 = 3 OR V452 = 9) THEN V452 = .;
   IF (V453 = 0 OR V453 = 97 OR V453 = 99) THEN V453 = .;
   IF (V454 = 0 OR V454 = 99) THEN V454 = .;
   IF (V455 = 0 OR V455 = 99) THEN V455 = .;
   IF (V456 = 0 OR V456 = 5 OR V456 = 9) THEN V456 = .;
   IF (V457 = 0 OR V457 = 8 OR V457 = 9) THEN V457 = .;
   IF (V458 = 0 OR V458 = 8 OR V458 = 9) THEN V458 = .;
   IF (V459 = 0 OR V459 = 4) THEN V459 = .;
   IF (V460 = 0 OR V460 = 10 OR V460 = 99) THEN V460 = .;
   IF (V461 = 0) THEN V461 = .;
   IF (V461 >= 6) THEN V461 = .;
   IF (V462 = 0 OR V462 = 5 OR V462 = 9) THEN V462 = .;
   IF (V463 = 0) THEN V463 = .;
   IF (V463 >= 97) THEN V463 = .;
   IF (V464 = 0 OR V464 = 5 OR V464 = 9) THEN V464 = .;
   IF (V465 = 0 OR V465 = 99) THEN V465 = .;
   IF (V466 = 0 OR V466 = 9) THEN V466 = .;
   IF (V467 = 98 OR V467 = 99) THEN V467 = .;
   IF (V468 = 98 OR V468 = 99) THEN V468 = .;
   IF (V469 = 0 OR V469 = 999) THEN V469 = .;
   IF (V470 = 0 OR V470 = 9) THEN V470 = .;
   IF (V471 = 0 OR V471 = 9) THEN V471 = .;
   IF (V472 = 0 OR V472 = 99) THEN V472 = .;
   IF (V473 = 0 OR V473 = 999) THEN V473 = .;
   IF (V474 = 99) THEN V474 = .;
   IF (V475 = 0 OR V475 = 9) THEN V475 = .;
   IF (V476 = 0 OR V476 = 4 OR V476 = 9) THEN V476 = .;
   IF (V477 = 0 OR V477 = 5 OR V477 = 9) THEN V477 = .;
   IF (V478 = 0 OR V478 = 3 OR V478 = 9) THEN V478 = .;
   IF (V479 = 0 OR V479 = 4 OR V479 = 9) THEN V479 = .;
   IF (V480 = 0 OR V480 = 4 OR V480 = 9) THEN V480 = .;
   IF (V481 = 8 OR V481 = 9) THEN V481 = .;
   IF (V482 = 8 OR V482 = 9) THEN V482 = .;
   IF (V483 = 8 OR V483 = 9) THEN V483 = .;
   IF (V484 = 8 OR V484 = 9) THEN V484 = .;
   IF (V485 = 8 OR V485 = 9) THEN V485 = .;
   IF (V486 = 8 OR V486 = 9) THEN V486 = .;
   IF (V487 = 8 OR V487 = 9) THEN V487 = .;
   IF (V488 = 8 OR V488 = 9) THEN V488 = .;
   IF (V489 = 8 OR V489 = 9) THEN V489 = .;
   IF (V490 = 8 OR V490 = 9) THEN V490 = .;
   IF (V491 = 0 OR V491 = 3 OR V491 = 9) THEN V491 = .;
   IF (V492 = 0 OR V492 = 3 OR V492 = 9) THEN V492 = .;
   IF (V493 = 0 OR V493 = 3 OR V493 = 9) THEN V493 = .;
   IF (V494 = 0 OR V494 = 3 OR V494 = 9) THEN V494 = .;
   IF (V495 = 0 OR V495 = 4 OR V495 = 9) THEN V495 = .;
   IF (V496 = 0 OR V496 = 4 OR V496 = 9) THEN V496 = .;
   IF (V497 = 0 OR V497 = 4 OR V497 = 9) THEN V497 = .;
   IF (V498 = 0 OR V498 = 3 OR V498 = 9) THEN V498 = .;
   IF (V499 = 0 OR V499 = 4 OR V499 = 9) THEN V499 = .;
   IF (V500 = 0 OR V500 = 3 OR V500 = 9) THEN V500 = .;
   IF (V501 = 0 OR V501 = 5 OR V501 = 9) THEN V501 = .;
   IF (V502 = 0 OR V502 = 4 OR V502 = 9) THEN V502 = .;
   IF (V503 = 0 OR V503 = 6 OR V503 = 9) THEN V503 = .;
   IF (V504 = 0 OR V504 = 5 OR V504 = 9) THEN V504 = .;
   IF (V505 = 0 OR V505 = 9) THEN V505 = .;
   IF (V506 = 0 OR V506 = 9) THEN V506 = .;
   IF (V507 = 0 OR V507 = 5 OR V507 = 9) THEN V507 = .;
   IF (V508 = 0 OR V508 = 6 OR V508 = 9) THEN V508 = .;
   IF (V509 = 0 OR V509 = 5 OR V509 = 9) THEN V509 = .;
   IF (V510 = 0 OR V510 = 6 OR V510 = 9) THEN V510 = .;
   IF (V511 = 0 OR V511 = 6 OR V511 = 9) THEN V511 = .;
   IF (V512 = 0 OR V512 = 6 OR V512 = 9) THEN V512 = .;
   IF (V513 = 0 OR V513 = 6 OR V513 = 9) THEN V513 = .;
   IF (V514 = 0 OR V514 = 6 OR V514 = 9) THEN V514 = .;
   IF (V515 = 0 OR V515 = 6 OR V515 = 9) THEN V515 = .;
   IF (V516 = 0 OR V516 = 6 OR V516 = 9) THEN V516 = .;
   IF (V517 = 0 OR V517 = 6 OR V517 = 9) THEN V517 = .;
   IF (V518 = 0 OR V518 = 3 OR V518 = 9) THEN V518 = .;
   IF (V519 = 0 OR V519 = 3 OR V519 = 9) THEN V519 = .;
   IF (V520 = 0 OR V520 = 3 OR V520 = 9) THEN V520 = .;
   IF (V521 = 0 OR V521 = 3 OR V521 = 9) THEN V521 = .;
   IF (V522 = 0 OR V522 = 3 OR V522 = 9) THEN V522 = .;
   IF (V523 = 0 OR V523 = 3 OR V523 = 9) THEN V523 = .;
   IF (V524 = 0 OR V524 = 3 OR V524 = 9) THEN V524 = .;
   IF (V525 = 0 OR V525 = 3 OR V525 = 9) THEN V525 = .;
   IF (V526 = 0 OR V526 = 3 OR V526 = 9) THEN V526 = .;
   IF (V527 = 0 OR V527 = 5 OR V527 = 9) THEN V527 = .;
   IF (V528 = 0 OR V528 = 3 OR V528 = 9) THEN V528 = .;
   IF (V529 = 0 OR V529 = 6 OR V529 = 9) THEN V529 = .;
   IF (V530 = 0 OR V530 = 9) THEN V530 = .;
   IF (V531 = 0 OR V531 = 99) THEN V531 = .;
   IF (V532 = 0 OR V532 = 9) THEN V532 = .;
   IF (V533 = 0 OR V533 = 9) THEN V533 = .;
   IF (V534 = 0 OR V534 = 9) THEN V534 = .;
   IF (V536 = 9) THEN V536 = .;
   IF (V537 = 9) THEN V537 = .;
   IF (V540 = 9) THEN V540 = .;
*/

* SAS FORMAT STATEMENT;

  FORMAT V2 V2ffffff. V3 V3ffffff. V5 V5ffffff.
         V7 V7ffffff. V10 V10fffff. V34 V34fffff.
         V35 V35fffff. V36 V36fffff. V37 V37fffff.
         V38 V38fffff. V39 V39fffff. V40 V40fffff.
         V41 V41fffff. V42 V42fffff. V43 V43fffff.
         V44 V44fffff. V45 V45fffff. V46 V46fffff.
         V47 V47fffff. V48 V48fffff. V49 V49fffff.
         V50 V50fffff. V51 V51fffff. V52 V52fffff.
         V53 V53fffff. V54 V54fffff. V55 V55fffff.
         V56 V56fffff. V57 V57fffff. V58 V58fffff.
         V59 V59fffff. V60 V60fffff. V61 V61fffff.
         V62 V62fffff. V63 V63fffff. V64 V64fffff.
         V65 V65fffff. V66 V66fffff. V67 V67fffff.
         V68 V68fffff. V69 V69fffff. V70 V70fffff.
         V71 V71fffff. V72 V72fffff. V73 V73fffff.
         V74 V74fffff. V75 V75fffff. V76 V76fffff.
         V77 V77fffff. V78 V78fffff. V79 V79fffff.
         V80 V80fffff. V81 V81fffff. V82 V82fffff.
         V83 V83fffff. V84 V84fffff. V85 V85fffff.
         V86 V86fffff. V87 V87fffff. V88 V88fffff.
         V89 V89fffff. V90 V90fffff. V91 V91fffff.
         V92 V92fffff. V93 V93fffff. V94 V94fffff.
         V95 V95fffff. V96 V96fffff. V97 V97fffff.
         V98 V98fffff. V99 V99fffff. V100 V100ffff.
         V101 V101ffff. V102 V102ffff. V103 V103ffff.
         V104 V104ffff. V105 V105ffff. V106 V106ffff.
         V107 V107ffff. V108 V108ffff. V109 V109ffff.
         V110 V110ffff. V111 V111ffff. V112 V112ffff.
         V113 V113ffff. V114 V114ffff. V115 V115ffff.
         V116 V116ffff. V117 V117ffff. V118 V118ffff.
         V119 V119ffff. V120 V120ffff. V121 V121ffff.
         V122 V122ffff. V123 V123ffff. V124 V124ffff.
         V125 V125ffff. V126 V126ffff. V127 V127ffff.
         V128 V128ffff. V129 V129ffff. V130 V130ffff.
         V131 V131ffff. V132 V132ffff. V133 V133ffff.
         V134 V134ffff. V135 V135ffff. V136 V136ffff.
         V137 V137ffff. V138 V138ffff. V139 V139ffff.
         V140 V140ffff. V141 V141ffff. V142 V142ffff.
         V143 V143ffff. V144 V144ffff. V145 V145ffff.
         V146 V146ffff. V147 V147ffff. V148 V148ffff.
         V149 V149ffff. V150 V150ffff. V151 V151ffff.
         V152 V152ffff. V153 V153ffff. V154 V154ffff.
         V155 V155ffff. V156 V156ffff. V157 V157ffff.
         V158 V158ffff. V159 V159ffff. V160 V160ffff.
         V161 V161ffff. V162 V162ffff. V163 V163ffff.
         V164 V164ffff. V165 V165ffff. V166 V166ffff.
         V167 V167ffff. V168 V168ffff. V169 V169ffff.
         V170 V170ffff. V171 V171ffff. V172 V172ffff.
         V173 V173ffff. V174 V174ffff. V175 V175ffff.
         V176 V176ffff. V177 V177ffff. V178 V178ffff.
         V179 V179ffff. V180 V180ffff. V181 V181ffff.
         V182 V182ffff. V183 V183ffff. V184 V184ffff.
         V185 V185ffff. V186 V186ffff. V187 V187ffff.
         V188 V188ffff. V189 V189ffff. V190 V190ffff.
         V191 V191ffff. V192 V192ffff. V193 V193ffff.
         V194 V194ffff. V195 V195ffff. V196 V196ffff.
         V197 V197ffff. V198 V198ffff. V199 V199ffff.
         V200 V200ffff. V201 V201ffff. V202 V202ffff.
         V203 V203ffff. V204 V204ffff. V205 V205ffff.
         V206 V206ffff. V207 V207ffff. V208 V208ffff.
         V209 V209ffff. V210 V210ffff. V211 V211ffff.
         V212 V212ffff. V213 V213ffff. V214 V214ffff.
         V215 V215ffff. V216 V216ffff. V217 V217ffff.
         V218 V218ffff. V219 V219ffff. V220 V220ffff.
         V221 V221ffff. V222 V222ffff. V223 V223ffff.
         V224 V224ffff. V225 V225ffff. V226 V226ffff.
         V227 V227ffff. V228 V228ffff. V229 V229ffff.
         V230 V230ffff. V231 V231ffff. V232 V232ffff.
         V233 V233ffff. V234 V234ffff. V235 V235ffff.
         V236 V236ffff. V237 V237ffff. V238 V238ffff.
         V239 V239ffff. V240 V240ffff. V241 V241ffff.
         V242 V242ffff. V243 V243ffff. V244 V244ffff.
         V245 V245ffff. V246 V246ffff. V247 V247ffff.
         V248 V248ffff. V249 V249ffff. V250 V250ffff.
         V251 V251ffff. V252 V252ffff. V253 V253ffff.
         V254 V254ffff. V255 V255ffff. V256 V256ffff.
         V257 V257ffff. V258 V258ffff. V259 V259ffff.
         V260 V260ffff. V261 V261ffff. V262 V262ffff.
         V263 V263ffff. V264 V264ffff. V265 V265ffff.
         V266 V266ffff. V267 V267ffff. V268 V268ffff.
         V269 V269ffff. V270 V270ffff. V271 V271ffff.
         V272 V272ffff. V273 V273ffff. V274 V274ffff.
         V275 V275ffff. V276 V276ffff. V277 V277ffff.
         V278 V278ffff. V279 V279ffff. V280 V280ffff.
         V281 V281ffff. V282 V282ffff. V283 V283ffff.
         V284 V284ffff. V285 V285ffff. V286 V286ffff.
         V287 V287ffff. V288 V288ffff. V289 V289ffff.
         V290 V290ffff. V291 V291ffff. V292 V292ffff.
         V293 V293ffff. V294 V294ffff. V295 V295ffff.
         V296 V296ffff. V297 V297ffff. V298 V298ffff.
         V299 V299ffff. V300 V300ffff. V301 V301ffff.
         V302 V302ffff. V303 V303ffff. V304 V304ffff.
         V305 V305ffff. V306 V306ffff. V307 V307ffff.
         V308 V308ffff. V309 V309ffff. V310 V310ffff.
         V311 V311ffff. V312 V312ffff. V313 V313ffff.
         V314 V314ffff. V315 V315ffff. V316 V316ffff.
         V317 V317ffff. V318 V318ffff. V319 V319ffff.
         V320 V320ffff. V321 V321ffff. V322 V322ffff.
         V323 V323ffff. V324 V324ffff. V325 V325ffff.
         V326 V326ffff. V327 V327ffff. V328 V328ffff.
         V329 V329ffff. V330 V330ffff. V331 V331ffff.
         V332 V332ffff. V333 V333ffff. V334 V334ffff.
         V335 V335ffff. V336 V336ffff. V337 V337ffff.
         V338 V338ffff. V339 V339ffff. V340 V340ffff.
         V341 V341ffff. V342 V342ffff. V343 V343ffff.
         V344 V344ffff. V345 V345ffff. V346 V346ffff.
         V347 V347ffff. V348 V348ffff. V349 V349ffff.
         V350 V350ffff. V351 V351ffff. V352 V352ffff.
         V353 V353ffff. V354 V354ffff. V355 V355ffff.
         V356 V356ffff. V357 V357ffff. V358 V358ffff.
         V359 V359ffff. V360 V360ffff. V361 V361ffff.
         V362 V362ffff. V363 V363ffff. V364 V364ffff.
         V365 V365ffff. V366 V366ffff. V367 V367ffff.
         V368 V368ffff. V369 V369ffff. V370 V370ffff.
         V371 V371ffff. V372 V372ffff. V373 V373ffff.
         V374 V374ffff. V375 V375ffff. V376 V376ffff.
         V377 V377ffff. V378 V378ffff. V379 V379ffff.
         V380 V380ffff. V381 V381ffff. V382 V382ffff.
         V383 V383ffff. V384 V384ffff. V385 V385ffff.
         V386 V386ffff. V387 V387ffff. V388 V388ffff.
         V389 V389ffff. V390 V390ffff. V391 V391ffff.
         V392 V392ffff. V393 V393ffff. V394 V394ffff.
         V395 V395ffff. V396 V396ffff. V397 V397ffff.
         V398 V398ffff. V399 V399ffff. V400 V400ffff.
         V401 V401ffff. V402 V402ffff. V403 V403ffff.
         V404 V404ffff. V405 V405ffff. V406 V406ffff.
         V407 V407ffff. V408 V408ffff. V409 V409ffff.
         V410 V410ffff. V411 V411ffff. V412 V412ffff.
         V413 V413ffff. V414 V414ffff. V415 V415ffff.
         V416 V416ffff. V417 V417ffff. V418 V418ffff.
         V419 V419ffff. V420 V420ffff. V421 V421ffff.
         V422 V422ffff. V423 V423ffff. V424 V424ffff.
         V425 V425ffff. V426 V426ffff. V427 V427ffff.
         V428 V428ffff. V429 V429ffff. V430 V430ffff.
         V431 V431ffff. V432 V432ffff. V433 V433ffff.
         V434 V434ffff. V435 V435ffff. V436 V436ffff.
         V437 V437ffff. V438 V438ffff. V439 V439ffff.
         V440 V440ffff. V441 V441ffff. V442 V442ffff.
         V443 V443ffff. V444 V444ffff. V445 V445ffff.
         V446 V446ffff. V447 V447ffff. V448 V448ffff.
         V449 V449ffff. V450 V450ffff. V451 V451ffff.
         V452 V452ffff. V453 V453ffff. V454 V454ffff.
         V455 V455ffff. V456 V456ffff. V457 V457ffff.
         V458 V458ffff. V459 V459ffff. V460 V460ffff.
         V461 V461ffff. V462 V462ffff. V463 V463ffff.
         V464 V464ffff. V465 V465ffff. V466 V466ffff.
         V467 V467ffff. V468 V468ffff. V469 V469ffff.
         V470 V470ffff. V471 V471ffff. V472 V472ffff.
         V473 V473ffff. V474 V474ffff. V475 V475ffff.
         V476 V476ffff. V477 V477ffff. V478 V478ffff.
         V479 V479ffff. V480 V480ffff. V481 V481ffff.
         V482 V482ffff. V483 V483ffff. V484 V484ffff.
         V485 V485ffff. V486 V486ffff. V487 V487ffff.
         V488 V488ffff. V489 V489ffff. V490 V490ffff.
         V491 V491ffff. V492 V492ffff. V493 V493ffff.
         V494 V494ffff. V495 V495ffff. V496 V496ffff.
         V497 V497ffff. V498 V498ffff. V499 V499ffff.
         V500 V500ffff. V501 V501ffff. V502 V502ffff.
         V503 V503ffff. V504 V504ffff. V505 V505ffff.
         V506 V506ffff. V507 V507ffff. V508 V508ffff.
         V509 V509ffff. V510 V510ffff. V511 V511ffff.
         V512 V512ffff. V513 V513ffff. V514 V514ffff.
         V515 V515ffff. V516 V516ffff. V517 V517ffff.
         V518 V518ffff. V519 V519ffff. V520 V520ffff.
         V521 V521ffff. V522 V522ffff. V523 V523ffff.
         V524 V524ffff. V525 V525ffff. V526 V526ffff.
         V527 V527ffff. V528 V528ffff. V529 V529ffff.
         V530 V530ffff. V531 V531ffff. V532 V532ffff.
         V533 V533ffff. V534 V534ffff. V535 V535ffff.
         V536 V536ffff. V537 V537ffff. V538 V538ffff.
         V540 V540ffff.  ;

RUN ;
