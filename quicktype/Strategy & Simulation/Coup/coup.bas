 1 X=53248:Z=7:PRINT "";TAB(Z);"      xpppppw"
 2 PRINT  TAB(Z);"      ppppppp�������"
 3 PRINT  TAB(Z);"      �������"
 4 PRINT  TAB(Z);" xppppppppppppppppw"
 5 PRINT  TAB(Z);" p���xppppw����pppp"
 6 PRINT  TAB(Z);" u � � � � � � �  v"
 7 PRINT  TAB(Z);"  ��������������ĉ"
 8 FOR W=1 TO 3000:NEXT W:Z=0:Y=386:GOSUB 19
 9 Y=370:GOSUB 19:Z=67:Y=371:GOSUB 19
 10 Z=0:Y=385:GOSUB 19:Y=384:GOSUB 19
 11 Y=371:GOSUB 19:Y=383:GOSUB 19
 12 Y=382:GOSUB 19:Z=67:Y=376:GOSUB 19
 13 Z=0:Y=381:GOSUB 19:Z=67:Y=375:GOSUB 19
 14 Z=0:Y=380:GOSUB 19:Z=67:Y=374:GOSUB 19
 15 Z=0:Y=379:GOSUB 19:Z=67:Y=373:GOSUB 19
 16 Z=74:Y=378:GOSUB 19:Z=67:Y=379:GOSUB 19
 17 Z=74:Y=377:GOSUB 19:Z=67:Y=378:GOSUB 19
 18 Z=74:Y=376:GOSUB 19:Z=67:Y=377:GOSUB 19: GOTO 20
 19 POKE(X+Y),Z:RETURN
 20 FOR Z=0 TO 999:NEXT Z:PRINT ""
 21 TEMPO7: Z=71: FOR A=0 TO 50:READ Y:POKEX+Y,Z:MUSIC"CR1":NEXT A
 22 DATA 290,249,248,248,248,248,247,286,326,366,406,446,487,488,489,450,495,496
 23 DATA 497,458,418,378,337,336,335,374,374,414,454,342,382,422,462,503,504,504
 24 DATA 505,466,426,386,346,510,470,430,390,350,351,352,393,432,431
 34 PRINT "                  ���        ���"
 35 PRINT "          �È����  �   �È    �"
 36 PRINT "          � � ��   �  �����   �"
 37 PRINT "          �ĉ ���  �  �   �   �"
 39 DEF FNA(X)=1+INT((RND(1)*X))
 40 DIM C$(2),D$(2): FOR A=1 TO 2:READ C$(A),D$(A):NEXT A
 41 DIM H$(4): FOR A=1 TO 4:READ H$(A):NEXT A
 42 DIM IN$(4),TW$(4): FOR A=1 TO 4:READ IN$(A),TW$(A):NEXT A
 43 DIM TR(13),PT(13),I(13): FOR A=1 TO 13:TR(A)=1:NEXT A: FOR A=1 TO 13
 44 B=FNA(13):IF PT(B)>0 THEN 44
 45 PT(B)=A:NEXT A
 46 DIM SH(30): FOR Z=1 TO 10:NS=10
 47 HO=FNA(30):IF SH(HO)=1 THEN 47
 48 SH(HO)=1:NEXT Z:DIM TN(13)
 49 DIM AM$(5): FOR E=1 TO 5:READ AM$(E):NEXT E:M$="Yourman ":ME$="Your men have "
 50 W=1:PS=50:EL=100:NL=15:MY=1000:UF=40:ES=2000:PL=1000:MV=0:TK=1:GA=300
 51 PRINT "": FOR A=0 TO 2
 52 PRINT "           ppppppppppppppppppp "
 53 PRINT "           p                 p "
 54 PRINT "           p    ******       p "
 55 PRINT "           p                 p "
 56 PRINT "           ppppppppppppppppppp "
 57 PRINT "STATUS": FOR C=0 TO 100:NEXT C:NEXT A
 58 PRINT "U.S.Friendship:     ";UF;"%"
 59 PRINT :PRINT "E.L.O. Forces:      ";EL
 60 PRINT :PRINT " Popular Support:    ";PS;"%"
 61 PRINT :PRINT " No. of lieutenants: ";NL
 62 PRINT :PRINT " Fighting Fund:      ";MY;" Dollars"
 63 PRINT :PRINT " No.of Safe Houses: ";NS
 64 PRINT :PRINT " Type of Weapons:     ";TW$(W)
 65 GET A$:IF A$="" GOTO 65
 66 IF (NL<1)+(EL<1)+(PS<1)+(UF<1) THEN 747
 67 IF (BT=0)*(EL>300) THEN EL=300
 68 IF ES<0 THEN ES=0
 69 IF UF>100 THEN UF=100
 70 IF PL<0 THEN PL=0
 71 IF PS>100 THEN PS=100
 72 IF NL>20 THEN NL=20
 73 PRINT "           ppppppppppppppppppppp"
 74 PRINT "           p                   p"
 75 PRINT "           p      MOVE         p"
 76 PRINT "           p                   p"
 77 PRINT "           ppppppppppppppppppppp":PRINT "(0) Map"
 78 PRINT "(1) Status ","(2) Ghetto"
 79 PRINT "(3)Bank    ","(4) Harbour"
 80 PRINT " (5) Square  ","(6) T.V. Station"
 81 PRINT " (7) Police station","(8) Hotel"
 82 PRINT " (9) Prison  ","(10) Church"
 83 PRINT "(11) Barracks","(12) Palace":GOSUB 471
 84 INPUT MO:IF (MO=NX)*(MO>1) THEN PRINT M$;"has just been there": GOTO 84
 85 IF MO=0 THEN 472
 86 IF MO=1 THEN 51
 87 NX=MO:MV=MV+1:IF MO=2 THEN 99
 88 ONMO-2 GOTO 117,134,157,175,216,253,280,324,338,378
 98 PRINT "Press the right button EL'DUMBO!!!": GOTO 84
 99 GOSUB 636:A=FNA(6):ON A GOTO 102,104,106,111,112
 100 IF TV=0 THEN GOSUB 424:PS=PS-FNA(8)+2: GOTO 396
 101 GOTO 111
 102 S=INT((FNA(3)*PS)/10):PRINT S;"New recruits ask to join the E.L.O."
 103 EL=EL+S: GOTO 396
 104 S=FNA(40):GOSUB 800:PRINT ME$;"been ambushed by the army":EL=EL-S
 105 GOTO 396
 106 S=FNA(10)
 107 IF FO>0 THEN PRINT ME$;"given food to the poor":PS=PS+S: GOTO 110
 108 PRINT "The people aren't too chuffed that you haven't BROUGHT any FOOD"
 109 PS=PS-S: GOTO 396
 110 FO=FO-1: GOTO 396
 111 S=FNA(14):PRINT ME$;"robbed a U.S. reporter":UF=UF-S:MY=MY+FNA(100): GOTO 396
 112 IF TR(13)=0 THEN 99
 113 PRINT "Your truck is searched on the bridge":Y=FNA(2)
 114 IF Y=1 THEN PRINT "They couldn't find an ELEPHANT": GOTO 396
 115 IF FO>0 THEN PRINT "They confiscate your food":FO=0: GOTO 396
 116 PRINT "They arrest the drivers":EL=EL-3: GOTO 396
 117 GOSUB 680:A=FNA(3):ON A GOTO 122,123
 118 K=FNA(7):IF (BA>0)*(K<3)*(ES>BA) THEN PRINT "The bank has been RECAPTURED":K=9
 119 IF K=9 THEN EL=EL-BA:BA=0: GOTO 396
 120 IF K>5 THEN PRINT "You've been given some cash":MY=MY+FNA(4)*PS: GOTO 396
 121 PRINT M$;"still can't get a loan": GOTO 396
 122 GOTO 797
 123 S=INT(ES/6):EN$="Soldiers":GOSUB 466
 124 IF A$="N" THEN 396
 125 LO=BA:N=4:LT$=" Bank":RS=0:MS=FNA(1200):M=FNA(5):T=10
 126 GOSUB 398:IF A=1 THEN A=0: GOTO 396
 127 IF AC=2 THEN ES=ES-S: GOTO 396
 128 IF AC=1 THEN BA=Z:MY=MY+MS
 129 IF AC=3 THEN ES=ES-S: GOTO 396
 130 IF AC=4 THEN 396
 131 IF AC=5 THEN MN=M*S
 132 PRINT "They take";M;" dollars, you get";MS
 133 MY=MY+MS-M: GOTO 396
 134 GOSUB 556
 135 A=FNA(6):ON A GOTO 151,145,143,152,154
 136 K=FNA(7)
 137 IF (K<4)*(ES>10)*((TR(13)=1)+(TR(12)=1)) THEN 139
 138 GOTO 140
 139 GOSUB 800:PRINT M$;"DIDN'T get past the tower":NL=NL-1: GOTO 396
 140 IF K>5 THEN PRINT "You've gota contribution":MY=MY+FNA(4)*PS: GOTO 396
 141 IF (K=1)*(RD=0) THEN PRINT M$;"found a crate of radios":RD=1: GOTO 396
 142 PRINT "Water looks dirty": GOTO 396
 143 IF TV=0GOSUB 424: GOTO 396
 144 GOTO 135
 145 IF BO=1 THEN 135
 146 PRINT M$;"sees a motor boat in the quay"
 147 PRINT "Would you like to BORROW it ?":GOSUB 468
 148 IF A$="N" THEN 396
 149 S=FNA(6):IF S>2 THEN PRINT "Nice boat you've got there":BO=1: GOTO 396
 150 PRINT "Unfortunatly ";M$;"forgot he CAN'TSWIM!":NL=NL-1: GOTO 396
 151 GOTO 434
 152 IF TR(12)=1 THEN 797
 153 PRINT "Not much doing": GOTO 396
 154 PRINT M$;"is shot at":GOSUB 800:A=FNA(2)
 155 IF A=1 THEN PRINT " THEY MISSED!!": GOTO 396
 156 IF A=2 THEN PRINT "GOOD SHOT unfortunately":NL=NL-1: GOTO 396
 157 GOSUB 700
 158 A=FNA(5):ON A GOTO 171,160,168,172
 159 HO=FNA(PS/4):IF (SH(HO)=0)*(PS>55) THEN SH(HO)=1: GOTO 167
 160 LO$="The square"
 161 PRINT LO$;" has been SURROUNDED by troops":GOSUB 801
 162 PRINT M$;"must go to a safe house"
 163 PRINT "Choose from 1-30":GOSUB 471:INPUT HO
 164 IF (HO<0)+(HO>30) THEN PRINT "I realise illiteracy is common here BUT": GOTO 163
 165 IF SH(HO)=0 THEN PRINT "The house has been BETRAYED":NL=NL-1: GOTO 396
 166 PRINT "PHEW!! That was close!": GOTO 396
 167 PRINT "You have GAINED a safe house":NS=NS+1: GOTO 396
 168 IF (HE=1)*(HD=1) THEN PRINT "A box of helicopter spares have fallen ";: GOTO 170
 169 GOTO 158
 170 PRINT "off the back of a lorry.NUDGE!NUDGE!":HD=0: GOTO 396
 171 GOTO 434
 172 PRINT M$;"meets a shady looking trader"
 173 IF (FO>0)+(RD>0)+(VR>0)+(GB=1)+(JP=1) THEN 455
 174 PRINT "Who sells him some DIRTY postcards": GOTO 396
 175 GOSUB 519:A=FNA(5):ON A GOTO 182,191,194,197
 176 K=FNA(7)
 177 IF (TV>0)*(K<3)*(PL>TV) THEN PRINT "The T.V. station has been RECAPTURED":K=9
 178 IF K=9 THEN EL=EL-TV:TV=0: GOTO 396
 179 IF K>5 THEN PRINT "You've been given a contribution":MY=MY+FNA(4)*PS: GOTO 396
 180 IF (K=1)*(VR=0) THEN PRINT M$;"finds some VIDEO RECORDERS":VR=1: GOTO 396
 181 PRINT M$;"gets a part inRATOK STREET": GOTO 396
 182 S=INT(PL/4):EN$="Police":GOSUB 466
 183 IF A$="N" THEN GOTO 396
 184 LO=TV:N=4:LT$=" T.V.Station":RS=0:P=FNA(5)+1:M=FNA(5):T=4
 185 GOSUB 398:IF FA=1 THEN FA=0: GOTO 396
 186 IF AC=2 THEN PL=PL-S: GOTO 396
 187 IF AC=1 THEN TV=Z:PS=100: GOTO 396
 188 IF AC=3 THEN PL=PL-S: GOTO 396
 189 IF AC=5 THEN PRINT "The police take";M;" each and you broadcast":PS=PS+P
 190 MY=MY-M*S
 191 Y=FNA(2):PRINT M$;"has been shot by guards":GOSUB 800
 192 IF (Y=1)*(TR(3)=1)+(TR(4)=1) THEN PRINT "Stone DEAD!":NL=NL-1: GOTO 396
 193 PRINT "Only winged him": GOTO 396
 194 S=FNA(2):PRINT M$;"is shot at by soldiers":GOSUB 800
 195 IF S=1 THEN PRINT "Theycouldn't hit a BUS!": GOTO 396
 196 PRINT "That's one less for dinner":NL=NL-1: GOTO 396
 197 PRINT M$;"meets a government contact":IF HS>0 THEN 199
 198 PRINT "Who says some RUDE things about YOU": GOTO 396
 199 PRINT "Do you want to exchange hostages ?"
 200 GOSUB 468
 201 IF A$="N" THEN 396
 202 M=FNA(200)+200
 203 IF LL>0 THEN N$=" LT.Lapidus":S=1:GOSUB 210
 204 IF Y=1 THEN LL=0:MY=MY+M:HS=HS-1:NL=NL+SS: GOTO 396
 205 IF CL>0 THEN N$=" Capt.Le Shan":S=2:M=M*2:GOSUB 210
 206 IF Y=1 THEN CL=0:MY=MY+M:HS=HS-1:NL=NL+SS: GOTO 396
 207 IF GJ>0 THEN N$=" Gen.Jung":S=3:M=M*3:GOSUB 210
 208 IF Y=1 THEN GJ=0:MY=MY+M:HS=HS-1:NL=NL+SS: GOTO 396
 209 GOTO 396
 210 SS=FNA(S)+1:PRINT " The government offers to release";SS
 211 PRINT "Lietenants and donate ";M;" dollars for";N$
 212 PRINT "Do you accept ?"
 213 GOSUB 468
 214 IF A$="Y" THEN Y=1:RETURN
 215 Y=0:RETURN
 216 GOSUB 661: A=FNA(6):ON A GOTO 224,239,241,251,252
 217 K=FNA(7)
 218 IF (PH>0)*(K>3)*(ES>PH) THEN PRINT "The police station has been RETAKEN":K=9
 219 IF K=9 THEN EL=EL-PH:PH=0: GOTO 396
 220 IF K>5 THEN PRINT "You have been given a contribution":MY=MY+FNA(4)*PS: GOTO 396
 221 IF (K=2)+(K=3) THEN 377
 222 IF (K=1)*(GB=0) THEN PRINT "You've acquired a GOLD BAR":GB=1: GOTO 396
 223 PRINT M$;"is given a signed photo of the football team": GOTO 396
 224 S=PL:EN$="Police":GOSUB 466
 225 IF A$="N" THEN 396
 226 LO=PH:N=4:LT$=" Police station":RS=1:T=9:M=FNA(500)
 227 GOSUB 398:IF FA=1 THEN FA=0: GOTO 396
 228 IF AC=2 THEN PL=PL-S: GOTO 396
 229 IF AC=1 THEN PH=Z:PL=0:PRINT "You NOW have AUTOMATIC weapons":W=4: GOTO 396
 230 IF AC=3 THEN PL=PL-S
 231 IF (AC=4)*(CL=0) THEN B=FNA(3): GOTO 236
 232 IF AC=4 THEN 323
 234 IF Y=1 THEN PRINT "The reply is NOT printable": GOTO 396
 235 PRINT "I'll leave a cell door open for";M;"dollars":MY=MY-M:NL=NL+2: GOTO 396
 236 C=FNA(Z):IF B=1 THEN PRINT "Your attempt FAILED and you lost";C;" men"
 237 IF B=1 THEN EL=EL-C: GOTO 396
 238 PRINT "You have CAPTURED Capt.Le Shan":CL=2:HS=HS+1: GOTO 396
 239 PRINT "You LIBERATED some food supplies":PRINT "from the kitchens"
 240 FO=FO+1: GOTO 396
 241 J=FNA(6):IF (J=5)*(W>1) THEN PRINT "Your arms store is FOUND":W=1: GOTO 396
 242 IF (TR(13)=1)*(J=6) THEN 250
 243 IF (J=1)*(DT>0) THEN PRINT "Your dynamyte has  been DISCOVERED":DT=0: GOTO 396
 244 IF (J=2)*(HD=1) THEN PRINT "You are given some chopper spares":HD=0: GOTO 396
 245 PRINT M$;"is recognised and runs for a safe house":GOSUB 801
 246 PRINT "Which one ?(1-30)":GOSUB 471
 247 INPUT A:IF (A<=0)+(A>30) THEN PRINT "Try again STUPID!!": GOTO 247
 248 IF SH(A)=1 THEN PRINT "NO SWEAT": GOTO 396
 249 PRINT "It wasn't very safe!!":NL=NL-1: GOTO 396
 250 PRINT "The bridge tower has been abandoned":TR(13)=0:TN(13)=MV: GOTO 396
 251 IF TR(10)=1 THEN 797
 252 GOTO 377
 253 GOSUB 505:A=FNA(5):B=FNA(10*UF)+100
 254 ONA GOTO 258,274,276,277
 255 PRINT :PRINT M$;"is contacted by";C$(FNA(2))
 256 PRINT "(The well known C.I.A. Agent)
 257 PRINT "whogives him";B;" dollars in a";H$(FNA(4)):MY=MY+B: GOTO 396
 258 PRINT :PRINT M$;"is contacted by";D$(FNA(2));" who":M=FNA(300)+50
 259 PRINT "offers to sell information for";M;"     dollars. Will you BUY"
 260 IF M>MY THEN PRINT "He won't take I.O.U.'s": GOTO 396
 261 GOSUB 468:IF A$="N" THEN 396
 262 MY=MY-M:N=FNA(4):PRINT IN$(N):IF (N=1)+(N=2) THEN 264
 263 PRINT "Not a lot of people know that!": GOTO 396
 264 PRINT "Would you like to try a KIDNAP ?":GOSUB 468
 266 IF A$="N" THEN 396
 267 IF (N=1)*(GJ>0) THEN 273
 268 IF (N=2)*(CL>0) THEN 273
 269 Y=FNA(2):IF Y=1 THEN PRINT "You got him!": GOTO 271
 270 PRINT "Good try, BAD RESULT":NL=NL-1: GOTO 396
 271 IF N=1 THEN GJ=1:HS=HS+1: GOTO 396
 272 IF N=2 THEN CL=1:HS=HS+1: GOTO 396
 273 PRINT "It seems someone beat you to it": GOTO 396
 274 IF TR(13)=1 THEN 797
 275 PRINT "Nice hotel, this": GOTO 396
 276 GOSUB 800:PRINT M$;"is SHOT by POLICE ":NL=NL-1: GOTO 396
 277 IF (BA=0)*(ES<2000) THEN 279
 278 GOTO 275
 279 PRINT "Dr.Ratok's just hired some mercenaries":ES=ES+FNA(2000-ES): GOTO 396
 280 GOSUB 597:A=FNA(4):ON A GOTO 287,154,306
 281 K=FNA(7)
 282 IF (PR>0)*(K<3)*(ES>PR) THEN PRINT "The prision has been RECAPTURED":K=9
 283 IF K=9 THEN EL=EL-PR:PR=0: GOTO 396
 284 IF K>5 THEN PRINT "You've smuggled in some food":PS=PS+FNA(15): GOTO 396
 285 IF K<6 THEN PRINT M$;"has got evidence of torture":UF=UF+FNA(12): GOTO 396
 286 PRINT "I like these neo-gothic buildings": GOTO 396
 287 PRINT "Do you wish to attempt a rescue ?"
 288 PRINT "(1)By sea":PRINT "(2)By air":PRINT "(3) No way"
 289 GET A:IF (A<1)+(A>3) THEN 289
 290 S=FNA(4):IF A=3 THEN 66
 291 IF (A=2)*((HE=0)+(HD=1)) THEN PRINT "Arm flapping is tiring work": GOTO 396
 292 IF (A=1)*(BO=0) THEN PRINT "The SHARKS enjoyed their meal!!":NL=NL-1: GOTO 396
 293 IF (A=1)*(RP=0)*(S>2) THEN NL=NL-1: GOTO 305
 294 IF (A=1)*(S>2) THEN PRINT M$;"scaled the cliffs and rescued": GOTO 302
 295 SS=FNA(15)+5:IF (A=1)*(S=1) THEN PRINT M$;"has rescued";SS;" comrades"
 296 IF (A=1)*(S=1) THEN EL=EL+SS: GOTO 396
 297 IF (A=1)*(S>1) THEN PRINT M$;"was caught on the beach ": GOTO 301
 298 SS=FNA(2)+1:IF A=2 THEN PRINT SS;" lieutenants have been rescued":NL=NL+SS
 299 S=FNA(7):IF S>5 THEN PRINT "Your helicopter was damaged":HD=1
 300 GOTO 396
 301 PRINT "making sand castles":NL=NL-1: GOTO 396
 302 SS=FNA(15)+5:PRINT "";SS;" comrades":EL=EL+SS:M=FNA(2)
 303 IF M=1 THEN PRINT "but the FOOL left the ROPE behind":RP=RP-1
 304 GOTO 396
 305 PRINT M$;"fell scaling the cliffs": GOTO 396
 306 S=GA:EN$=" Guards":GOSUB 466
 307 IF A$="N" THEN 396
 308 LO=PR:N=4:LT$=" prison":RS=1:M=1:IF TR(2)=1 THEN T=2
 309 IF TR(4)=1 THEN T=4
 310 IF TR(6)=1 THEN T=6
 311 R=FNA(400)+800:GOSUB 398:IF FA=1 THEN FA=0: GOTO 396
 312 IF AC=2 THEN GA=GA-S: GOTO 396
 313 IF AC=1 THEN PR=Z:EL=EL+R: GOTO 396
 314 IF AC=3 THEN GA=GA-S: GOTO 396
 315 IF AC=4 THEN Y=FNA(3): GOTO 320
 316 IF AC=5 THEN Y=FNA(2):M=M*S
 317 IF Y=1 THEN PRINT "We don't take bribes from plebs!":NL=NL-1: GOTO 396
 318 IF Y=2 THEN PRINT "O.K.I'll deliver the cake(with file) for";M;" dollars"
 319 IF Y=2 THEN MY=MY-M:NL=NL+J: GOTO 396
 320 IF (Y=1)*(LL=0) THEN PRINT "Lt.Lapidus is now your guest":LL=1:HS=HS+1:Y=5
 321 IF Y=5 THEN 396
 322 IF Y=2 THEN PRINT M$;"BUNGLED it":NL=NL-1: GOTO 396
 323 PRINT "There was no-one worth kidnapping": GOTO 396
 324 GOSUB 575:A=FNA(5):ON A GOTO 325,326,337,336: GOTO 197
 325 LO$="The church": GOTO 161
 326 PRINT D$(FNA(2));" tells you that an ambassador is COMING";
 327 PRINT " how about kidnapping HIM ?"
 328 GOSUB 468
 329 IF A$="N" THEN 396
 330 S=FNA(5):PRINT "You've grabbed the ";AM$(S);" ambassador"
 331 IF S=5 THEN PRINT "That was NOT a smart move":UF=UF-18: GOTO 396
 332 IF S=3 THEN PRINT "What are you trying for, EXCOMMUNICATION":PS=PS-18: GOTO 396
 333 PRINT "How many dollars will you ask for":GOSUB 471:INPUT M
 334 J=FNA(500)+500:IF M>S*J THEN PRINT "It seems you can KEEP HIM": GOTO 396
 335 PRINT "It's a DEAL!!":MY=MY+M: GOTO 396
 336 PRINT "Alright who stole the poor box ?!":PS=PS-FNA(14): GOTO 396
 337 PRINT M$;"gets a rundown of assets": GOTO 784
 338 GOSUB 722:A=FNA(5):ON A GOTO 345,356,361,377
 339 K=FNA(7)
 340 IF (BT>0)*(K<3) THEN PRINT "The barracks have been RECAPTURED":K=9: GOTO 396
 341 IF K=9 THEN EL=EL-BT:BT=0: GOTO 396
 342 IF K>5 THEN PRINT "You've liberated some money":MY=MY+FNA(100): GOTO 396
 343 IF (K=1)*(JP=0) THEN PRINT M$;"has found an army jeep":JP=1: GOTO 396
 344 PRINT M$;"is asked if he'd like to JOINUP": GOTO 396
 345 G=FNA(13):IF TR(G)=1 THEN 348
 346 IF MV-TN(G)<20 THEN 345
 347 PRINT "No.";PT(G);" guard tower has been rebuilt":TR(G)=1: GOTO 396
 348 GOSUB 613:PRINT "No.";PT(G);" guard tower is without ground";
 349 PRINT " cover. Do fancy blowing it up"
 350 GOSUB 468
 351 IF A$="N" THEN PRINT "CHICKEN!!!": GOTO 396
 352 IF DT<1 THEN PRINT "What with ? A BIKE PUMP!": GOTO 396
 353 S=FNA(2):Z=FNA(20)+B:IF S=1 THEN PRINT "The butterfingered IDIOTS have BLOWN"
 354 IF S=1 THEN PRINT "THEMSELVES UP":EL=EL-FNA(10)+10:DT=DT-1: GOTO 396
 355 PRINT "That's what I call a BANG!":TR(G)=0:TN(G)=MV:DT=DT-1:PL=PL-Z: GOTO 396
 356 PRINT M$;"has been captured and is being INTERRORGATED"
 357 PRINT "He has given the adress of a house":S=FNA(30):IF SH(S)=1 THEN 359
 358 PRINT "It belongs to the PRESIDENTS MISTRESS":EL=EL-1: GOTO 396
 359 J=FNA(20):PRINT J;" of your men are CAUGHT there":EL=EL-(J+1)
 360 SH(S)=0:NS=NS-1: GOTO 396
 361 IF ES<200 THEN ES=200
 362 S=ES:EN$="Soldiers":GOSUB 466
 363 IF A$="N" THEN 396
 364 B=2: FOR A=1 TO 4:IF TR(A)=1 THEN B=A
 365 NEXT A
 366 LO=BR:N=4:LT$=" Barracks":RS=1:M=FNA(1000):T=B
 367 GOSUB 398:IF (AC=1)*(W<4)*(PR=0) THEN FA=1
 368 IF FA=1 THEN PRINT "BAD LUCK":FA=0: GOTO 396
 369 IF AC=1 THEN BT=Z:BZ=1:PRINT "You now have a BAZOOKA!": GOTO 396
 370 IF AC=2 THEN ES=ES-S: GOTO 396
 371 IF AC=3 THEN ES=ES-S: GOTO 396
 372 IF AC=4 THEN Y=FNA(3): GOTO 374
 373 PRINT "You can't match the DOCS pay": GOTO 396
 374 IF (Y=3)*(GJ=0) THEN PRINT "Gen.Jung is now your guest":GJ=1:HS=HS+1: GOTO 396
 375 IF Y<3 THEN PRINT M$;"BUNGLED it":NL=NL-1: GOTO 396
 376 PRINT ME$;"captured a crate of beer": GOTO 396
 377 PRINT M$;"sees a MAP":MP=1: FOR A=0 TO 900:NEXT A: GOTO 472
 378 GOSUB 539:S=FNA(2):ONS GOTO 379,383
 379 PRINT M$;"sees a cuban advisor.":S=FNA(4)
 380 IF (S=1)+(S=2) THEN PRINT ME$;"CAPTURED him":UF=UF+FNA(14): GOTO 396
 381 IF S=3 THEN PRINT M$;"is captured":NL=NL-1: GOTO 396
 382 PRINT "How EMBARASSING he's a cigar salesman": GOTO 396
 383 S=400:EN$=" Soldiers":GOSUB 466
 384 IF TR(5)=1 THEN T=5
 385 IF TR(3)=1 THEN T=3
 386 IF A$="N" THEN 396
 387 N=8:LT$=" Palace":RS=1
 388 GOSUB 398:IF A=1 THEN 392
 389 IF (AC=1)*(BZ=0) THEN PRINT ME$;"been WIPED OUT": GOTO 392
 390 IF AC=1 THEN 744
 391 GOTO 393
 392 EL=EL-Z: GOTO 396
 393 IF (AC=2)+(AC=3) THEN ES=ES-S: GOTO 396
 394 IF AC=4 THEN PRINT "You must be JOKING!!": GOTO 396
 395 IF AC=5 THEN PRINT "You couldn't pay our bar bill!": GOTO 396
 396 IF A$="N" THEN A$="Q": GOTO 66
 397 GOTO 2000
 398 IF LO>0 THEN PRINT "IDIOT!!!You've already liberated the";LT$: GOTO 396
 399 PRINT "           pppppppppppppppppppppp ":L=0
 400 PRINT "           p                    p "
 401 PRINT "           p       ACTION       p "
 402 PRINT "           p                    p "
 403 PRINT "           pppppppppppppppppppppp "
 404 PRINT "(1)Capture":PRINT " (2)Raid"
 405 PRINT "(3)Assassinate":PRINT " (4)Kidnap"
 406 PRINT " (5)Offer bribes":PRINT :GOSUB 471
 407 INPUT AC:FA=0
 408 IF (AC=1)+(AC=2) THEN 410
 409 GOTO 418
 410 INPUT "How many men will you send ? ";Z:Y=Z*W:IF Z<=0 THEN 802
 411 U=S*FNA(2)+2:IF Z>EL THEN PRINT "You're not THAT popular!": GOTO 408
 412 IF ((AC=1)+(AC=2))*(Y<U) THEN 415
 413 K=FNA(6):IF ((AC=1)+(AC=2))*(TR(T)=1)*(K>2) THEN 415
 414 GOTO 416
 415 PRINT "Your attempt FAILED":EL=EL-Z/W:NL=NL-1:FA=1:RETURN
 416 IF AC=2 THEN PRINT "You have killed";S;EN$:RETURN
 417 IF AC=1 THEN PRINT "You have taken the";LT$:RETURN
 418 IF AC=3 THEN Z=INT(FNA(30)/W):S=INT(FNA(20)*W):PRINT ME$;"killed";S;
 419 IF AC=3 THEN PRINT EN$;" and lost";Z:EL=EL-Z: GOTO 396
 420 IF (AC=4)*(RS=0) THEN PRINT "NO RANSOM is paid for ";EN$:RETURN
 421 IF AC=4 THEN RETURN
 422 IF (AC=5)*(MY>M*S) THEN RETURN
 423 IF AC=5 THEN PRINT "You HAVEN'T got MONEY for bribes!!": GOTO 396
 424 PRINT "Dr.Ratok is broadcasting one of his 6   hour speaches about YOU.";
 425 PRINT "The people blameYOU for having to put up with it":RETURN
 426 DATA " John Kipinski"," Lopez"," Raoul Smith"," Gomez"
 427 DATA " stuffed owl","n old sock"," copy of the Diaz Times"," truss"
 429 DATA "Gen.Jung is about to visit the hotel"," Knives"
 430 DATA "Capt.Le Shan is about to visit the hotel"," Hand guns"
 431 DATA " Lt.Lapidus WEARS TIGHTS!!"," Rifles"
 432 DATA " Sgt.Sadoul HATES MICE!!"," Automatic weapons"
 433 DATA "Cuban","Russian","Papal","Syrian","American"
 434 PRINT M$;"meets an arms dealer with":PRINT "a catologue": FOR A=1 TO 2001:NEXT A
 435 PRINT "KHAGOSSHI GLOBAL ARMS SALES Discount for 300+guns"
 436 HA=FNA(5)+5:RI=FNA(10)+10:DY=FNA(100)+100:RO=FNA(50)+50:PRINT 
 437 PRINT "[1] ";TW$(2);HA;" each":PRINT " [2] Rifles";RI;" each"
 438 PRINT " [3] Dynamite";DY:PRINT " [4] Rope";RO;""
 439 SA$="SOLD":N$="You can't afford it(Aaaaa!!!)":IF (HE>0)+(MY<3500) THEN 442
 440 PRINT " [5] ++SPECIAL OFFER++ Ex-U.S.Army"
 441 PRINT "      Helicopter   (low milage!)"
 442 PRINT " [6] Nothing ":PRINT " Which item would you like to buy":GOSUB 471
 443 INPUT AB
 444 IF (AB=1)*(MY>=HA*300) THEN PRINT SA$;:W=2:MY=MY-HA*300: GOTO 396
 445 IF AB=1 THEN PRINT N$: GOTO 396
 446 IF (AB=2)*(MY>=RI*300) THEN PRINT SA$;:W=3:MY=MY-RI*300: GOTO 396
 447 IF AB=2 THEN PRINT N$: GOTO 396
 448 IF (AB=3)*(MY>=DY) THEN PRINT SA$;:DT=DT+1:MY=MY-DY: GOTO 396
 449 IF AB=3 THEN PRINT N$: GOTO 396
 450 IF (AB=4)*(MY>=RO) THEN PRINT SA$;:RP=RP+1:MY=MY-RO: GOTO 396
 451 IF AB=4 THEN PRINT N$: GOTO 396
 452 IF (AB=5)*(MY>=3500) THEN PRINT SA$;:HE=1:MY=MY-3500: GOTO 396
 453 IF AB=5 THEN PRINT N$: GOTO 396
 454 GOTO 66
 455 PRINT "The Black Marketeer offers:-"
 456 IF FO>0 THEN M=FNA(500):SP$="some food":GOSUB 462:IF A$="Y" THEN FO=FO-1
 457 IF RD=1 THEN M=FNA(1000):SP$="your radios":GOSUB 462:IF A$="Y" THEN RD=2
 458 IF VR=1 THEN M=FNA(1500):SP$="your videos":GOSUB 462:IF A$="Y" THEN VR=2
 459 IF JP=1 THEN M=FNA(700):SP$="your jeep":GOSUB 462:IF A$="Y" THEN JP=2
 460 IF GB=1 THEN M=FNA(2500):SP$="your GOLD BAR":GOSUB 462:IF A$="Y" THEN GB=2
 461 GOTO 396
 462 PRINT "";M;" Dollars for ";SP$
 463 PRINT "What about it ?":GOSUB 468
 464 IF A$="Y" THEN MY=MY+M:RETURN
 465 RETURN
 466 PRINT M$;"is told that there are";S
 467 PRINT EN$;" in the area. Will you take ......ACTION"
 468 GET A$:IF A$="" THEN 468
 469 IF (A$="Y")+(A$="N") THEN RETURN
 470 PRINT "You could become BORING!! Press Y or N": GOTO 468
 471 PRINT " � SELECT A NUMBER  THEN  PRESS <CR> �":RETURN
 472 PRINT "      ^       .����  CITY OF DIAZ"
 473 PRINT "     -N-     .� �  � ������������"
 474 PRINT "      �    . �  x   �Ä����ă�  �H"
 475 PRINT "          .ĉ   x   +       � �ăi"
 476 PRINT "  Ocean .ĉ     x   p    Police �l"
 477 PRINT "       .�       x Church  p���  �l"
 478 PRINT "     .ĉ Palace x   �      �    �s"
 479 PRINT "    .� �����    x   �Bank�¬�   �"
 480 PRINT "   .�   pp      p������������������"
 481 PRINT " .ĉ   �����    x  �  pp Hotel  �"
 482 PRINT ".��xxxxxxxxxxpxx�  �            �H"
 483 PRINT ".�              x  �        �����i"
 484 PRINT " .�   Barracks  p��� T.V    �Sq��l"
 485 PRINT " . y  pppppppp  x  ��ppp    �����l"
 486 PRINT "  .�            x  � Stn        �s"
 487 PRINT "   .��xxxxxxxpxx�  �     ���È  �"
 488 PRINT "    .�  Prison  x  �����}     ���"
 489 PRINT "     .�  pppp   x    ��~ Port �"
 490 PRINT "      �� p  p   �  ă���      �"
 491 PRINT "        ���ăÈ��ă    ��    ����Road"
 492 PRINT "    ��������ă�����     ��  � xxxFence"
 493 PRINT "   � �          �  �     ��  �  Tower"
 494 PRINT "  �     Ghetto      ��ă����  ���Wall":IF MP=0 THEN 501
 495 A=4465:B=4466:POKEB,1:POKEA,15:PRINT PT(5):POKEA,15:POKEB,10:PRINT PT(3)
 496 POKEB,15:POKEA,15:PRINT PT(4):POKEB,18:POKEA,15:PRINT PT(6):POKEB,21
 497 POKEA,15:PRINT PT(8):POKEB,10:POKEA,1:PRINT PT(1):POKEA,4:POKEB,15
 498 PRINT PT(2):POKEA,4:POKEB,21:PRINT PT(7):POKEA,27:POKEB,3:PRINT PT(9)
 499 POKEA,27:POKEB,7:PRINT PT(10):POKEA,31:POKEB,9:PRINT PT(11):POKEA,30
 500 POKEB,16:PRINT PT(12):POKEA,22:POKEB,16:PRINT PT(13):MP=0: GOTO 396
 501 RESTORE: FOR JK=0 TO 71:READ TV$:NEXT JK: FOR JK=1 TO 13:READ VV:I(JK)=VV:NEXT JK
 502 DATA 402,605,416,616,56,736,845,856,148,308,392,671,663
 503 FOR A=1 TO 13:IF TR(A)=0 THEN POKEX+I(A),107
 504 NEXT A: GOTO 396
 505 PRINT "    ��              ��"
 506 PRINT "    ��           ��������w"
 507 PRINT "       �����w    �Hotel  pw"
 508 PRINT "�����������������  DIAZ  ������w"
 509 PRINT "��������vvvvvvvv�        ����� pw����"
 510 PRINT "����������������� ���vvv ��vvv�� ��� w"
 511 PRINT "��������������vv� �����v ���vv� �vvv p"
 512 PRINT "�               � ������ �    �  �vv p"
 513 PRINT "�       ��������� ������ �    �  ��v p"
 514 PRINT "�               �        �           p"
 515 PRINT "����v��vvvvvvvvvv vvvppp ���vvvvvvvvwv"
 516 PRINT "���p pp������  ����������   ��      pw"
 517 PRINT "��ìì�������������������������������"
 518 FOR A=1 TO 400:NEXT A:RETURN
 519 PRINT "                            �H�H灁�"
 520 PRINT "                              p"
 521 PRINT "                 ��         �H�H�"
 522 PRINT "                 �            p"
 523 PRINT "    pw        �����vpppw      p"
 524 PRINT "    ��������������������w     p"
 525 PRINT "  ���  TV-DIAZ-RADIO   �p     p"
 526 PRINT "  ����������������������p     p"
 527 PRINT "  ���������������������vpppp  p"
 528 PRINT "  ��ssssssssssssssssssss  ��������"
 529 PRINT "  ���  ��������������     �     �"
 530 PRINT "  ��                �      � ����"
 531 PRINT "  ��   ��������� �  � pppppp    �"
 532 PRINT "  �����������������  ��������   �"
 533 PRINT "  ��  vvv��������t�    � �� �   �"
 534 PRINT "�����������      ssssssssss ������p"
 535 PRINT "  ppu   �����������         �     �"
 536 PRINT "����� �    �� ���pp �� ppp���������"
 537 PRINT "����������������ì������������������":IF TV>0 THEN POKEX+218,59
 538 FOR A=0 TO 399:NEXT A:RETURN
 539 PRINT "                    ��"
 540 PRINT "  �              ������               �"
 541 PRINT " ���vw          ��������           xu���";
 542 PRINT "�����p          ������ �          p�����";
 543 PRINT "�����u�����������      ǔ���������v    �";
 544 PRINT "����������������� ���� �����������������";
 545 PRINT "������ �������� � ���� �����������������";
 546 PRINT "������     �����  ����  �����     ������";
 547 PRINT "������          �È���È          ������";
 548 PRINT "ŃÈ ��������� �  ���� � ���������� �È�";
 549 PRINT "��������������� ��������� ��������������";
 550 PRINT "��������������ç�������������������"
 551 PRINT "           spp��          �"
 552 PRINT "         xppppppp          �"
 553 PRINT "         ������ĉ           �"
 554 PRINT "           �                 �"
 555 FOR A=1 TO 400:NEXT A:RETURN
 556 PRINT ""
 557 PRINT "      ����                ��"
 558 PRINT "     q                    ��"
 559 PRINT "     q             xpppppp��pppw"
 560 PRINT "     q        ����𕕕������"
 561 PRINT "�������� x���u������  ppp� �pp�  ���"
 562 PRINT "�������� ppp� �     � p  �  pp���"
 563 PRINT " ����  ����p� ����   �p��������������"
 564 PRINT "��������� �p�     �    ����"
 565 PRINT " � �   ��� p�����������������������"
 566 PRINT " p �������������� � �������      ���"
 567 PRINT " �  ����        ���"
 568 PRINT "ssssssssssssssssss�ssssssssssssss�s"
 569 PRINT "        p���      �              p �"
 570 PRINT "        pppp ttttt� xpp�pu       ��"
 571 PRINT "     pppppppppppppppppppu     ��w�"
 572 PRINT "     ppppppppppppppppppu   ppppppu"
 573 PRINT "�����������������������������������"
 574 FOR A=1 TO 400:NEXT A:RETURN
 575 PRINT "               �"
 576 PRINT "               �"
 577 PRINT "               �"
 578 PRINT "               �"
 579 PRINT "              xpw"
 580 PRINT "             xpppw"
 581 PRINT "             �����"
 582 PRINT "             �MMM�"
 583 PRINT "   �        ��������                �"
 584 PRINT "   �        �mmmmm �                �"
 585 PRINT "  xpw       �  �   �               xpw"
 586 PRINT " �����w     � ���  �             x�����"
 587 PRINT " �mmm p     ��   � �             p mmm�"
 588 PRINT " Ń�� u�����u  �  v��������������v ����"
 589 PRINT " ���� �mmmmm� ��� �mmmmmmmmmmmmmm� ����"
 590 PRINT " ���� Ճ��� Ńxpw�� ����  ������ � ����"
 591 PRINT " ���� ��������pqp�� �������������� ����"
 592 PRINT " ���� ��������pqp�� �������������� ����"
 593 PRINT " ���� �mmm ���pqp�� mmm ��mmmmm �� ����"
 594 PRINT "��������������������������������"
 595 PRINT "�������������     ��������������"
 596 FOR A=1 TO 400:NEXT A:RETURN
 597 PRINT "                        ��"
 598 PRINT "                      ��"
 599 PRINT "                      �p"
 600 PRINT "                    ���u��"
 601 PRINT "                    ������"
 602 PRINT "                �ő����"
 603 PRINT "      �������ő� ő����v������"
 604 PRINT "     ��������ő�Ǒ����� pw�����"
 605 PRINT "  �  �����������ő����������������    �";
 606 PRINT "  xpw ő���������ő�ő������rw�����   xpw";
 607 PRINT " ����ő���������� ��È �rpw����  ����";
 608 PRINT " MMM��-�-����������� ő�� �����������MMM";
 609 PRINT " ������������������  r��q  ���������� ��";
 610 PRINT " ��� �p�p:::::::::�  r� q  � :::::::� ��";
 611 PRINT "�����ìì����������������������������":IF PR>0 THEN POKEX+143,59
 612 FOR A=1 TO 400:NEXT A:RETURN
 613 PRINT "                           �"
 614 PRINT "                         x���vw"
 615 PRINT "                        x�����vw"
 616 PRINT "                        ����������"
 617 PRINT "                      .������������."
 618 PRINT "                         �x��p�#x�"
 619 PRINT "                         ������pp"
 620 PRINT "                         ����̑pp"
 621 PRINT "                        ssssssssss"
 622 PRINT "                         ��    �"
 623 PRINT "                         � �  � �"
 624 PRINT "                         �  ��  �"
 625 PRINT "                         �  ��  �"
 626 PRINT "                         � �  � �"
 627 PRINT "                         ��    �"
 628 PRINT "                 �����   ��    �"
 629 PRINT "                � �  �   � �  � �"
 630 PRINT "            ���������.𧧬������"
 631 PRINT "            ������  � ��ì�����ì��"
 632 PRINT "           r��  ��tttttt�t�tt�t� �q"
 633 PRINT "              ����       p���p"
 634 PRINT "������������������������������������"
 635 FOR A=1 TO 400:NEXT A:RETURN
 636 PRINT ""
 642 PRINT " ����������������xpppppw"
 643 PRINT " �      ��       �      �"
 644 PRINT " �u � u ���u �u  Ő������"
 645 PRINT " �      ��       �      �"
 646 PRINT " �� u u ��uu� �  ppppppp�"
 647 PRINT " �      ��       ���������������"
 648 PRINT " �� u u ��uu�uu  � u uu� � �� u�"
 649 PRINT " �      ��      ��     �       �"
 650 PRINT " �� u u ��� u u �� � �u� � uuu �"
 651 PRINT " �      ��      ��     �       �"
 652 PRINT " �� � u ��� �� u�� ���u� uu � ��"
 653 PRINT " �      ��      ��     �       �"
 654 PRINT " �� u  u �� u  ��  �  u� u   � �"
 655 PRINT " �   ��  �   �� �   �� �   ��  �"
 656 PRINT " ����p�  ����p��� � p� � � p�  �"
 657 PRINT " �  �p�� �   p���   p���   p�  �"
 658 PRINT " �  p�p� �  �����  ���p�  ���� �"
 659 PRINT "���ìì��������������ì���������"
 660 FOR A=1 TO 400:NEXT A:RETURN
 661 PRINT "                     ��"
 662 PRINT "             ����������"
 663 PRINT "            ���������������"
 664 PRINT "�����������            p������������"
 665 PRINT "��������������   POLIS   ǧ������������"
 666 PRINT "�            �            �            �";
 667 PRINT "�� � � u u u � ��������   �� � u u u u �";
 668 PRINT "�            � p p p p �  �            �";
 669 PRINT "�� � � � u u ŧ���������� �� � � u u u �";
 670 PRINT "�            �            �            �";
 671 PRINT "�� � � � � u ���  ���� �� �� � � � u u �";
 672 PRINT "�            �    ����    �            �";
 673 PRINT "�� � � � � � �  �������   �� � � � � u �";
 674 PRINT "�            �  �� � ��   �            �";
 675 PRINT "�ppp��   ppp��  ��������  �      � �   �";
 676 PRINT "�pppp��p pppp��p��������� �     �p�p   �";
 677 PRINT "��������������������������������ìì���"
 678 PRINT "�� � �        �               � ��":IF PH>0 THEN POKEX+180,59
 679 FOR A=1 TO 400:NEXT A:RETURN
 680 PRINT "����������������������������    �������"
 681 PRINT "����������������������������    �������"
 682 PRINT "��������������������������w     �     �"
 683 PRINT "ppp   � � � � � � � � �   p     �     �"
 684 PRINT "                          p�������������";
 685 PRINT "ppp"
 686 PRINT "     �����������������������wv v v v v"
 687 PRINT "ppp  � u�  Bank de DIAZ  u� p"
 688 PRINT "  �  �����������������������p����������"
 689 PRINT "� �  vppppppppppppppppppppppppppppppppp"
 690 PRINT "  �   ������������������    ����������"
 691 PRINT "� �   ������������������    ����������"
 692 PRINT "  �            �����������"
 693 PRINT "� �   ���������� �������    ����������"
 694 PRINT "  �   �     vppp ��� ���    MMMMMMMMMMM"
 695 PRINT "  �   �      vpp � � � �"
 696 PRINT "    xp������    �� � �� �  ������"
 697 PRINT " vpppppppppppp>����� �p�p�������������"
 698 PRINT "   �-�    �-�         � �"
 699 FOR A=1 TO 400:NEXT A:RETURN
 700 PRINT "ppppppppppp           ���������������";
 701 PRINT "           ppppppppppppppppppppppppppppp"
 702 PRINT " � � � �  �::::::::::::::::::::::::::::"
 703 PRINT "          �::u����vu����v::�����픔��::"
 704 PRINT "          �::w    xw    x::�     픔�::"
 705 PRINT " � � � �  �::p����pp����p::�������픔::"
 706 PRINT "          �::::::::::::::::::::::::::::"
 707 PRINT "          �::::::::::::::::::::::::::::"
 708 PRINT "������������p�����������pmmmmmmmmmmmmmm"
 709 PRINT " SONY T.V   � Hernandez �         Cafe"
 710 PRINT "------------�  Cantina  �wwwwwwwwwwwwww"
 711 PRINT " Lopez Bros p�����������p::::::::::::::"
 712 PRINT "           Ǭ������������pppppppppppppp"
 713 PRINT " �����������            �::::::::::::::"
 714 PRINT "      ������ ���������� ��������::����:"
 715 PRINT " tttttttt �� tttttt �    ttttt �::�  �:"
 716 PRINT "  ��    � ��  ����  p    �� �  � �    �"
 717 PRINT " �������� �� ���������� �񧧧��� �    �"
 718 PRINT " ----p�p- p- p�------pp- p ���w--------"
 719 PRINT "     ���  �  ��      �� p��pppppp"
 720 PRINT "                         ��   ��"
 721 FOR A=1 TO 400:NEXT A:RETURN
 722 PRINT "      ��                        �"
 723 PRINT "   ������������������������ 픔����"
 724 PRINT " ������������������������� �w픔���"
 725 PRINT " ���������������������������  �vw�����"
 726 PRINT " ��������������������������   � vw�"
 727 PRINT " �rMMMMMMMMMMMMMMMMMMMMMM r��������� MM"
 728 PRINT " �r                       r��    r��"
 729 PRINT " �r� � � � � � v v v v v  r�Ճ�Èr��  v"
 730 PRINT " �r------------sssssssssssr���  �r��sss"
 731 PRINT " �r-------------ssssssssssr��������� ss"
 732 PRINT " �r� � � � � � � v v v v  r�����vpp�  v"
 733 PRINT " �r-------------ssssssssssr�����q ��sss"
 734 PRINT " �r--------------sssssssssr���  q ��sss"
 735 PRINT " �r� � � � � � � � v v v  r��p  q ��  v"
 736 PRINT " �r----------------ssssss ���������"
 737 PRINT "p����������� pppp�� ssss �����������"
 738 PRINT "ppp��p�������ppppp��p��ħ��������ppp�"
 739 PRINT "   �� � � � � � � � � � � � p��ppppp"
 740 PRINT "     �p�p�p�p�p�p�p�p�p�p�p  ��   ��"
 741 PRINT "      � � � � �p� � � � � �"
 742 PRINT "               �":IF BT>0 THEN POKEX+85,59
 743 FOR A=1 TO 400:NEXT A:RETURN
 744 PRINT "CONGRATULATIONS!!!!!!!!!!!"
 745 PRINT "President for life Dr.Emmanuel Ratok has resigned after";MV;
 746 PRINT "moves":PRINT "FANCY THE JOB ?": GOTO 763
 747 PRINT "FAILURE!!!!!!!!!"
 748 PRINT "After";MV;" moves you have been arrested"
 749 PRINT "having captured:-"
 750 IF (BT=0)*(PR=0)*(TV=0)*(PH=0)*(BA=0) THEN PRINT "NOTHING": GOTO 756
 751 IF BT THEN PRINT "The Barracks"
 752 IF PR THEN PRINT "The Prison"
 753 IF TV THEN PRINT "The T.V. Station"
 754 IF PH THEN PRINT "The Police Station"
 755 IF BA THEN PRINT "The Bank"
 756 PRINT "    ���                   �"
 757 PRINT "    ��                    �"
 758 PRINT "    �                     �"
 759 FOR Q=0 TO 800:NEXT Q
 760 TEMPO7:MUSIC"G1"
 761 PRINT "���������  ": FOR Q=1 TO 800:NEXT Q
 762 TEMPO6:MUSIC"C6R2C4R1C4R1C6R1#D4R1D4R1D4R1C4R1C4�B4R1C6":END
 763 A$=""
 764 B$=""
 765 Y=0
 766 PRINT A$
 767 Y=Y+1
 768 C$=LEFT$(B$,Y)
 769 X$=" �>     �> ��������� � ��� �  �   "
 770 R$="�~��"
 771 F$=" �>      �> �������� � ���  � ��� �~"
 772 PRINT A$;C$;F$
 773 TEMPO7:MUSIC"A3RG3"
 774 POKEX+486+Y,167
 775 IF Y=17 THEN 777
 776 GOTO 767
 777 PRINT A$;C$;X$;R$:USR(62)
 778 FOR A=0 TO 1000:NEXT A
 779 Y=Y+1
 780 C$=LEFT$(B$,Y)
 781 PRINT A$;C$;X$:TEMPO7:MUSIC"A0RG0"
 782 IF Y=30 THEN CLR:ENDHEAT
 783 GOTO 779
 784 IF DT>0 THEN PRINT DT;" Stick(s) of dynamite":PRINT 
 785 IF RP>0 THEN PRINT RP;" Rope(s)":PRINT 
 786 IF BO=1 THEN PRINT "A boat":PRINT 
 787 IF HE=1 THEN PRINT "An helicopter";:IF HD=1 THEN PRINT "(slightly damaged)"
 788 PRINT " ":PRINT 
 789 IF HS>0 THEN PRINT HS;" Hostage(s)":PRINT 
 790 IF GB=1 THEN PRINT " A gold bar":PRINT 
 791 IF JP=1 THEN PRINT " A jeep":PRINT 
 792 IF VR=1 THEN PRINT " Video recorders":PRINT 
 793 IF RD=1 THEN PRINT " Radios":PRINT 
 794 IF FO>0 THEN PRINT FO;" Food boxe(s)":PRINT 
 795 IF (DT)+(RP)+(BO)+(HE)+(HS)+(GV)+(JP)+(VR)+(RD) THEN 396
 796 PRINT "You're not doing very well, ARE YOU ?": GOTO 396
 797 GOSUB 800:PRINT M$;"is SHOT by the opposition":Y=FNA(2)
 798 IF Y=1 THEN PRINT "OUCH! Painful but not fatal": GOTO 396
 799 PRINT "Another martyr for the cause":NL=NL-1: GOTO 396
 800 TEMPO7: FOR A=0 TO 10:MUSIC"G1R1":NEXT A:RETURN
 801 FOR A=0 TO 5:TEMPO7:MUSIC"G1�F1�":NEXT A:RETURN
 802 PRINT "You're not that unpopular!": GOTO 408
 1000 FOR A=X TO X+999:IF PEEK(A)=74 THEN PRINT A:END
 1001 NEXT A
 2000 GET A$:IF A$="" THEN 2000
 2001 GOTO 66
