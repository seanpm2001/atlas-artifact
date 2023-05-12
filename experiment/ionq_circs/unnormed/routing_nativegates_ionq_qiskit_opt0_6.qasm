// Benchmark was created by MQT Bench on 2022-08-30
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 0.1.0
// Qiskit version: {'qiskit-terra': '0.20.0', 'qiskit-aer': '0.10.4', 'qiskit-ignis': '0.7.0', 'qiskit-ibmq-provider': '0.19.0', 'qiskit-aqua': None, 'qiskit': '0.36.0', 'qiskit-nature': '0.3.1', 'qiskit-finance': '0.3.1', 'qiskit-optimization': '0.3.2', 'qiskit-machine-learning': '0.4.0'}
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg meas[6];
ry(0.112055668962618) q[0];
ry(pi/2) q[0];
ry(-1.11542524401166) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
ry(pi/2) q[1];
ry(-1.36701052828562) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
ry(pi/2) q[2];
ry(0.665169386278817) q[3];
rxx(pi/2) q[0],q[3];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
ry(pi/2) q[3];
ry(-1.04448872307207) q[4];
rxx(pi/2) q[0],q[4];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[4];
rxx(pi/2) q[1],q[4];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[4];
rxx(pi/2) q[2],q[4];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[4];
ry(pi/2) q[4];
ry(1.12248334885202) q[5];
rxx(pi/2) q[0],q[5];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(-2.17131131980973) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[5];
rxx(pi/2) q[1],q[5];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(-1.57220678002592) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[5];
rxx(pi/2) q[2],q[5];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(2.32411409203002) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[5];
rxx(pi/2) q[3],q[5];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(0.630629614676606) q[3];
rxx(pi/2) q[0],q[3];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(-1.49550456558573) q[4];
rxx(pi/2) q[0],q[4];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[4];
rxx(pi/2) q[1],q[4];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[4];
rxx(pi/2) q[2],q[4];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
ry(-2.20279114558563) q[5];
rxx(pi/2) q[0],q[5];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(-2.28212107936286) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[5];
rxx(pi/2) q[1],q[5];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(-1.57757627586554) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[5];
rxx(pi/2) q[2],q[5];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(-0.736234333368686) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[5];
rxx(pi/2) q[3],q[5];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(0.936691338190847) q[3];
rxx(pi/2) q[0],q[3];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(2.12097565745196) q[4];
rxx(pi/2) q[0],q[4];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[4];
rxx(pi/2) q[1],q[4];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[4];
rxx(pi/2) q[2],q[4];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
ry(1.7343598737684) q[5];
rxx(pi/2) q[0],q[5];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(-1.00835337971827) q[0];
rx(-pi/2) q[5];
rxx(pi/2) q[1],q[5];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(-2.20810774017092) q[1];
rx(-pi/2) q[5];
rxx(pi/2) q[2],q[5];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(-0.270055158028081) q[2];
rx(-pi/2) q[5];
rxx(pi/2) q[3],q[5];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(-0.390409754821897) q[3];
rx(-pi/2) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(0.466322870412935) q[4];
rx(-pi/2) q[5];
ry(-0.79627295274477) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
