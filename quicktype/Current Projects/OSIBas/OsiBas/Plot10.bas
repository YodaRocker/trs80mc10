 4  POKE 512+46,11*16+9: POKE 512+47,15*16+8
 5  POKE 133,0: POKE 134,7*16: CLEAR 
 6 OUT0,7*4096,16:OUT1,"OE;OE;IN;SP1;"
 10 TA=64768:S0=32:ST=200:G=200: DIM P(2,200)
 20 XG=10000:XK=900:YG=6600:YK=400
 90 PAGE
 100  PRINT "FUNKTION AB 9000 IM SPEICHER ?"
 110  PRINT "WEITER BITTE RETURN DRUCKEN!"
 120  IF (CALLTA,0)><13 THEN 120
 130  PRINT : PRINT "EINGABE DES PAPIERFORMATES"
 140  PRINT : PRINT "DIN A3 =0": PRINT "DIN A4 =1"
 150  INPUT IN: IF IN>1 THEN 150
 160 OUT1,"PS",IN*4,"PA0,0;"
 170 PAGE: PRINT "EINGABE DER KOORDINATENECK-     PUNKTE (Xo Xmax Yo Ymax)"
 180  INPUT "Xo=";X0
 190  INPUT "Xmax=";XM
 200  INPUT "Yo=";Y0
 210  INPUT "Ymax=";YM
 220  PRINT : PRINT "EINGABE DER ECKWERTE MITTELS CURSOR"
 230 X=0:Y=0
 240  PRINT "Xo EINGEBEN"
 250  GOSUB 5000: IF IN<>13 THEN 250
 255 XL=X:YL=Y
 260  PRINT "Xmax EINGEBEN"
 270  GOSUB 5000: IF IN<>13 THEN 270
 275 XH=X
 300  PRINT "Ymax EINGEBEN"
 310  GOSUB 5000: IF IN<>13 THEN 310
 311 YH=Y
 340 CX=(XH-XL)/2000/27:CY=CX*1.5
 350 OUT1,"SI",CX,CY
 360  PRINT : INPUT "X-EINHEIT($),MAX,MIN,STEP";XE$,X1,X2,SX
 370  PRINT : INPUT "Y-EINHEIT($),MAX,MIN,STEP";YE$,Y1,Y2,SY
 371 NX=XL:NY=YL: INPUT "NULLPUNKTKORREKTUR(0/1)";NK
 372  IF NK=0 THEN 378
 373  IF X0*XM<0 THEN NX= ABS (X0)*(XH-XL)/( ABS (XM)+ ABS (X0))+XL
 374  IF Y0*YM<0 THEN NY= ABS (Y0)*(YH-YL)/( ABS (YM)+ ABS (Y0))+YL
 378 OUT1,"PA",NX,YH+100,"PD;PR30,-100,-60,0,30,100;PU;PA",NX,YH
 379 OUT1,"PD",NX,YL,"PU",XL,NY,"PD",XH,NY,"PR0,-30,100,30,-100,30,0,-3"
 380 OUT1,"PU;PA",XH,NY-200,"LB[",XE$,"]", CHR$ (3)
 390 OUT1,"PA",NX-350,YH,"LB[",YE$,"]", CHR$ (3)
 400 OUT1,"IP",XL,YL,XH,YH,"SC-32768,32767.9999,-32768,32767.9999;TL;"
 405 KL=.01:D1=2/(XM-X0):D2=2/(YM-Y0):F1=-D1*X0-1:F2=-D2*Y0-1
 410 R=YM:ST=SY:S=X0:SR=0
 415  IF NK THEN  IF X0*XM<0 THEN S=0
 420  GOSUB 6000: IF R<Y0 THEN 440
 430 OUT1,"YT;": GOTO 420
 440 R=Y0:ST=0:S=XM:SR=SX
 445  IF NK THEN  IF X0*XM<0 THEN R=0
 450  GOSUB 6000: IF S<X0 THEN 470 
 460 OUT1,"XT;": GOTO 450
 470 PAGE: PRINT "*****KOORDINATEN*****"
 480 S=0:EN=0:OUT1,"SP2;"
 490 DX=(X1-X2)/200:X=X2
 500  GOSUB 9000: PRINT X,Y
 510  GOSUB 7000:P(1,S)=CX:P(2,S)=CY: IF FE THEN  PRINT "AUSSERHALB!"
 520 X=X+DX: IF X>=X1 THEN EN=1 
 525  IF EN=0 THEN S=S+1: GOTO 500
 530  FOR R=0 TO S:OUT1,"PA",P(1,R),P(2,R),"PD;PU;": NEXT 
 540 OUT1,"IN;"
 550  FOR 
 5000 IN=CALLTA,0: IF IN=10 THEN Y=Y-ST
 5010  IF IN=26 THEN Y=Y+ST
 5020  IF IN=238 THEN X=X+ST
 5030  IF IN=236 THEN X=X-ST
 5040  IF IN=50 THEN ST=ST*2: GOTO 5000
 5050  IF IN=49 THEN ST=ST/2: GOTO 5000
 5060  IF IN=48 THEN ST=S0: GOTO 5000
 5100  IF X>XG THEN X=XG
 5110  IF X<XK THEN X=XK
 5120  IF Y>YG THEN Y=YG
 5130  IF Y<YK THEN Y=YK
 5200 OUT1,"PU",X,Y,";": RETURN 
 5500 CX= INT (32767*(X*D1+F1)):CY= INT (32767*(Y*D2+F2))
 5510  IF  ABS (CX)<KL THEN CX=0
 5520  IF  ABS (CY)<KL THEN CY=0
 5530  RETURN 
 6000 X=S:Y=R:S=S-SR:R=R-ST
 6010  GOSUB 5500:OUT1,"PA",CX,CY
 6020  RETURN 
 7000  IF X>XM THEN 7100
 7010  IF X<X0 THEN 7100
 7020  IF Y>YM THEN 7100
 7030  IF Y<Y0 THEN 7100
 7040 FE=0: GOSUB 5500
 7050  RETURN 
 7100  IF X>1E30 THEN EN=1: RETURN 
 7110  PRINT "BEREICHSUEBERSCHREITUNG!!"
 7120 FE=1:Y=Y0: GOTO 5500
 9000 Y=10*5*X/(X-X*X+5)
 9100  RETURN 
 21540 A
