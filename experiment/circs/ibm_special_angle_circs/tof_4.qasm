OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
t q[4];
t q[4];
sx q[4];
t q[4];
t q[4];
cx q[1],q[4];
tdg q[4];
cx q[0],q[4];
t q[4];
cx q[1],q[4];
tdg q[4];
cx q[0],q[4];
cx q[0],q[1];
tdg q[1];
cx q[0],q[1];
t q[0];
t q[1];
t q[4];
t q[4];
t q[4];
sx q[4];
t q[4];
t q[4];
t q[5];
t q[5];
sx q[5];
t q[5];
t q[5];
cx q[4],q[5];
tdg q[5];
cx q[2],q[5];
t q[5];
cx q[4],q[5];
tdg q[5];
cx q[2],q[5];
cx q[2],q[4];
tdg q[4];
cx q[2],q[4];
t q[2];
t q[4];
t q[5];
t q[5];
t q[5];
sx q[5];
t q[5];
t q[5];
t q[6];
t q[6];
sx q[6];
t q[6];
t q[6];
cx q[5],q[6];
tdg q[6];
cx q[3],q[6];
t q[6];
cx q[5],q[6];
tdg q[6];
cx q[3],q[6];
cx q[3],q[5];
tdg q[5];
cx q[3],q[5];
t q[3];
t q[5];
t q[5];
t q[5];
sx q[5];
t q[5];
t q[5];
cx q[4],q[5];
t q[5];
cx q[2],q[5];
tdg q[5];
cx q[4],q[5];
t q[5];
cx q[2],q[5];
cx q[2],q[4];
t q[4];
cx q[2],q[4];
tdg q[2];
t q[4];
sx q[4];
t q[4];
t q[4];
cx q[1],q[4];
t q[4];
cx q[0],q[4];
tdg q[4];
cx q[1],q[4];
t q[4];
cx q[0],q[4];
cx q[0],q[1];
t q[1];
cx q[0],q[1];
tdg q[0];
tdg q[1];
t q[4];
sx q[4];
t q[4];
t q[4];
t q[5];
sx q[5];
t q[5];
t q[5];
t q[6];
t q[6];
t q[6];
sx q[6];
t q[6];
t q[6];
