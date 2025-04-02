Menu("What do you need?","Quit",QQ,"Filtering",F0,"Multistage Amps",M0,"Standard",A0)

Lbl QQ
Stop

Lbl F0
ClrHome
Menu("What value?","Quit",QQ,"Critical Frequency (Fc)",F1,"Output Voltage (Vout)",F2)

Lbl F1
Input "C (Optional): ",C
Input "L (Optional): ",L
Input "R (Optional): ",R
0→T
Goto F3

Lbl F2
Input "Vin: ",V
Input "Xc (Optional): ",C
Input "Xl (Optional): ",L
1→T
Goto F3

Lbl F3
Menu("Select Type","Quit",QQ,"RC Low, CR High",F4,"LR Low, RL High",F5,"LC+LCL+CLC Low-Pass",F6,"CL+CLC+LCL High-Pass",F7)

Lbl F4
If T=0:Then
1/(2πR*C)→O
Else
C/√(R*R+C*C)*V→O
End
Goto EE

Lbl F5
If T=0:Then
1/(2π(L/R))→O
Else
L/√(R*R+L*L)*V→O
End
Goto EE

Lbl F6
If T=0:Then
1/(π√(L*C)→O
Else
V/√(2)→O
End
Goto EE

Lbl F7
If T=0:Then
1/(4π√(L*C)→O
Else
V/√(2)→O
End
Goto EE







Lbl EE
O