OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
h q[4];
cx q[4],q[3];
rz(pi*-0.250000) q[3];
cx q[2],q[3];
rz(pi*0.250000) q[3];
cx q[4],q[3];
rz(pi*-0.250000) q[3];
cx q[2],q[3];
rz(pi*0.250000) q[3];
h q[3];
cx q[1],q[3];
rz(pi*-0.250000) q[3];
cx q[0],q[3];
rz(pi*0.250000) q[3];
cx q[1],q[3];
rz(pi*-0.250000) q[3];
cx q[0],q[3];
rz(pi*0.250000) q[3];
h q[3];
rz(pi*-0.250000) q[3];
cx q[4],q[3];
rz(pi*0.250000) q[3];
cx q[2],q[3];
rz(pi*-0.250000) q[3];
cx q[4],q[3];
h q[4];
rz(pi*0.250000) q[3];
cx q[2],q[3];
h q[3];
cx q[1],q[3];
rz(pi*0.250000) q[3];
cx q[0],q[3];
rz(pi*-0.250000) q[3];
cx q[1],q[3];
rz(pi*0.250000) q[3];
cx q[0],q[3];
rz(pi*-0.250000) q[3];
h q[3];
