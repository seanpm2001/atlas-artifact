OPENQASM 2.0;
include "qelib1.inc";
qreg q[30];
x q[1];
h q[4];
h q[5];
x q[7];
h q[10];
h q[11];
h q[12];
h q[13];
x q[15];
h q[18];
h q[19];
x q[21];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
cx q[3],q[4];
cx q[2],q[5];
cx q[9],q[10];
cx q[8],q[11];
cx q[17],q[18];
cx q[16],q[19];
cx q[23],q[24];
cx q[22],q[25];
rz(pi*-0.250000) q[4];
rz(pi*-0.250000) q[5];
rz(pi*-0.250000) q[10];
rz(pi*-0.250000) q[11];
rz(pi*-0.250000) q[18];
rz(pi*-0.250000) q[19];
rz(pi*-0.250000) q[24];
rz(pi*-0.250000) q[25];
cx q[0],q[4];
cx q[1],q[5];
cx q[6],q[10];
cx q[7],q[11];
cx q[14],q[18];
cx q[15],q[19];
cx q[20],q[24];
cx q[21],q[25];
rz(pi*0.250000) q[4];
rz(pi*0.250000) q[5];
rz(pi*0.250000) q[10];
rz(pi*0.250000) q[11];
rz(pi*0.250000) q[18];
rz(pi*0.250000) q[19];
rz(pi*0.250000) q[24];
rz(pi*0.250000) q[25];
cx q[3],q[4];
cx q[2],q[5];
cx q[9],q[10];
cx q[8],q[11];
cx q[17],q[18];
cx q[16],q[19];
cx q[23],q[24];
cx q[22],q[25];
cx q[0],q[4];
cx q[1],q[5];
cx q[6],q[10];
cx q[7],q[11];
cx q[14],q[18];
cx q[15],q[19];
cx q[20],q[24];
cx q[21],q[25];
cx q[0],q[3];
cx q[1],q[2];
cx q[6],q[9];
cx q[7],q[8];
cx q[14],q[17];
cx q[15],q[16];
cx q[20],q[23];
cx q[21],q[22];
rz(pi*-0.250000) q[3];
rz(pi*-0.250000) q[2];
rz(pi*-0.250000) q[9];
rz(pi*-0.250000) q[8];
rz(pi*-0.250000) q[17];
rz(pi*-0.250000) q[16];
rz(pi*-0.250000) q[23];
rz(pi*-0.250000) q[22];
cx q[0],q[3];
cx q[1],q[2];
cx q[6],q[9];
cx q[7],q[8];
cx q[14],q[17];
cx q[15],q[16];
cx q[20],q[23];
cx q[21],q[22];
x q[0];
cx q[3],q[5];
x q[1];
cx q[2],q[4];
x q[6];
cx q[9],q[11];
x q[7];
cx q[8],q[10];
x q[14];
cx q[17],q[19];
x q[15];
cx q[16],q[18];
x q[20];
cx q[23],q[25];
x q[21];
cx q[22],q[24];
rz(pi*0.250000) q[5];
rz(pi*0.250000) q[4];
rz(pi*0.250000) q[11];
rz(pi*0.250000) q[10];
rz(pi*0.250000) q[19];
rz(pi*0.250000) q[18];
rz(pi*0.250000) q[25];
rz(pi*0.250000) q[24];
cx q[1],q[5];
cx q[0],q[4];
cx q[7],q[11];
cx q[6],q[10];
cx q[15],q[19];
cx q[14],q[18];
cx q[21],q[25];
cx q[20],q[24];
rz(pi*-0.250000) q[5];
rz(pi*-0.250000) q[4];
rz(pi*-0.250000) q[11];
rz(pi*-0.250000) q[10];
rz(pi*-0.250000) q[19];
rz(pi*-0.250000) q[18];
rz(pi*-0.250000) q[25];
rz(pi*-0.250000) q[24];
cx q[3],q[5];
cx q[2],q[4];
cx q[9],q[11];
cx q[8],q[10];
cx q[17],q[19];
cx q[16],q[18];
cx q[23],q[25];
cx q[22],q[24];
cx q[1],q[5];
cx q[0],q[4];
cx q[7],q[11];
cx q[6],q[10];
cx q[15],q[19];
cx q[14],q[18];
cx q[21],q[25];
cx q[20],q[24];
h q[5];
cx q[1],q[3];
h q[4];
cx q[0],q[2];
h q[11];
cx q[7],q[9];
h q[10];
cx q[6],q[8];
h q[19];
cx q[15],q[17];
h q[18];
cx q[14],q[16];
h q[25];
cx q[21],q[23];
h q[24];
cx q[20],q[22];
rz(pi*0.250000) q[3];
x q[4];
rz(pi*0.250000) q[2];
cx q[11],q[13];
rz(pi*0.250000) q[9];
cx q[10],q[12];
rz(pi*0.250000) q[8];
rz(pi*0.250000) q[17];
x q[18];
rz(pi*0.250000) q[16];
cx q[25],q[27];
rz(pi*0.250000) q[23];
cx q[24],q[26];
rz(pi*0.250000) q[22];
cx q[1],q[3];
cx q[0],q[2];
rz(pi*-0.250000) q[13];
cx q[7],q[9];
rz(pi*-0.250000) q[12];
cx q[6],q[8];
cx q[15],q[17];
cx q[14],q[16];
rz(pi*-0.250000) q[27];
cx q[21],q[23];
rz(pi*-0.250000) q[26];
cx q[20],q[22];
x q[0];
cx q[5],q[13];
cx q[4],q[12];
x q[6];
x q[14];
cx q[19],q[27];
cx q[18],q[26];
x q[20];
rz(pi*0.250000) q[13];
rz(pi*0.250000) q[12];
rz(pi*0.250000) q[27];
rz(pi*0.250000) q[26];
cx q[11],q[13];
cx q[10],q[12];
cx q[25],q[27];
cx q[24],q[26];
cx q[5],q[13];
cx q[4],q[12];
cx q[19],q[27];
cx q[18],q[26];
cx q[5],q[11];
cx q[4],q[10];
cx q[19],q[25];
cx q[18],q[24];
rz(pi*-0.250000) q[11];
rz(pi*-0.250000) q[10];
rz(pi*-0.250000) q[25];
rz(pi*-0.250000) q[24];
cx q[5],q[11];
cx q[4],q[10];
cx q[19],q[25];
cx q[18],q[24];
x q[5];
cx q[11],q[12];
x q[4];
cx q[10],q[13];
x q[19];
cx q[25],q[26];
x q[18];
cx q[24],q[27];
rz(pi*0.250000) q[12];
rz(pi*0.250000) q[13];
rz(pi*0.250000) q[26];
rz(pi*0.250000) q[27];
cx q[4],q[12];
cx q[5],q[13];
cx q[18],q[26];
cx q[19],q[27];
rz(pi*-0.250000) q[12];
rz(pi*-0.250000) q[13];
rz(pi*-0.250000) q[26];
rz(pi*-0.250000) q[27];
cx q[11],q[12];
cx q[10],q[13];
cx q[25],q[26];
cx q[24],q[27];
cx q[4],q[12];
cx q[5],q[13];
cx q[18],q[26];
cx q[19],q[27];
h q[12];
cx q[4],q[11];
h q[13];
cx q[5],q[10];
h q[26];
cx q[18],q[25];
h q[27];
cx q[19],q[24];
x q[12];
rz(pi*0.250000) q[11];
rz(pi*0.250000) q[10];
cx q[26],q[28];
rz(pi*0.250000) q[25];
cx q[27],q[29];
rz(pi*0.250000) q[24];
cx q[4],q[11];
cx q[5],q[10];
rz(pi*-0.250000) q[28];
cx q[18],q[25];
rz(pi*-0.250000) q[29];
cx q[19],q[24];
x q[5];
cx q[12],q[28];
cx q[13],q[29];
x q[19];
rz(pi*0.250000) q[28];
rz(pi*0.250000) q[29];
cx q[26],q[28];
cx q[27],q[29];
cx q[12],q[28];
cx q[13],q[29];
cx q[12],q[26];
cx q[13],q[27];
rz(pi*-0.250000) q[26];
rz(pi*-0.250000) q[27];
cx q[12],q[26];
cx q[13],q[27];
x q[12];
cx q[26],q[29];
x q[13];
cx q[27],q[28];
rz(pi*0.250000) q[29];
rz(pi*0.250000) q[28];
cx q[13],q[29];
cx q[12],q[28];
rz(pi*-0.250000) q[29];
rz(pi*-0.250000) q[28];
cx q[26],q[29];
cx q[27],q[28];
cx q[13],q[29];
cx q[12],q[28];
h q[29];
cx q[13],q[26];
h q[28];
cx q[12],q[27];
rz(pi*0.250000) q[26];
rz(pi*0.250000) q[27];
cx q[13],q[26];
cx q[12],q[27];
x q[13];
