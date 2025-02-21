Menu("Series or Parallel?","Quit",QQ,"Series",A0,"Parallel",A1,"Ind. Reactance",XL,"Cap. Reactance",XC)

Lbl A0
1→S
Goto AA

Lbl A1
0→S
Goto AA

Lbl XL
Input "Henries: ",L
Input "Freq: ",F
toString(2π*F*L)+" Ohms"→Str1
Goto EE

Lbl XC
Input "Farads: ",C
Input "Freq: ",F
toString(1/(2π*F*C))+" Ohms"→Str1
Goto EE

Lbl AA
Menu("Select Type","Quit",QQ,"RL Circuit",RL,"RC Circuit",RC,"RLC Circuit",R0)

Lbl QQ
Stop

Lbl RL
ClrHome
Input "Ohms: ",R
Input "Henries: ",L
Input "Freq: ",F
2π*F*L→X
If S=1:Then
√(R^2+X^2)→Z
cos(R/Z)→A
"θz:"+toString(round(A,2))+" Z:"+toString(round(Z,3))→Str1
Else
√((R)^2+(X)^2)→Z
Input "Voltage: ",V
­cos((V/R)/(V/Z))→A
"θi:"+toString(round(A,2))+" Z:"+toString(round(Z,3))→Str1
End
Goto EE

Lbl RC
ClrHome
Input "Ohms: ",R
Input "Farads: ",C
Input "Freq: ",F
1/(2π*F*C)→X
If S=1:Then
√(R^2+X^2)→Z
cos(R/Z)→A
"θz:"+toString(round(A,2))+" Z:"+toString(round(Z,3))→Str1
Else
√((R)^2+(X)^2)→Z
Input "Voltage: ",V
­cos((V/R)/(V/Z))→A
"θi:"+toString(round(A,2))+" Z:"+toString(round(Z,3))→Str1
End
Goto EE

Lbl R0
ClrHome
Input "Ohms: ",R
Input "Henries: ",L
Input "Farads: ",C
Input "Freq: ",F
2π*F*L→X
1/(2π*F*C)→Y
2→T
Goto EE

Lbl EE
Str1











Lbl EE
Str1