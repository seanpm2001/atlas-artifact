OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
h q[6];
cx q[5],q[6];
rz(pi*-0.250000) q[6];
cx q[3],q[6];
rz(pi*0.250000) q[6];
cx q[5],q[6];
cx q[3],q[6];
cx q[3],q[5];
rz(pi*-0.250000) q[5];
cx q[3],q[5];
rz(pi*0.250000) q[5];
h q[5];
cx q[4],q[5];
rz(pi*-0.250000) q[5];
cx q[2],q[5];
rz(pi*0.250000) q[5];
cx q[4],q[5];
cx q[2],q[5];
cx q[2],q[4];
rz(pi*-0.250000) q[4];
cx q[2],q[4];
rz(pi*0.250000) q[4];
h q[4];
cx q[1],q[4];
rz(pi*-0.250000) q[4];
cx q[0],q[4];
rz(pi*0.250000) q[4];
cx q[1],q[4];
rz(pi*-0.250000) q[4];
cx q[0],q[4];
cx q[0],q[1];
rz(pi*0.250000) q[4];
cx q[0],q[1];
h q[4];
cx q[4],q[5];
rz(pi*0.250000) q[5];
cx q[2],q[5];
rz(pi*-0.250000) q[5];
cx q[4],q[5];
cx q[2],q[5];
h q[5];
cx q[2],q[4];
cx q[5],q[6];
cx q[2],q[4];
rz(pi*0.250000) q[6];
cx q[3],q[6];
rz(pi*-0.250000) q[6];
cx q[5],q[6];
cx q[3],q[6];
h q[6];
cx q[3],q[5];
rz(pi*0.250000) q[5];
cx q[3],q[5];
rz(pi*-0.250000) q[5];
h q[5];
cx q[4],q[5];
rz(pi*-0.250000) q[5];
cx q[2],q[5];
rz(pi*0.250000) q[5];
cx q[4],q[5];
cx q[2],q[5];
cx q[2],q[4];
cx q[2],q[4];
h q[4];
cx q[1],q[4];
rz(pi*0.250000) q[4];
cx q[0],q[4];
rz(pi*-0.250000) q[4];
cx q[1],q[4];
rz(pi*0.250000) q[4];
cx q[0],q[4];
cx q[0],q[1];
rz(pi*-0.250000) q[4];
cx q[0],q[1];
h q[4];
cx q[4],q[5];
rz(pi*0.250000) q[5];
cx q[2],q[5];
rz(pi*-0.250000) q[5];
cx q[4],q[5];
cx q[2],q[5];
h q[5];
cx q[2],q[4];
rz(pi*0.250000) q[4];
cx q[2],q[4];
rz(pi*-0.250000) q[4];
