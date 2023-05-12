OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
x q[2];
x q[3];
x q[5];
x q[7];
x q[9];
x q[11];
x q[13];
rz(pi*0.500000) q[2];
rz(pi*0.500000) q[3];
rz(pi*0.500000) q[5];
rz(pi*0.500000) q[7];
rz(pi*0.500000) q[9];
rz(pi*0.500000) q[11];
rz(pi*0.500000) q[13];
rx1 q[2];
rx1 q[3];
rx1 q[5];
rx1 q[7];
rx1 q[9];
rx1 q[11];
rx1 q[13];
rz(pi*-0.500000) q[2];
rz(pi*-0.500000) q[3];
rz(pi*-0.500000) q[5];
rz(pi*-0.500000) q[7];
rz(pi*-0.500000) q[9];
rz(pi*-0.500000) q[11];
rz(pi*-0.500000) q[13];
cz q[4],q[3];
cz q[6],q[5];
cz q[8],q[7];
cz q[10],q[9];
cz q[12],q[11];
cz q[4],q[2];
x q[3];
x q[5];
x q[7];
x q[9];
x q[11];
x q[2];
x q[4];
rz(pi*0.500000) q[3];
rz(pi*0.500000) q[5];
rz(pi*0.500000) q[7];
rz(pi*0.500000) q[9];
rz(pi*0.500000) q[11];
rz(pi*0.500000) q[2];
rz(pi*0.500000) q[4];
rx1 q[3];
rx1 q[5];
rx1 q[7];
rx1 q[9];
rx1 q[11];
rx1 q[2];
rx1 q[4];
rz(pi*-0.500000) q[3];
rz(pi*-0.500000) q[5];
rz(pi*-0.500000) q[7];
rz(pi*-0.500000) q[9];
rz(pi*-0.500000) q[11];
rz(pi*-0.500000) q[2];
rz(pi*-0.500000) q[4];
cz q[1],q[2];
cz q[6],q[4];
x q[2];
x q[6];
x q[4];
rz(pi*0.500000) q[2];
rz(pi*0.500000) q[6];
rz(pi*0.500000) q[4];
rx1 q[2];
rx1 q[6];
rx1 q[4];
rz(pi*-0.500000) q[2];
rz(pi*-0.500000) q[6];
rz(pi*-0.500000) q[4];
rz(pi*-0.250000) q[2];
cz q[8],q[6];
cz q[3],q[4];
x q[2];
x q[8];
x q[6];
x q[4];
rz(pi*0.500000) q[2];
rz(pi*0.500000) q[8];
rz(pi*0.500000) q[6];
rz(pi*0.500000) q[4];
rx1 q[2];
rx1 q[8];
rx1 q[6];
rx1 q[4];
rz(pi*-0.500000) q[2];
rz(pi*-0.500000) q[8];
rz(pi*-0.500000) q[6];
rz(pi*-0.500000) q[4];
cz q[0],q[2];
cz q[10],q[8];
cz q[5],q[6];
rz(pi*-0.250000) q[4];
x q[2];
x q[10];
x q[8];
x q[6];
x q[4];
rz(pi*0.500000) q[2];
rz(pi*0.500000) q[10];
rz(pi*0.500000) q[8];
rz(pi*0.500000) q[6];
rz(pi*0.500000) q[4];
rx1 q[2];
rx1 q[10];
rx1 q[8];
rx1 q[6];
rx1 q[4];
rz(pi*-0.500000) q[2];
rz(pi*-0.500000) q[10];
rz(pi*-0.500000) q[8];
rz(pi*-0.500000) q[6];
rz(pi*-0.500000) q[4];
rz(pi*0.250000) q[2];
cz q[12],q[10];
cz q[7],q[8];
rz(pi*-0.250000) q[6];
x q[2];
cz q[12],q[13];
x q[10];
x q[8];
x q[6];
rz(pi*0.500000) q[2];
x q[13];
rz(pi*0.500000) q[10];
rz(pi*0.500000) q[8];
rz(pi*0.500000) q[6];
rx1 q[2];
rz(pi*0.500000) q[13];
rx1 q[10];
rx1 q[8];
rx1 q[6];
rz(pi*-0.500000) q[2];
rx1 q[13];
rz(pi*-0.500000) q[10];
rz(pi*-0.500000) q[8];
rz(pi*-0.500000) q[6];
cz q[1],q[2];
rz(pi*-0.500000) q[13];
cz q[9],q[10];
rz(pi*-0.250000) q[8];
x q[2];
cz q[11],q[13];
x q[10];
x q[8];
rz(pi*0.500000) q[2];
x q[13];
rz(pi*0.500000) q[10];
rz(pi*0.500000) q[8];
rx1 q[2];
rz(pi*0.500000) q[13];
rx1 q[10];
rx1 q[8];
rz(pi*-0.500000) q[2];
rx1 q[13];
rz(pi*-0.500000) q[10];
rz(pi*-0.500000) q[8];
rz(pi*-0.250000) q[2];
rz(pi*-0.500000) q[13];
rz(pi*-0.250000) q[10];
x q[2];
rz(pi*-0.250000) q[13];
x q[10];
rz(pi*0.500000) q[2];
x q[13];
rz(pi*0.500000) q[10];
rx1 q[2];
rz(pi*0.500000) q[13];
rx1 q[10];
rz(pi*-0.500000) q[2];
rx1 q[13];
rz(pi*-0.500000) q[10];
cz q[0],q[2];
rz(pi*-0.500000) q[13];
x q[2];
rz(pi*0.500000) q[2];
rx1 q[2];
rz(pi*-0.500000) q[2];
rz(pi*0.250000) q[2];
x q[2];
rz(pi*0.500000) q[2];
rx1 q[2];
rz(pi*-0.500000) q[2];
cz q[2],q[4];
x q[4];
rz(pi*0.500000) q[4];
rx1 q[4];
rz(pi*-0.500000) q[4];
rz(pi*0.250000) q[4];
x q[4];
rz(pi*0.500000) q[4];
rx1 q[4];
rz(pi*-0.500000) q[4];
cz q[3],q[4];
x q[3];
x q[4];
x q[3];
rz(pi*0.500000) q[4];
rz(pi*0.500000) q[3];
rx1 q[4];
rx1 q[3];
rz(pi*-0.500000) q[4];
rz(pi*-0.500000) q[3];
rz(pi*-0.250000) q[4];
x q[4];
rz(pi*0.500000) q[4];
rx1 q[4];
rz(pi*-0.500000) q[4];
cz q[2],q[4];
cz q[2],q[3];
x q[4];
x q[3];
rz(pi*0.500000) q[4];
rz(pi*0.500000) q[3];
rx1 q[4];
rx1 q[3];
rz(pi*-0.500000) q[4];
rz(pi*-0.500000) q[3];
rz(pi*0.250000) q[4];
x q[4];
rz(pi*0.500000) q[4];
rx1 q[4];
rz(pi*-0.500000) q[4];
cz q[4],q[6];
x q[6];
rz(pi*0.500000) q[6];
rx1 q[6];
rz(pi*-0.500000) q[6];
rz(pi*0.250000) q[6];
x q[6];
rz(pi*0.500000) q[6];
rx1 q[6];
rz(pi*-0.500000) q[6];
cz q[5],q[6];
x q[5];
x q[6];
x q[5];
rz(pi*0.500000) q[6];
rz(pi*0.500000) q[5];
rx1 q[6];
rx1 q[5];
rz(pi*-0.500000) q[6];
rz(pi*-0.500000) q[5];
rz(pi*-0.250000) q[6];
x q[6];
rz(pi*0.500000) q[6];
rx1 q[6];
rz(pi*-0.500000) q[6];
cz q[4],q[6];
rz(pi*0.500000) q[4];
x q[6];
cz q[4],q[5];
rz(pi*0.500000) q[6];
x q[5];
rx1 q[6];
rz(pi*0.500000) q[5];
rz(pi*-0.500000) q[6];
rx1 q[5];
rz(pi*0.250000) q[6];
rz(pi*-0.500000) q[5];
x q[6];
rz(pi*0.500000) q[6];
rx1 q[6];
rz(pi*-0.500000) q[6];
cz q[6],q[8];
x q[8];
rz(pi*0.500000) q[8];
rx1 q[8];
rz(pi*-0.500000) q[8];
rz(pi*0.250000) q[8];
x q[8];
rz(pi*0.500000) q[8];
rx1 q[8];
rz(pi*-0.500000) q[8];
cz q[7],q[8];
x q[7];
x q[8];
x q[7];
rz(pi*0.500000) q[8];
rz(pi*0.500000) q[7];
rx1 q[8];
rx1 q[7];
rz(pi*-0.500000) q[8];
rz(pi*-0.500000) q[7];
rz(pi*-0.250000) q[8];
x q[8];
rz(pi*0.500000) q[8];
rx1 q[8];
rz(pi*-0.500000) q[8];
cz q[6],q[8];
cz q[6],q[7];
x q[8];
x q[7];
rz(pi*0.500000) q[8];
rz(pi*0.500000) q[7];
rx1 q[8];
rx1 q[7];
rz(pi*-0.500000) q[8];
rz(pi*-0.500000) q[7];
rz(pi*0.250000) q[8];
x q[8];
rz(pi*0.500000) q[8];
rx1 q[8];
rz(pi*-0.500000) q[8];
cz q[8],q[10];
x q[10];
rz(pi*0.500000) q[10];
rx1 q[10];
rz(pi*-0.500000) q[10];
rz(pi*0.250000) q[10];
x q[10];
rz(pi*0.500000) q[10];
rx1 q[10];
rz(pi*-0.500000) q[10];
cz q[9],q[10];
x q[9];
x q[10];
x q[9];
rz(pi*0.500000) q[10];
rz(pi*0.500000) q[9];
rx1 q[10];
rx1 q[9];
rz(pi*-0.500000) q[10];
rz(pi*-0.500000) q[9];
rz(pi*-0.250000) q[10];
x q[10];
rz(pi*0.500000) q[10];
rx1 q[10];
rz(pi*-0.500000) q[10];
cz q[8],q[10];
rz(pi*0.500000) q[8];
x q[10];
cz q[8],q[9];
rz(pi*0.500000) q[10];
x q[9];
rx1 q[10];
rz(pi*0.500000) q[9];
rz(pi*-0.500000) q[10];
rx1 q[9];
rz(pi*0.250000) q[10];
rz(pi*-0.500000) q[9];
x q[10];
rz(pi*0.500000) q[10];
rx1 q[10];
rz(pi*-0.500000) q[10];
cz q[10],q[13];
x q[13];
rz(pi*0.500000) q[13];
rx1 q[13];
rz(pi*-0.500000) q[13];
rz(pi*0.250000) q[13];
x q[13];
rz(pi*0.500000) q[13];
rx1 q[13];
rz(pi*-0.500000) q[13];
cz q[11],q[13];
x q[13];
x q[11];
rz(pi*0.500000) q[13];
rz(pi*0.500000) q[11];
rx1 q[13];
rx1 q[11];
rz(pi*-0.500000) q[13];
rz(pi*-0.500000) q[11];
rz(pi*-0.250000) q[13];
x q[13];
rz(pi*0.500000) q[13];
rx1 q[13];
rz(pi*-0.500000) q[13];
cz q[10],q[13];
cz q[10],q[11];
x q[13];
x q[11];
rz(pi*0.500000) q[13];
rz(pi*0.500000) q[11];
rx1 q[13];
rx1 q[11];
rz(pi*-0.500000) q[13];
rz(pi*-0.500000) q[11];
rz(pi*0.250000) q[13];
rz(pi*-0.250000) q[11];
x q[13];
x q[11];
rz(pi*0.500000) q[13];
rz(pi*0.500000) q[11];
rx1 q[13];
rx1 q[11];
rz(pi*-0.500000) q[13];
rz(pi*-0.500000) q[11];
cz q[10],q[11];
rz(pi*0.250000) q[10];
x q[11];
rz(pi*0.500000) q[11];
rx1 q[11];
rz(pi*-0.500000) q[11];
rz(pi*0.250000) q[11];
x q[11];
rz(pi*0.500000) q[11];
rx1 q[11];
rz(pi*-0.500000) q[11];
cz q[10],q[11];
cz q[9],q[10];
x q[10];
rz(pi*0.500000) q[10];
rx1 q[10];
rz(pi*-0.500000) q[10];
rz(pi*-0.250000) q[10];
x q[10];
rz(pi*0.500000) q[10];
rx1 q[10];
rz(pi*-0.500000) q[10];
cz q[8],q[10];
x q[10];
rz(pi*0.500000) q[10];
rx1 q[10];
rz(pi*-0.500000) q[10];
rz(pi*0.250000) q[10];
x q[10];
rz(pi*0.500000) q[10];
rx1 q[10];
rz(pi*-0.500000) q[10];
cz q[9],q[10];
x q[9];
x q[10];
x q[9];
rz(pi*0.500000) q[10];
rz(pi*0.500000) q[9];
rx1 q[10];
rx1 q[9];
rz(pi*-0.500000) q[10];
rz(pi*-0.500000) q[9];
rz(pi*-0.250000) q[10];
x q[10];
rz(pi*0.500000) q[10];
rx1 q[10];
rz(pi*-0.500000) q[10];
cz q[8],q[10];
cz q[7],q[8];
x q[10];
x q[8];
rz(pi*0.500000) q[10];
rz(pi*0.500000) q[8];
rx1 q[10];
rx1 q[8];
rz(pi*-0.500000) q[10];
rz(pi*-0.500000) q[8];
rz(pi*0.250000) q[10];
rz(pi*-0.250000) q[8];
cz q[12],q[10];
x q[8];
cz q[12],q[11];
x q[10];
rz(pi*0.500000) q[8];
x q[11];
rz(pi*0.500000) q[10];
rx1 q[8];
rz(pi*0.500000) q[11];
rx1 q[10];
rz(pi*-0.500000) q[8];
rx1 q[11];
rz(pi*-0.500000) q[10];
cz q[6],q[8];
rz(pi*-0.500000) q[11];
x q[8];
rz(pi*0.500000) q[8];
rx1 q[8];
rz(pi*-0.500000) q[8];
rz(pi*0.250000) q[8];
x q[8];
rz(pi*0.500000) q[8];
rx1 q[8];
rz(pi*-0.500000) q[8];
cz q[7],q[8];
x q[7];
x q[8];
x q[7];
rz(pi*0.500000) q[8];
rz(pi*0.500000) q[7];
rx1 q[8];
rx1 q[7];
rz(pi*-0.500000) q[8];
rz(pi*-0.500000) q[7];
rz(pi*-0.250000) q[8];
x q[8];
rz(pi*0.500000) q[8];
rx1 q[8];
rz(pi*-0.500000) q[8];
cz q[6],q[8];
rz(pi*0.500000) q[6];
x q[8];
cz q[5],q[6];
rz(pi*0.500000) q[8];
x q[6];
rx1 q[8];
rz(pi*0.500000) q[6];
rz(pi*-0.500000) q[8];
rx1 q[6];
rz(pi*0.250000) q[8];
rz(pi*-0.500000) q[6];
cz q[10],q[8];
rz(pi*-0.250000) q[6];
cz q[10],q[9];
x q[8];
x q[6];
x q[9];
rz(pi*0.500000) q[8];
rz(pi*0.500000) q[6];
rz(pi*0.500000) q[9];
rx1 q[8];
rx1 q[6];
rx1 q[9];
rz(pi*-0.500000) q[8];
rz(pi*-0.500000) q[6];
rz(pi*-0.500000) q[9];
cz q[4],q[6];
x q[6];
rz(pi*0.500000) q[6];
rx1 q[6];
rz(pi*-0.500000) q[6];
rz(pi*0.250000) q[6];
x q[6];
rz(pi*0.500000) q[6];
rx1 q[6];
rz(pi*-0.500000) q[6];
cz q[5],q[6];
x q[5];
x q[6];
x q[5];
rz(pi*0.500000) q[6];
rz(pi*0.500000) q[5];
rx1 q[6];
rx1 q[5];
rz(pi*-0.500000) q[6];
rz(pi*-0.500000) q[5];
rz(pi*-0.250000) q[6];
x q[6];
rz(pi*0.500000) q[6];
rx1 q[6];
rz(pi*-0.500000) q[6];
cz q[4],q[6];
cz q[3],q[4];
x q[6];
x q[4];
rz(pi*0.500000) q[6];
rz(pi*0.500000) q[4];
rx1 q[6];
rx1 q[4];
rz(pi*-0.500000) q[6];
rz(pi*-0.500000) q[4];
rz(pi*0.250000) q[6];
rz(pi*-0.250000) q[4];
cz q[8],q[6];
x q[4];
cz q[8],q[7];
x q[6];
rz(pi*0.500000) q[4];
x q[7];
rz(pi*0.500000) q[6];
rx1 q[4];
rz(pi*0.500000) q[7];
rx1 q[6];
rz(pi*-0.500000) q[4];
rx1 q[7];
rz(pi*-0.500000) q[6];
cz q[2],q[4];
rz(pi*-0.500000) q[7];
x q[4];
rz(pi*0.500000) q[4];
rx1 q[4];
rz(pi*-0.500000) q[4];
rz(pi*0.250000) q[4];
x q[4];
rz(pi*0.500000) q[4];
rx1 q[4];
rz(pi*-0.500000) q[4];
cz q[3],q[4];
x q[3];
x q[4];
x q[3];
rz(pi*0.500000) q[4];
rz(pi*0.500000) q[3];
rx1 q[4];
rx1 q[3];
rz(pi*-0.500000) q[4];
rz(pi*-0.500000) q[3];
rz(pi*-0.250000) q[4];
x q[4];
rz(pi*0.500000) q[4];
rx1 q[4];
rz(pi*-0.500000) q[4];
cz q[2],q[4];
rz(pi*0.500000) q[2];
x q[4];
cz q[1],q[2];
rz(pi*0.500000) q[4];
x q[2];
rx1 q[4];
rz(pi*0.500000) q[2];
rz(pi*-0.500000) q[4];
rx1 q[2];
rz(pi*0.250000) q[4];
rz(pi*-0.500000) q[2];
cz q[6],q[4];
rz(pi*0.250000) q[2];
cz q[6],q[5];
x q[4];
x q[2];
x q[5];
rz(pi*0.500000) q[4];
rz(pi*0.500000) q[2];
rz(pi*0.500000) q[5];
rx1 q[4];
rx1 q[2];
rx1 q[5];
rz(pi*-0.500000) q[4];
rz(pi*-0.500000) q[2];
rz(pi*-0.500000) q[5];
cz q[0],q[2];
x q[2];
rz(pi*0.500000) q[2];
rx1 q[2];
rz(pi*-0.500000) q[2];
rz(pi*-0.250000) q[2];
x q[2];
rz(pi*0.500000) q[2];
rx1 q[2];
rz(pi*-0.500000) q[2];
cz q[1],q[2];
x q[2];
rz(pi*0.500000) q[2];
rx1 q[2];
rz(pi*-0.500000) q[2];
rz(pi*0.250000) q[2];
x q[2];
rz(pi*0.500000) q[2];
rx1 q[2];
rz(pi*-0.500000) q[2];
cz q[0],q[2];
x q[0];
x q[2];
rz(pi*0.500000) q[0];
rz(pi*0.500000) q[2];
rx1 q[0];
rx1 q[2];
rz(pi*-0.500000) q[0];
rz(pi*-0.500000) q[2];
cz q[1],q[0];
rz(pi*-0.250000) q[2];
x q[0];
cz q[4],q[2];
rz(pi*0.500000) q[0];
cz q[4],q[3];
x q[2];
rx1 q[0];
x q[3];
rz(pi*0.500000) q[2];
rz(pi*-0.500000) q[0];
rz(pi*0.500000) q[3];
rx1 q[2];
rx1 q[3];
rz(pi*-0.500000) q[2];
rz(pi*-0.500000) q[3];
