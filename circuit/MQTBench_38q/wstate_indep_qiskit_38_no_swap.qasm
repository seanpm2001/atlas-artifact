OPENQASM 2.0;
include "qelib1.inc";
qreg q[38];
ry(-0.785398163397448) q[0];
ry(-0.955316618124509) q[1];
ry(-1.047197551196598) q[2];
ry(-1.107148717794090) q[3];
ry(-1.150261991510932) q[4];
ry(-1.183199640139716) q[5];
ry(-1.209429202888189) q[6];
ry(-1.230959417340775) q[7];
ry(-1.249045772398254) q[8];
ry(-1.264518957625227) q[9];
ry(-1.277953555066321) q[10];
ry(-1.289761425292083) q[11];
ry(-1.300246563816324) q[12];
ry(-1.309638915891872) q[13];
ry(-1.318116071652818) q[14];
ry(-1.325817663668032) q[15];
ry(-1.332855201964688) q[16];
ry(-1.339318962824718) q[17];
ry(-1.345282920896765) q[18];
ry(-1.350808349399437) q[19];
ry(-1.355946493719184) q[20];
ry(-1.360740587723658) q[21];
ry(-1.365227395633723) q[22];
ry(-1.369438406004566) q[23];
ry(-1.373400766945016) q[24];
ry(-1.377138026350570) q[25];
ry(-1.380670723448430) q[26];
ry(-1.384016865713303) q[27];
ry(-1.387192316515978) q[28];
ry(-1.390211112604198) q[29];
ry(-1.393085725949785) q[30];
ry(-1.395827281129208) q[31];
ry(-1.398445736895574) q[32];
ry(-1.400950038711223) q[33];
ry(-1.403348247575207) q[34];
ry(-1.405647649380270) q[35];
ry(-1.407854848184377) q[36];
x q[37];
cz q[37],q[36];
ry(1.407854848184377) q[36];
cz q[36],q[35];
ry(1.405647649380270) q[35];
cz q[35],q[34];
ry(1.403348247575207) q[34];
cz q[34],q[33];
ry(1.400950038711223) q[33];
cz q[33],q[32];
ry(1.398445736895574) q[32];
cz q[32],q[31];
ry(1.395827281129208) q[31];
cz q[31],q[30];
ry(1.393085725949785) q[30];
cz q[30],q[29];
ry(1.390211112604198) q[29];
cz q[29],q[28];
ry(1.387192316515978) q[28];
cz q[28],q[27];
ry(1.384016865713303) q[27];
cz q[27],q[26];
ry(1.380670723448430) q[26];
cz q[26],q[25];
ry(1.377138026350570) q[25];
cz q[25],q[24];
ry(1.373400766945016) q[24];
cz q[24],q[23];
ry(1.369438406004566) q[23];
cz q[23],q[22];
ry(1.365227395633723) q[22];
cz q[22],q[21];
ry(1.360740587723658) q[21];
cz q[21],q[20];
ry(1.355946493719184) q[20];
cz q[20],q[19];
ry(1.350808349399437) q[19];
cz q[19],q[18];
ry(1.345282920896765) q[18];
cz q[18],q[17];
ry(1.339318962824718) q[17];
cz q[17],q[16];
ry(1.332855201964688) q[16];
cz q[16],q[15];
ry(1.325817663668032) q[15];
cz q[15],q[14];
ry(1.318116071652818) q[14];
cz q[14],q[13];
ry(1.309638915891872) q[13];
cz q[13],q[12];
ry(1.300246563816324) q[12];
cz q[12],q[11];
ry(1.289761425292083) q[11];
cz q[11],q[10];
ry(1.277953555066321) q[10];
cz q[10],q[9];
ry(1.264518957625227) q[9];
cz q[9],q[8];
ry(1.249045772398254) q[8];
cz q[8],q[7];
ry(1.230959417340775) q[7];
cz q[7],q[6];
ry(1.209429202888189) q[6];
cz q[6],q[5];
ry(1.183199640139716) q[5];
cz q[5],q[4];
ry(1.150261991510932) q[4];
cz q[4],q[3];
ry(1.107148717794090) q[3];
cz q[3],q[2];
ry(1.047197551196598) q[2];
cz q[2],q[1];
ry(0.955316618124509) q[1];
cz q[1],q[0];
ry(0.785398163397448) q[0];
cx q[36],q[37];
cx q[35],q[36];
cx q[34],q[35];
cx q[33],q[34];
cx q[32],q[33];
cx q[31],q[32];
cx q[30],q[31];
cx q[29],q[30];
cx q[28],q[29];
cx q[27],q[28];
cx q[26],q[27];
cx q[25],q[26];
cx q[24],q[25];
cx q[23],q[24];
cx q[22],q[23];
cx q[21],q[22];
cx q[20],q[21];
cx q[19],q[20];
cx q[18],q[19];
cx q[17],q[18];
cx q[16],q[17];
cx q[15],q[16];
cx q[14],q[15];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
cx q[10],q[11];
cx q[9],q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
