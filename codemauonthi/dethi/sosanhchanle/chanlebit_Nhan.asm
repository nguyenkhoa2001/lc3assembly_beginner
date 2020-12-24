.orig x3000
and r4,r1,#1
brz again
and r2,r2,#0
ld r5,sohai
luu add r1,r1,r5
brn again1
add r2,r2,#1
brnzp luu
again1
and r3,r3,#0
again2 add r2,r2,r5
brn luu1
add r3,r3,#1
brnzp again2
luu1 and r0,r0,#0
add r0,r0,r3
halt
again add r1,r1,r1
add r1,r1,r1 
and r0,r0,#0
add r0,r0,r1
sohai .fill x-2
halt
.end