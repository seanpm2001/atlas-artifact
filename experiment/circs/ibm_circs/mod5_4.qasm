OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
rz(pi/2) q[4];
sx q[4];
rz(-pi/2) q[4];
cx q[3],q[4];
rz(-pi/4) q[4];
cx q[0],q[4];
rz(pi/4) q[4];
cx q[3],q[4];
rz(-pi/4) q[4];
cx q[0],q[4];
cx q[0],q[3];
rz(-pi/4) q[3];
cx q[0],q[3];
rz(pi/4) q[0];
rz(pi/4) q[3];
rz(pi/4) q[4];
cx q[3],q[4];
rz(pi/4) q[4];
cx q[2],q[4];
rz(-pi/4) q[4];
cx q[3],q[4];
rz(pi/4) q[4];
cx q[2],q[4];
cx q[2],q[3];
rz(pi/4) q[3];
cx q[2],q[3];
rz(-pi/4) q[2];
rz(-pi/4) q[3];
rz(pi/4) q[4];
sx q[4];
rz(pi/2) q[4];
cx q[3],q[4];
rz(pi/2) q[4];
sx q[4];
rz(pi/2) q[4];
cx q[2],q[4];
rz(-pi/4) q[4];
cx q[1],q[4];
rz(pi/4) q[4];
cx q[2],q[4];
rz(-pi/4) q[4];
cx q[1],q[4];
cx q[1],q[2];
rz(-pi/4) q[2];
cx q[1],q[2];
rz(pi/4) q[1];
rz(pi/4) q[2];
rz(3*pi/4) q[4];
sx q[4];
rz(pi/2) q[4];
cx q[2],q[4];
rz(pi/2) q[4];
sx q[4];
rz(pi/2) q[4];
cx q[1],q[4];
rz(pi/4) q[4];
cx q[0],q[4];
rz(-pi/4) q[4];
cx q[1],q[4];
rz(pi/4) q[4];
cx q[0],q[4];
cx q[0],q[1];
rz(pi/4) q[1];
cx q[0],q[1];
rz(-pi/4) q[0];
rz(-pi/4) q[1];
rz(pi/4) q[4];
sx q[4];
rz(pi/2) q[4];
cx q[1],q[4];
cx q[0],q[4];
