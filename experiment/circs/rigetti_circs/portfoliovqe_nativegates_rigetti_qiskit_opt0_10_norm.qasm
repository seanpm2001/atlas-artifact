OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg meas[10];
rx1 q[0];
rz(2.1162937201817) q[0];
rx1 q[0];
rz(3*pi) q[0];
rx1 q[1];
rz(4.01031738807398) q[1];
rx1 q[1];
rz(3*pi) q[1];
cz q[0],q[1];
rx1 q[2];
rz(-0.535812185298762) q[2];
rx1 q[2];
rz(3*pi) q[2];
cz q[0],q[2];
cz q[1],q[2];
rx1 q[3];
rz(4.05099396618562) q[3];
rx1 q[3];
rz(3*pi) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
rx1 q[4];
rz(6.23356204476667) q[4];
rx1 q[4];
rz(3*pi) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
rx1 q[5];
rz(-1.72257247364837) q[5];
rx1 q[5];
rz(3*pi) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
rx1 q[6];
rz(7.51479126148628) q[6];
rx1 q[6];
rz(3*pi) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
rx1 q[7];
rz(4.41284146787175) q[7];
rx1 q[7];
rz(3*pi) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
rx1 q[8];
rz(2.40361912178592) q[8];
rx1 q[8];
rz(3*pi) q[8];
cz q[0],q[8];
cz q[1],q[8];
cz q[2],q[8];
cz q[3],q[8];
cz q[4],q[8];
cz q[5],q[8];
cz q[6],q[8];
cz q[7],q[8];
rx1 q[9];
rz(-0.447967386376417) q[9];
rx1 q[9];
rz(3*pi) q[9];
cz q[0],q[9];
rx1 q[0];
rz(2.21533380776681) q[0];
rx1 q[0];
rz(3*pi) q[0];
cz q[1],q[9];
rx1 q[1];
rz(2.52912506316343) q[1];
rx1 q[1];
rz(3*pi) q[1];
cz q[0],q[1];
cz q[2],q[9];
rx1 q[2];
rz(3.02275193106316) q[2];
rx1 q[2];
rz(3*pi) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[9];
rx1 q[3];
rz(9.2267606843521) q[3];
rx1 q[3];
rz(3*pi) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[9];
rx1 q[4];
rz(3.61395669227812) q[4];
rx1 q[4];
rz(3*pi) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[9];
rx1 q[5];
rz(5.08435665836094) q[5];
rx1 q[5];
rz(3*pi) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
cz q[6],q[9];
rx1 q[6];
rz(5.92986587022516) q[6];
rx1 q[6];
rz(3*pi) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
cz q[7],q[9];
rx1 q[7];
rz(-1.43079331986468) q[7];
rx1 q[7];
rz(3*pi) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
cz q[8],q[9];
rx1 q[8];
rz(-2.90200719700183) q[8];
rx1 q[8];
rz(3*pi) q[8];
cz q[0],q[8];
cz q[1],q[8];
cz q[2],q[8];
cz q[3],q[8];
cz q[4],q[8];
cz q[5],q[8];
cz q[6],q[8];
cz q[7],q[8];
rx1 q[9];
rz(9.27682488844167) q[9];
rx1 q[9];
rz(3*pi) q[9];
cz q[0],q[9];
rx1 q[0];
rz(3.69321454370708) q[0];
rx1 q[0];
rz(3*pi) q[0];
cz q[1],q[9];
rx1 q[1];
rz(8.00778701003119) q[1];
rx1 q[1];
rz(3*pi) q[1];
cz q[0],q[1];
cz q[2],q[9];
rx1 q[2];
rz(8.11559249363684) q[2];
rx1 q[2];
rz(3*pi) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[9];
rx1 q[3];
rz(4.6574956399425) q[3];
rx1 q[3];
rz(3*pi) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[9];
rx1 q[4];
rz(2.11560241157633) q[4];
rx1 q[4];
rz(3*pi) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[9];
rx1 q[5];
rz(4.61190147196449) q[5];
rx1 q[5];
rz(3*pi) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
cz q[6],q[9];
rx1 q[6];
rz(2.84752708125637) q[6];
rx1 q[6];
rz(3*pi) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
cz q[7],q[9];
rx1 q[7];
rz(4.27364880274709) q[7];
rx1 q[7];
rz(3*pi) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
cz q[8],q[9];
rx1 q[8];
rz(7.07291867553506) q[8];
rx1 q[8];
rz(3*pi) q[8];
cz q[0],q[8];
cz q[1],q[8];
cz q[2],q[8];
cz q[3],q[8];
cz q[4],q[8];
cz q[5],q[8];
cz q[6],q[8];
cz q[7],q[8];
rx1 q[9];
rz(-0.89498854200731) q[9];
rx1 q[9];
rz(3*pi) q[9];
cz q[0],q[9];
rx1 q[0];
rz(-0.403784159098147) q[0];
rx1 q[0];
rz(3*pi) q[0];
cz q[1],q[9];
rx1 q[1];
rz(3.0135808641714) q[1];
rx1 q[1];
rz(3*pi) q[1];
cz q[2],q[9];
rx1 q[2];
rz(8.30178588331028) q[2];
rx1 q[2];
rz(3*pi) q[2];
cz q[3],q[9];
rx1 q[3];
rz(0.0882034667095533) q[3];
rx1 q[3];
rz(3*pi) q[3];
cz q[4],q[9];
rx1 q[4];
rz(8.9987433767574) q[4];
rx1 q[4];
rz(3*pi) q[4];
cz q[5],q[9];
rx1 q[5];
rz(8.66349675937639) q[5];
rx1 q[5];
rz(3*pi) q[5];
cz q[6],q[9];
rx1 q[6];
rz(7.43629777048614) q[6];
rx1 q[6];
rz(3*pi) q[6];
cz q[7],q[9];
rx1 q[7];
rz(4.17262577245798) q[7];
rx1 q[7];
rz(3*pi) q[7];
cz q[8],q[9];
rx1 q[8];
rz(5.45542517367247) q[8];
rx1 q[8];
rz(3*pi) q[8];
rx1 q[9];
rz(7.69260608394356) q[9];
rx1 q[9];
rz(3*pi) q[9];
