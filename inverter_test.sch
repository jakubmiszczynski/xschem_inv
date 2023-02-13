v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 0 330 0 {lab=out}
N -170 20 -120 20 {
lab=in}
N -170 130 -170 140 {
lab=GND}
N -170 20 -170 70 {
lab=in}
N -250 0 -120 -0 {
lab=#net1}
N -250 0 -250 80 {
lab=#net1}
C {devices/gnd.sym} -120 40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -170 140 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 250 -240 0 0 {name=models only_toplevel=false
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
"}
C {devices/code_shown.sym} 720 -250 0 0 {name=sim only_toplevel=true 
value="
.control
save all
tran 100n 5u
plot out in
.endc
"

}
C {/home/kuba/project/xschem_inv/inverter.sym} 30 20 0 0 {name=x1}
C {devices/lab_wire.sym} 260 0 0 0 {name=p3 sig_type=std_logic lab=out}
C {devices/vsource.sym} -250 110 0 0 {name=V1 value=1.8
}
C {devices/gnd.sym} -250 140 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -170 100 0 0 {name=V2 value=PULSE"(0 1.8 0 50p 50p 500n 1000n)"}
C {devices/lab_pin.sym} -150 20 0 0 {name=p1 sig_type=std_logic lab=in}
