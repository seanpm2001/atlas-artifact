OPENQASM 2.0;
include "qelib1.inc";
qreg q[29];
h q[0];
h q[1];
h q[2];
u2(0,0) q[3];
h q[4];
u2(0,0) q[5];
u2(0,0) q[6];
u2(0,0) q[7];
h q[8];
u2(0,0) q[9];
h q[10];
h q[11];
u2(0,0) q[12];
u2(0,0) q[13];
h q[14];
h q[15];
u2(0,0) q[16];
u2(0,0) q[17];
h q[18];
h q[19];
u2(0,0) q[20];
u2(0,0) q[21];
h q[22];
u2(0,0) q[23];
h q[24];
u2(0,0) q[25];
h q[26];
h q[27];
u2(-3.141592653589793,-3.141592653589793) q[28];
cx q[0],q[28];
h q[0];
cx q[1],q[28];
h q[1];
cx q[2],q[28];
h q[2];
cx q[3],q[28];
u2(-3.141592653589793,-3.141592653589793) q[3];
cx q[4],q[28];
h q[4];
cx q[5],q[28];
u2(-3.141592653589793,-3.141592653589793) q[5];
cx q[6],q[28];
u2(-3.141592653589793,-3.141592653589793) q[6];
cx q[7],q[28];
u2(-3.141592653589793,-3.141592653589793) q[7];
cx q[8],q[28];
h q[8];
cx q[9],q[28];
cx q[10],q[28];
h q[10];
cx q[11],q[28];
h q[11];
cx q[12],q[28];
u2(-3.141592653589793,-3.141592653589793) q[12];
cx q[13],q[28];
u2(-3.141592653589793,-3.141592653589793) q[13];
cx q[14],q[28];
h q[14];
cx q[15],q[28];
h q[15];
cx q[16],q[28];
u2(-3.141592653589793,-3.141592653589793) q[16];
cx q[17],q[28];
u2(-3.141592653589793,-3.141592653589793) q[17];
cx q[18],q[28];
h q[18];
cx q[19],q[28];
h q[19];
cx q[20],q[28];
u2(-3.141592653589793,-3.141592653589793) q[20];
cx q[21],q[28];
u2(-3.141592653589793,-3.141592653589793) q[21];
cx q[22],q[28];
h q[22];
cx q[23],q[28];
u2(-3.141592653589793,-3.141592653589793) q[23];
cx q[24],q[28];
h q[24];
cx q[25],q[28];
u2(-3.141592653589793,-3.141592653589793) q[25];
cx q[26],q[28];
h q[26];
cx q[27],q[28];
h q[27];
u2(-3.141592653589793,-3.141592653589793) q[9];
