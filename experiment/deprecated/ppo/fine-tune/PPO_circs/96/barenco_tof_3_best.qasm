OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
h q[4];
cx q[3],q[4];
rz(pi*-0.250000) q[4];
cx q[2],q[4];
rz(pi*0.250000) q[4];
cx q[3],q[4];
rz(pi*-0.250000) q[4];
rz(pi*0.250000) q[3];
cx q[2],q[4];
rz(pi*0.250000) q[4];
cx q[2],q[3];
rz(pi*-0.250000) q[3];
cx q[2],q[3];
h q[3];
cx q[1],q[3];
rz(pi*-0.250000) q[3];
cx q[0],q[3];
rz(pi*0.250000) q[3];
cx q[1],q[3];
rz(pi*-0.250000) q[3];
cx q[0],q[3];
cx q[0],q[1];
rz(pi*0.250000) q[3];
rz(pi*-0.250000) q[1];
h q[3];
cx q[0],q[1];
cx q[3],q[4];
rz(pi*0.250000) q[4];
cx q[2],q[4];
rz(pi*-0.250000) q[4];
cx q[3],q[4];
rz(pi*0.250000) q[4];
cx q[2],q[3];
rz(pi*0.250000) q[3];
rz(pi*0.250000) q[2];
rz(pi*-0.250000) q[2];
cx q[2],q[4];
rz(pi*-0.250000) q[4];
cx q[2],q[3];
h q[4];
rz(pi*-0.250000) q[3];
h q[3];
cx q[1],q[3];
rz(pi*0.250000) q[3];
rz(pi*0.250000) q[1];
cx q[0],q[3];
rz(pi*-0.250000) q[3];
rz(pi*0.250000) q[0];
cx q[1],q[3];
rz(pi*0.250000) q[3];
cx q[0],q[3];
cx q[0],q[1];
rz(pi*-0.250000) q[3];
rz(pi*0.250000) q[1];
h q[3];
cx q[0],q[1];
rz(pi*-0.250000) q[0];
rz(pi*-0.250000) q[1];
