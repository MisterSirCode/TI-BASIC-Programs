Menu("Select Type","Quit",QQ,"RL Circuit",RL,"RC Circuit",RC,"V or I at Constant",AC,"Instantaneous",IC)

Lbl QQ
Stop

Lbl IC
Menu("Select Type","Quit",QQ,"ic/v at I/Vrms",IR,"ic/v at I/Vp",IP,"ic/v at Time",IT)

Lbl IR
ClrHome
Input "RMS: ",V
Input "Freq: ",F
Input "Cap/Ind: ",C
(45/360)*(1/F)→T
Goto II

Lbl IT
ClrHome
Input "Peak: ",P
Input "Freq: ",F
Input "Time: ",T
Input "Cap/Ind: ",C
P*sin(360*F*T)→V
Goto II

Lbl IP
Input "Peak: ",V
Input "Freq: ",F
Input "Cap/Ind: ",C
(90/360)*(1/F)→T
Goto II

Lbl II
C*(V/T)→O
Goto EE

Lbl RL
ClrHome
Input "Ohms: ",R
Input "Henries: ",L
L/R→T
Goto CC

Lbl RC
ClrHome
Input "Ohms: ",R
Input "Farads: ",C
R*C→T
Goto CC

Lbl CC
Menu("Solve for","Quit",QQ,"V or I at Time",AA,"Time",AB)

Lbl AA
ClrHome
Input "Initial: ",A
Input "Final: ",B
Input "Time: ",C
B+(A-B)*^(­C/T)→O
Goto EE

Lbl AB
ClrHome
Input "Initial: ",A
Input "Final: ",B
Input "Target: ",C
­T*ln((C-B)/(A-B))→O
Goto EE

Lbl AC
ClrHome
Input "Initial: ",A
Input "Final: ",B
Input "TC(1-5): ",C
B+(A-B)*^(­C)→O
Goto EE

Lbl EE
O