OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg meas[8];
sx q[0];
z q[1];
z q[2];
z q[3];
z q[4];
z q[5];
z q[6];
sx q[7];
sx q[1];
sx q[2];
sx q[3];
sx q[4];
sx q[5];
sx q[6];
t q[0];
t q[0];
z q[2];
t q[2];
t q[2];
z q[4];
t q[4];
t q[4];
sx q[7];
sx q[0];
t q[1];
t q[1];
t q[2];
t q[2];
t q[3];
t q[3];
t q[4];
t q[4];
t q[5];
t q[5];
t q[6];
t q[6];
z q[0];
t q[0];
t q[0];
sx q[1];
sx q[2];
sx q[3];
sx q[4];
sx q[5];
sx q[6];
z q[1];
t q[1];
t q[1];
z q[2];
t q[2];
t q[2];
z q[3];
t q[3];
t q[3];
z q[4];
t q[4];
t q[4];
z q[5];
t q[5];
t q[5];
z q[6];
t q[6];
t q[6];
cx q[6],q[7];
sx q[6];
sx q[7];
t q[6];
t q[6];
z q[6];
sx q[7];
sx q[6];
z q[6];
t q[6];
t q[6];
sx q[6];
cx q[5],q[6];
sx q[5];
z q[6];
t q[5];
t q[5];
sx q[6];
z q[5];
sx q[5];
t q[6];
t q[6];
z q[5];
t q[5];
t q[5];
sx q[6];
sx q[5];
z q[6];
t q[6];
t q[6];
cx q[4],q[5];
cx q[6],q[7];
sx q[4];
z q[5];
sx q[6];
sx q[7];
t q[4];
t q[4];
sx q[5];
t q[6];
t q[6];
z q[4];
z q[6];
sx q[7];
sx q[4];
t q[5];
t q[5];
sx q[6];
z q[4];
t q[4];
t q[4];
sx q[5];
z q[6];
t q[6];
t q[6];
sx q[4];
z q[5];
t q[5];
t q[5];
sx q[6];
cx q[3],q[4];
cx q[5],q[6];
sx q[3];
z q[4];
sx q[5];
sx q[6];
t q[3];
t q[3];
sx q[4];
t q[5];
t q[5];
z q[3];
z q[5];
sx q[6];
sx q[3];
t q[4];
t q[4];
sx q[5];
z q[3];
t q[3];
t q[3];
sx q[4];
z q[5];
t q[5];
t q[5];
sx q[3];
z q[4];
t q[4];
t q[4];
sx q[5];
cx q[2],q[3];
cx q[4],q[5];
sx q[2];
sx q[3];
sx q[4];
sx q[5];
t q[2];
t q[2];
t q[4];
t q[4];
z q[2];
t q[3];
t q[3];
z q[4];
sx q[5];
sx q[2];
sx q[3];
sx q[4];
z q[2];
t q[2];
t q[2];
z q[3];
t q[3];
t q[3];
z q[4];
t q[4];
t q[4];
sx q[2];
sx q[4];
cx q[1],q[2];
cx q[3],q[4];
sx q[1];
z q[2];
sx q[3];
sx q[4];
t q[1];
t q[1];
sx q[2];
t q[3];
t q[3];
z q[1];
z q[3];
sx q[4];
sx q[1];
t q[2];
t q[2];
sx q[3];
z q[1];
t q[1];
t q[1];
sx q[2];
z q[3];
t q[3];
t q[3];
sx q[1];
z q[2];
t q[2];
t q[2];
sx q[3];
cx q[0],q[1];
cx q[2],q[3];
sx q[0];
sx q[1];
sx q[2];
z q[3];
t q[0];
t q[0];
t q[2];
t q[2];
sx q[0];
t q[1];
t q[1];
z q[2];
sx q[1];
sx q[2];
t q[0];
t q[0];
z q[1];
t q[1];
t q[1];
z q[2];
t q[2];
t q[2];
sx q[0];
sx q[2];
z q[0];
t q[0];
t q[0];
cx q[1],q[2];
sx q[1];
sx q[2];
t q[1];
t q[1];
z q[1];
sx q[2];
sx q[1];
z q[1];
t q[1];
t q[1];
sx q[1];
cx q[0],q[1];
sx q[0];
sx q[1];
t q[0];
t q[0];
sx q[0];
sx q[1];
sx q[0];
z q[0];
