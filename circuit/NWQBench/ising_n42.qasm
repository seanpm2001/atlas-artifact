OPENQASM 2.0;
include "qelib1.inc";
qreg q[42];
creg c[42];
creg meas[42];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
h q[30];
h q[31];
h q[32];
h q[33];
h q[34];
h q[35];
h q[36];
h q[37];
h q[38];
h q[39];
h q[40];
h q[41];
rz(0.8630933) q[0];
rz(-0.8630933) q[1];
rz(-0.8630933) q[1];
cx q[0],q[1];
rz(0.8630933) q[1];
cx q[0],q[1];
rz(-1.1169214) q[2];
rz(1.1169214) q[3];
rz(1.1169214) q[3];
cx q[2],q[3];
rz(-1.1169214) q[3];
cx q[2],q[3];
rz(-0.91111811) q[4];
rz(0.91111811) q[5];
rz(0.91111811) q[5];
cx q[4],q[5];
rz(-0.91111811) q[5];
cx q[4],q[5];
rz(-1.1587232) q[6];
rz(1.1587232) q[7];
rz(1.1587232) q[7];
cx q[6],q[7];
rz(-1.1587232) q[7];
cx q[6],q[7];
rz(0.72339072) q[8];
rz(-0.72339072) q[9];
rz(-0.72339072) q[9];
cx q[8],q[9];
rz(0.72339072) q[9];
cx q[8],q[9];
rz(1.9546081) q[10];
rz(-1.9546081) q[11];
rz(-1.9546081) q[11];
cx q[10],q[11];
rz(1.9546081) q[11];
cx q[10],q[11];
rz(-0.36618039) q[12];
rz(0.36618039) q[13];
rz(0.36618039) q[13];
cx q[12],q[13];
rz(-0.36618039) q[13];
cx q[12],q[13];
rz(1.8754904) q[14];
rz(-1.8754904) q[15];
rz(-1.8754904) q[15];
cx q[14],q[15];
rz(1.8754904) q[15];
cx q[14],q[15];
rz(-0.011943041) q[16];
rz(0.011943041) q[17];
rz(0.011943041) q[17];
cx q[16],q[17];
rz(-0.011943041) q[17];
cx q[16],q[17];
rz(0.12756422) q[18];
rz(-0.12756422) q[19];
rz(-0.12756422) q[19];
cx q[18],q[19];
rz(0.12756422) q[19];
cx q[18],q[19];
rz(-0.88391875) q[20];
rz(0.88391875) q[21];
rz(0.88391875) q[21];
cx q[20],q[21];
rz(-0.88391875) q[21];
cx q[20],q[21];
rz(0.80376835) q[22];
rz(-0.80376835) q[23];
rz(-0.80376835) q[23];
cx q[22],q[23];
rz(0.80376835) q[23];
cx q[22],q[23];
rz(1.6845551) q[24];
rz(-1.6845551) q[25];
rz(-1.6845551) q[25];
cx q[24],q[25];
rz(1.6845551) q[25];
cx q[24],q[25];
rz(-1.2572348) q[26];
rz(1.2572348) q[27];
rz(1.2572348) q[27];
cx q[26],q[27];
rz(-1.2572348) q[27];
cx q[26],q[27];
rz(1.2928823) q[28];
rz(-1.2928823) q[29];
rz(-1.2928823) q[29];
cx q[28],q[29];
rz(1.2928823) q[29];
cx q[28],q[29];
rz(-1.5703962) q[30];
rz(1.5703962) q[31];
rz(1.5703962) q[31];
cx q[30],q[31];
rz(-1.5703962) q[31];
cx q[30],q[31];
rz(-1.0388736) q[32];
rz(1.0388736) q[33];
rz(1.0388736) q[33];
cx q[32],q[33];
rz(-1.0388736) q[33];
cx q[32],q[33];
rz(1.3780137) q[34];
rz(-1.3780137) q[35];
rz(-1.3780137) q[35];
cx q[34],q[35];
rz(1.3780137) q[35];
cx q[34],q[35];
rz(-0.0070144794) q[36];
rz(0.0070144794) q[37];
rz(0.0070144794) q[37];
cx q[36],q[37];
rz(-0.0070144794) q[37];
cx q[36],q[37];
rz(-1.3439775) q[38];
rz(1.3439775) q[39];
rz(1.3439775) q[39];
cx q[38],q[39];
rz(-1.3439775) q[39];
cx q[38],q[39];
rz(1.7769919) q[40];
rz(-1.7769919) q[41];
rz(-1.7769919) q[41];
cx q[40],q[41];
rz(1.7769919) q[41];
cx q[40],q[41];
rz(-0.92246519) q[1];
rz(0.92246519) q[2];
rz(0.92246519) q[2];
cx q[1],q[2];
rz(-0.92246519) q[2];
cx q[1],q[2];
rz(-1.5420291) q[3];
rz(1.5420291) q[4];
rz(1.5420291) q[4];
cx q[3],q[4];
rz(-1.5420291) q[4];
cx q[3],q[4];
rz(0.12770177) q[5];
rz(-0.12770177) q[6];
rz(-0.12770177) q[6];
cx q[5],q[6];
rz(0.12770177) q[6];
cx q[5],q[6];
rz(0.67391245) q[7];
rz(-0.67391245) q[8];
rz(-0.67391245) q[8];
cx q[7],q[8];
rz(0.67391245) q[8];
cx q[7],q[8];
rz(1.0798858) q[9];
rz(-1.0798858) q[10];
rz(-1.0798858) q[10];
cx q[9],q[10];
rz(1.0798858) q[10];
cx q[9],q[10];
rz(1.7712903) q[11];
rz(-1.7712903) q[12];
rz(-1.7712903) q[12];
cx q[11],q[12];
rz(1.7712903) q[12];
cx q[11],q[12];
rz(0.42500555) q[13];
rz(-0.42500555) q[14];
rz(-0.42500555) q[14];
cx q[13],q[14];
rz(0.42500555) q[14];
cx q[13],q[14];
rz(0.75930512) q[15];
rz(-0.75930512) q[16];
rz(-0.75930512) q[16];
cx q[15],q[16];
rz(0.75930512) q[16];
cx q[15],q[16];
rz(0.56391453) q[17];
rz(-0.56391453) q[18];
rz(-0.56391453) q[18];
cx q[17],q[18];
rz(0.56391453) q[18];
cx q[17],q[18];
rz(0.36413661) q[19];
rz(-0.36413661) q[20];
rz(-0.36413661) q[20];
cx q[19],q[20];
rz(0.36413661) q[20];
cx q[19],q[20];
rz(1.5011633) q[21];
rz(-1.5011633) q[22];
rz(-1.5011633) q[22];
cx q[21],q[22];
rz(1.5011633) q[22];
cx q[21],q[22];
rz(0.69637877) q[23];
rz(-0.69637877) q[24];
rz(-0.69637877) q[24];
cx q[23],q[24];
rz(0.69637877) q[24];
cx q[23],q[24];
rz(-0.27302102) q[25];
rz(0.27302102) q[26];
rz(0.27302102) q[26];
cx q[25],q[26];
rz(-0.27302102) q[26];
cx q[25],q[26];
rz(0.93575124) q[27];
rz(-0.93575124) q[28];
rz(-0.93575124) q[28];
cx q[27],q[28];
rz(0.93575124) q[28];
cx q[27],q[28];
rz(-0.79244696) q[29];
rz(0.79244696) q[30];
rz(0.79244696) q[30];
cx q[29],q[30];
rz(-0.79244696) q[30];
cx q[29],q[30];
rz(-0.45987014) q[31];
rz(0.45987014) q[32];
rz(0.45987014) q[32];
cx q[31],q[32];
rz(-0.45987014) q[32];
cx q[31],q[32];
rz(-0.66887293) q[33];
rz(0.66887293) q[34];
rz(0.66887293) q[34];
cx q[33],q[34];
rz(-0.66887293) q[34];
cx q[33],q[34];
rz(0.26174741) q[35];
rz(-0.26174741) q[36];
rz(-0.26174741) q[36];
cx q[35],q[36];
rz(0.26174741) q[36];
cx q[35],q[36];
rz(-0.95258407) q[37];
rz(0.95258407) q[38];
rz(0.95258407) q[38];
cx q[37],q[38];
rz(-0.95258407) q[38];
cx q[37],q[38];
rz(0.90853417) q[39];
rz(-0.90853417) q[40];
rz(-0.90853417) q[40];
cx q[39],q[40];
rz(0.90853417) q[40];
cx q[39],q[40];
h q[0];
rz(0) q[0];
h q[0];
rz(0) q[0];
h q[1];
rz(0) q[1];
h q[1];
rz(0) q[1];
h q[2];
rz(0) q[2];
h q[2];
rz(0) q[2];
h q[3];
rz(0) q[3];
h q[3];
rz(0) q[3];
h q[4];
rz(0) q[4];
h q[4];
rz(0) q[4];
h q[5];
rz(0) q[5];
h q[5];
rz(0) q[5];
h q[6];
rz(0) q[6];
h q[6];
rz(0) q[6];
h q[7];
rz(0) q[7];
h q[7];
rz(0) q[7];
h q[8];
rz(0) q[8];
h q[8];
rz(0) q[8];
h q[9];
rz(0) q[9];
h q[9];
rz(0) q[9];
h q[10];
rz(0) q[10];
h q[10];
rz(0) q[10];
h q[11];
rz(0) q[11];
h q[11];
rz(0) q[11];
h q[12];
rz(0) q[12];
h q[12];
rz(0) q[12];
h q[13];
rz(0) q[13];
h q[13];
rz(0) q[13];
h q[14];
rz(0) q[14];
h q[14];
rz(0) q[14];
h q[15];
rz(0) q[15];
h q[15];
rz(0) q[15];
h q[16];
rz(0) q[16];
h q[16];
rz(0) q[16];
h q[17];
rz(0) q[17];
h q[17];
rz(0) q[17];
h q[18];
rz(0) q[18];
h q[18];
rz(0) q[18];
h q[19];
rz(0) q[19];
h q[19];
rz(0) q[19];
h q[20];
rz(0) q[20];
h q[20];
rz(0) q[20];
h q[21];
rz(0) q[21];
h q[21];
rz(0) q[21];
h q[22];
rz(0) q[22];
h q[22];
rz(0) q[22];
h q[23];
rz(0) q[23];
h q[23];
rz(0) q[23];
h q[24];
rz(0) q[24];
h q[24];
rz(0) q[24];
h q[25];
rz(0) q[25];
h q[25];
rz(0) q[25];
h q[26];
rz(0) q[26];
h q[26];
rz(0) q[26];
h q[27];
rz(0) q[27];
h q[27];
rz(0) q[27];
h q[28];
rz(0) q[28];
h q[28];
rz(0) q[28];
h q[29];
rz(0) q[29];
h q[29];
rz(0) q[29];
h q[30];
rz(0) q[30];
h q[30];
rz(0) q[30];
h q[31];
rz(0) q[31];
h q[31];
rz(0) q[31];
h q[32];
rz(0) q[32];
h q[32];
rz(0) q[32];
h q[33];
rz(0) q[33];
h q[33];
rz(0) q[33];
h q[34];
rz(0) q[34];
h q[34];
rz(0) q[34];
h q[35];
rz(0) q[35];
h q[35];
rz(0) q[35];
h q[36];
rz(0) q[36];
h q[36];
rz(0) q[36];
h q[37];
rz(0) q[37];
h q[37];
rz(0) q[37];
h q[38];
rz(0) q[38];
h q[38];
rz(0) q[38];
h q[39];
rz(0) q[39];
h q[39];
rz(0) q[39];
h q[40];
rz(0) q[40];
h q[40];
rz(0) q[40];
h q[41];
rz(0) q[41];
h q[41];
rz(0) q[41];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28],q[29],q[30],q[31],q[32],q[33],q[34],q[35],q[36],q[37],q[38],q[39],q[40],q[41];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
measure q[8] -> meas[8];
measure q[9] -> meas[9];
measure q[10] -> meas[10];
measure q[11] -> meas[11];
measure q[12] -> meas[12];
measure q[13] -> meas[13];
measure q[14] -> meas[14];
measure q[15] -> meas[15];
measure q[16] -> meas[16];
measure q[17] -> meas[17];
measure q[18] -> meas[18];
measure q[19] -> meas[19];
measure q[20] -> meas[20];
measure q[21] -> meas[21];
measure q[22] -> meas[22];
measure q[23] -> meas[23];
measure q[24] -> meas[24];
measure q[25] -> meas[25];
measure q[26] -> meas[26];
measure q[27] -> meas[27];
measure q[28] -> meas[28];
measure q[29] -> meas[29];
measure q[30] -> meas[30];
measure q[31] -> meas[31];
measure q[32] -> meas[32];
measure q[33] -> meas[33];
measure q[34] -> meas[34];
measure q[35] -> meas[35];
measure q[36] -> meas[36];
measure q[37] -> meas[37];
measure q[38] -> meas[38];
measure q[39] -> meas[39];
measure q[40] -> meas[40];
measure q[41] -> meas[41];
