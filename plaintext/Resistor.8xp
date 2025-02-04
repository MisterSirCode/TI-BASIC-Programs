Menu("First Band","Quit",QQ,"Black",AA,"Brown",AB,"RED",AC,"Orange",AD,"Yellow",AE,"Green",AF,"Blue",AG,"More >",M2)
Lbl M2
Menu("First Band (2)","Quit",QQ,"Violet",AH,"Gray",AI,"White",AJ,"Need Failure Rate",M8)

Lbl QQ
Stop

Lbl AA
0→A
Goto M3
Lbl AB
1→A
Goto M3
Lbl AC
2→A
Goto M3
Lbl AD
3→A
Goto M3
Lbl AE
4→A
Goto M3
Lbl AF
5→A
Goto M3
Lbl AG
6→A
Goto M3
Lbl AH
7→A
Goto M3
Lbl AI
8→A
Goto M3
Lbl AJ
9→A
Goto M3

Lbl M3
Menu("Second Band","Quit",QQ,"Black",BA,"Brown",BB,"Red",BC,"Orange",BD,"Yellow",BE,"Green",BF,"Blue",BG,"More >",M4)
Lbl M4
Menu("Second Band (2)","Quit",QQ,"Violet",BH,"Gray",BI,"White",BJ)

Lbl BA
0→B
Goto M5
Lbl BB
1→B
Goto M5
Lbl BC
2→B
Goto M5
Lbl BD
3→B
Goto M5
Lbl BE
4→B
Goto M5
Lbl BF
5→B
Goto M5
Lbl BG
6→B
Goto M5
Lbl BH
7→B
Goto M5
Lbl BI
8→B
Goto M5
Lbl BJ
9→B
Goto M5

Lbl M5
Menu("Multiplier","Quit",QQ,"Black",CA,"Brown",CB,"Red",CC,"Orange",CD,"Yellow",CE,"Green",CF,"Blue",CG,"More >",M6)
Lbl M6
Menu("Multiplier","Quit",QQ,"Violet",CH,"Gold",CI,"Silver",CJ)

Lbl CA
1→C
Goto M7
10→C
Lbl CB
100→C
Goto M7
Lbl CC
1000→C
Goto M7
Lbl CD
10000→C
Goto M7
Lbl CE
100000→C
Goto M7
Lbl CF
1000000→C
Goto M7
Lbl CG
10000000→C
Goto M7
Lbl CH
0.1→C
Goto M7
Lbl CI
0.01→C
Goto M7

Lbl M7
Menu("Tolerance","Quit",QQ,"Black",DA,"Brown",DB,"Red",DC,"Gold",DD,"Silver",DE)

Lbl DA
20→D
Goto ZZ
Lbl DB
1→D
Goto ZZ
Lbl DC
2→D
Goto ZZ
Lbl DD
5→D
Goto ZZ
Lbl DE
10→D
Goto ZZ

Lbl M8
0→E
Menu("Failure Rate","Quit",QQ,"Blank / None",ZZ,"Black",EA,"Brown",EB,"Red",EC,"Orange",ED,"Yellow",EE,"Green",EF)

Lbl EA
5→E
Goto ZY
Lbl EB
1→E
Goto ZY
Lbl EC
0.1→E
Goto ZY
Lbl ED
0.01→E
Goto ZY
Lbl EE
0.001→E
Goto ZY
Lbl EF
0.0001→E
Goto ZY

Lbl ZZ
(10*A+B)*C→O
toString(O)+" OHMS +- "+toString(D)+"%"→Str1
Goto ZO

Lbl ZY
toString(E)+" % Failure Rate"→Str1
Goto ZO

Lbl ZO
Str1