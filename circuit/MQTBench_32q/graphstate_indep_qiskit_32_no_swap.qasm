OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
h q[0];
h q[1];
cz q[0],q[1];
h q[2];
h q[3];
cz q[2],q[3];
h q[4];
cz q[1],q[4];
h q[5];
cz q[4],q[5];
h q[6];
h q[7];
cz q[3],q[7];
cz q[6],q[7];
h q[8];
h q[9];
cz q[8],q[9];
h q[10];
cz q[8],q[10];
h q[11];
cz q[10],q[11];
h q[12];
h q[13];
cz q[12],q[13];
h q[14];
h q[15];
cz q[9],q[15];
cz q[14],q[15];
h q[16];
h q[17];
cz q[16],q[17];
h q[18];
h q[19];
cz q[2],q[19];
cz q[18],q[19];
h q[20];
cz q[17],q[20];
h q[21];
cz q[0],q[21];
cz q[6],q[21];
h q[22];
cz q[11],q[22];
cz q[13],q[22];
h q[23];
cz q[5],q[23];
h q[24];
cz q[23],q[24];
h q[25];
cz q[12],q[25];
h q[26];
cz q[24],q[26];
h q[27];
cz q[20],q[27];
h q[28];
cz q[27],q[28];
h q[29];
cz q[16],q[29];
cz q[18],q[29];
h q[30];
cz q[14],q[30];
cz q[25],q[30];
h q[31];
cz q[26],q[31];
cz q[28],q[31];
