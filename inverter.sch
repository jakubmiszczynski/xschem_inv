v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -260 60 -240 {
lab=xxx}
N 60 -180 60 -150 {
lab=OUT}
N 60 -160 170 -160 {
lab=OUT}
N 60 -90 60 -70 {
lab=vss}
N -70 -160 -20 -160 {
lab=IN}
N -20 -210 20 -210 {
lab=IN}
N -20 -210 -20 -120 {
lab=IN}
N -20 -120 20 -120 {
lab=IN}
N 60 -120 60 -80 {
lab=vss}
C {nfet_01v8.sym} 40 -120 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {pfet3_01v8.sym} 40 -210 0 0 {name=M2
L=0.15
W=1
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 170 -160 0 0 {name=p3 lab=OUT
}
C {devices/ipin.sym} -70 -160 0 0 {name=p2 lab=IN}
C {devices/ipin.sym} 60 -260 0 0 {name=p1 lab=vdd
}
C {devices/ipin.sym} 60 -70 0 0 {name=p4 lab=vss
}
