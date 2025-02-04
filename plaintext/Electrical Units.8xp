Lbl HH
ClrHome
Menu("What unit do you need?","Quit",QQ,"Volts (Voltage)",ZV,"Amperes (Current)",ZI,"Watts (Power)",ZP,"Ohms (Resistance)",ZR,"Coulombs (Charge)",ZQ,"Joules (Work)",ZW,"Siemens (Conductance)",ZG,"Farads (Capacitance)",ZC)

Lbl QQ
Stop

Lbl ZV
Menu("Select Components","Return",HH,"Watts, Ohms (PR)",VA,"Amps, Ohms (IR)",VB,"Watts, Amps (PI)",VC,"Joules, Coulombs (WQ)",VD)

Lbl VA
Input "Watts (P): ",P
Input "Ohms (R): ",R
√(P*R)→A
"Volts: "+toString(√(P*R))→Str1
Goto EE

Lbl VB
Input "Amperes (I): ",I
Input "Ohms (R): ",R
"Volts: "+toString(I*R)→Str1
Goto EE

Lbl VC
Input "Watts (P): ",P
Input "Amperes (I): ",I
"Volts: "+toString(P/I)→Str1
Goto EE

Lbl VD
Input "Joules (W): ",W
Input "Coulombs (Q): ",Q
"Volts: "+toString(J/C)→Str1
Goto EE

Lbl ZI
Menu("Select Components","Return",HH,"Volts, Ohms (VR)",IA,"Watts, Volts (PV)",IB,"Watts, Ohms (PR)",IC,"Coulombs, Seconds (Qt)",ID)

Lbl IA
Input "Volts (V): ",V
Input "Ohms (R): ",R
"Amps: "+toString(V/R)→Str1
Goto EE

Lbl IB
Input "Watts (P): ",P
Input "Volts (V): ",V
"Amps: "+toString(P/V)→Str1
Goto EE

Lbl IC
Input "Watts (P): ",P
Input "Ohms (R): ",R
"Amps: "+toString(√(P/R))→Str1
Goto EE

Lbl ID
Input "Coulombs (Q): ",Q
Input "Seconds (t): ",T
"Amps: "+toString(Q/T)→Str1
Goto EE

Lbl ZP
Menu("Select Components","Return",HH,"Volts, Amps (VI)",PA,"Amps, Ohms (IR)",PB,"Volts, Ohms (VR)",PC,"Joules, Seconds (Wt)",PD)

Lbl PA
Input "Volts (V): ",V
Input "Amperes (I): ",I
"Watts: "+toString(V*I)→Str1
Goto EE

Lbl PB
Input "Amperes (I): ",I
Input "Ohms (R): ",R
"Watts: "+toString(I²*R)→Str1
Goto EE

Lbl PC
Input "Volts (V): ",V
Input "Ohms (R): ",R
"Watts: "+toString(V²/R)→Str1
Goto EE

Lbl PD
Input "Joules (W): ",W
Input "Seconds (t): ",T
"Watts: "+toString(W/T)→Str1
Goto EE

Lbl ZR
Menu("Select Components","Return",HH,"Volts, Amps (VI)",RA,"Volts, Watts (VP)",RB,"Watts, Amps (PI)",RC)

Lbl RA
Input "Volts (V): ",V
Input "Amperes (I): ",I
"Ohms: "+toString(V/I)→Str1
Goto EE

Lbl RB
Input "Volts (V): ",V
Input "Watts (P): ",P
"Ohms: "+toString(V²/P)→Str1
Goto EE

Lbl RC
Input "Watts (P): ",P
Input "Amperes (I): ",I
"Ohms: "+toString(P/I²)→Str1
Goto EE

Lbl ZQ
Menu("Select Components","Return",HH,"Amps, Seconds (It)",QA)

Lbl QA
Input "Amperes (I): ",I
Input "Seconds (t): ",T
"Coulombs: "+toString(I*T)→Str1
Goto EE

Lbl ZW
Menu("Select Components","Return",HH,"Watts, Seconds (Pt)",WA,"Coulombs, Volts (QV)",WB)

Lbl WA
Input "Watts (P): ",P
Input "Seconds (t): ",T
"Joules: "+toString(P*T)→Str1
Goto EE

Lbl WB
Input "Coulombs (Q): ",Q
Input "Volts (V): ",V
"Joules: "+toString(Q*V)→Str1
Goto EE

Lbl ZG
Menu("Select Components","Return",HH,"Ohms (R)",GA,"Amps, Volts (IV)",GB)

Lbl GA
Input "Ohms (R): ",R
"Siemens: "+toString(1/R)→Str1
Goto EE

Lbl GB
Input "Amps (I): ",I
Input "Volts (V): ",V
"Siemens: "+toString(I/V)→Str1
Goto EE

Lbl ZC
Menu("Select Components","Return",HH,"Coulombs, Volts (QV)",CA)

Lbl CA
Input "Coulombs (Q): ",Q
Input "Volts (V): ",V
"Farads: "+toString(Q/V)→Str1
Goto EE

Lbl EE
Str1