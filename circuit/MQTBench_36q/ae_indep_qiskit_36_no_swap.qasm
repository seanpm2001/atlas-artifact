OPENQASM 2.0;
include "qelib1.inc";
qreg q[36];
u2(0,-3.141592653589793) q[0];
u2(0,-3.141592653589793) q[1];
u2(0,-3.141592653589793) q[2];
u2(0,-3.141592653589793) q[3];
u2(0,-3.141592653589793) q[4];
u2(0,-3.141592653589793) q[5];
u2(0,-3.141592653589793) q[6];
u2(0,-3.141592653589793) q[7];
u2(0,-3.141592653589793) q[8];
u2(0,-3.141592653589793) q[9];
u2(0,-3.141592653589793) q[10];
u2(0,-3.141592653589793) q[11];
u2(0,-3.141592653589793) q[12];
u2(0,-3.141592653589793) q[13];
u2(0,-3.141592653589793) q[14];
u2(0,-3.141592653589793) q[15];
u2(0,-3.141592653589793) q[16];
u2(0,-3.141592653589793) q[17];
u2(0,-3.141592653589793) q[18];
u2(0,-3.141592653589793) q[19];
u2(0,-3.141592653589793) q[20];
u2(0,-3.141592653589793) q[21];
u2(0,-3.141592653589793) q[22];
u2(0,-3.141592653589793) q[23];
u2(0,-3.141592653589793) q[24];
u2(0,-3.141592653589793) q[25];
u2(0,-3.141592653589793) q[26];
u2(0,-3.141592653589793) q[27];
u2(0,-3.141592653589793) q[28];
u2(0,-3.141592653589793) q[29];
u2(0,-3.141592653589793) q[30];
u2(0,-3.141592653589793) q[31];
u2(0,-3.141592653589793) q[32];
u2(0,-3.141592653589793) q[33];
u2(0,-3.141592653589793) q[34];
u3(0.927295218001612,0,0) q[35];
cx q[0],q[35];
u3(-0.927295218001612,0,0) q[35];
cx q[0],q[35];
u3(0.927295218001612,0,0) q[35];
cx q[1],q[35];
u3(-1.854590436003224,0,0) q[35];
cx q[1],q[35];
u3(1.854590436003224,0,0) q[35];
cx q[2],q[35];
u3(-3.709180872006449,0,0) q[35];
cx q[2],q[35];
u3(2.574004435173138,-3.141592653589793,-3.141592653589793) q[35];
cx q[3],q[35];
u3(-7.418361744012897,0,0) q[35];
cx q[3],q[35];
u3(1.135176436833311,0,0) q[35];
cx q[4],q[35];
u3(-14.836723488025795,0,0) q[35];
cx q[4],q[35];
u3(2.270352873666622,0,0) q[35];
cx q[5],q[35];
u3(-29.673446976051590,0,0) q[35];
cx q[5],q[35];
u3(1.742479559846343,-3.141592653589793,-3.141592653589793) q[35];
cx q[6],q[35];
u3(-59.346893952103180,0,0) q[35];
cx q[6],q[35];
u3(2.798226187486902,0,0) q[35];
cx q[7],q[35];
u3(-118.693787904206360,0,0) q[35];
cx q[7],q[35];
u3(0.686732932205783,-3.141592653589793,-3.141592653589793) q[35];
cx q[8],q[35];
u3(-237.387575808412720,0,0) q[35];
cx q[8],q[35];
u3(1.373465864411566,-3.141592653589793,-3.141592653589793) q[35];
cx q[9],q[35];
u3(-474.775151616825440,0,0) q[35];
cx q[9],q[35];
u3(2.746931728823133,-3.141592653589793,-3.141592653589793) q[35];
cx q[10],q[35];
u3(-949.550303233650880,0,0) q[35];
cx q[10],q[35];
u3(0.789321849533322,0,0) q[35];
cx q[11],q[35];
u3(-1899.100606467301759,0,0) q[35];
cx q[11],q[35];
u3(1.578643699066643,0,0) q[35];
cx q[12],q[35];
u3(-3798.201212934603518,0,0) q[35];
cx q[12],q[35];
u3(3.125897909046301,-3.141592653589793,-3.141592653589793) q[35];
cx q[13],q[35];
u3(-7596.402425869207036,0,0) q[35];
cx q[13],q[35];
u3(0.031389489086986,0,0) q[35];
cx q[14],q[35];
u3(-15192.804851738414072,0,0) q[35];
cx q[14],q[35];
u3(0.062778978173971,0,0) q[35];
cx q[15],q[35];
u3(-30385.609703476828145,0,0) q[35];
cx q[15],q[35];
u3(0.125557956347942,0,0) q[35];
cx q[16],q[35];
u3(-60771.219406953656289,0,0) q[35];
cx q[16],q[35];
u3(0.251115912695884,0,0) q[35];
cx q[17],q[35];
u3(-121542.438813907312579,0,0) q[35];
cx q[17],q[35];
u3(0.502231825391769,0,0) q[35];
cx q[18],q[35];
u3(-243084.877627814625157,0,0) q[35];
cx q[18],q[35];
u3(1.004463650783538,0,0) q[35];
cx q[19],q[35];
u3(-486169.755255629250314,0,0) q[35];
cx q[19],q[35];
u3(2.008927301567076,0,0) q[35];
cx q[20],q[35];
u3(-972339.510511258500628,0,0) q[35];
cx q[20],q[35];
u3(2.265330704045435,-3.141592653589793,-3.141592653589793) q[35];
cx q[21],q[35];
u3(-1944679.021022517001256,0,0) q[35];
cx q[21],q[35];
u3(1.752523899088716,0,0) q[35];
cx q[22],q[35];
u3(-3889358.042045034002513,0,0) q[35];
cx q[22],q[35];
u3(2.778137509002155,-3.141592653589793,-3.141592653589793) q[35];
cx q[23],q[35];
u3(-7778716.084090068005025,0,0) q[35];
cx q[23],q[35];
u3(0.726910289175276,0,0) q[35];
cx q[24],q[35];
u3(-15557432.168180136010051,0,0) q[35];
cx q[24],q[35];
u3(1.453820578350552,0,0) q[35];
cx q[25],q[35];
u3(-31114864.336360272020102,0,0) q[35];
cx q[25],q[35];
u3(2.907641156701104,0,0) q[35];
cx q[26],q[35];
u3(-62229728.672720544040203,0,0) q[35];
cx q[26],q[35];
u3(0.467902993777380,-3.141592653589793,-3.141592653589793) q[35];
cx q[27],q[35];
u3(-124459457.345441088080406,0,0) q[35];
cx q[27],q[35];
u3(0.935805987554759,-3.141592653589793,-3.141592653589793) q[35];
cx q[28],q[35];
u3(-248918914.690882176160812,0,0) q[35];
cx q[28],q[35];
u3(1.871611975109518,-3.141592653589793,-3.141592653589793) q[35];
cx q[29],q[35];
u3(-497837829.381764352321625,0,0) q[35];
cx q[29],q[35];
u3(2.539961356960550,0,0) q[35];
cx q[30],q[35];
u3(-995675658.763528704643250,0,0) q[35];
cx q[30],q[35];
u3(1.203262593258486,-3.141592653589793,-3.141592653589793) q[35];
cx q[31],q[35];
u3(-1991351317.527057409286499,0,0) q[35];
cx q[31],q[35];
u3(2.406525186516973,-3.141592653589793,-3.141592653589793) q[35];
cx q[32],q[35];
u3(-3982702635.054114818572998,0,0) q[35];
cx q[32],q[35];
u3(1.470134934145642,0,0) q[35];
cx q[33],q[35];
u3(-7965405270.108229637145996,0,0) q[35];
cx q[33],q[35];
u3(2.940269868291283,0,0) q[35];
cx q[34],q[35];
u3(-15930810540.216459274291992,0,0) q[35];
cx q[34],q[35];
h q[34];
cp(-1.570796326794897) q[33],q[34];
cp(-0.785398163397448) q[32],q[34];
cp(-0.392699081698724) q[31],q[34];
cp(-0.196349540849362) q[30],q[34];
cp(-0.098174770424681) q[29],q[34];
cp(-0.049087385212341) q[28],q[34];
cp(-0.024543692606170) q[27],q[34];
cp(-0.012271846303085) q[26],q[34];
cp(-0.006135923151543) q[25],q[34];
cp(-0.003067961575771) q[24],q[34];
cp(-0.001533980787886) q[23],q[34];
cp(-0.000766990393943) q[22],q[34];
cp(-0.000383495196971) q[21],q[34];
cp(-0.000191747598486) q[20],q[34];
cp(-0.000095873799243) q[19],q[34];
cp(-0.000047936899621) q[18],q[34];
cp(-0.000023968449811) q[17],q[34];
cp(-0.000011984224905) q[16],q[34];
cp(-0.000005992112453) q[15],q[34];
cp(-0.000002996056226) q[14],q[34];
cp(-0.000001498028113) q[13],q[34];
cp(-0.000000749014057) q[12],q[34];
cp(-0.000000374507028) q[11],q[34];
cp(-0.000000187253514) q[10],q[34];
cp(-0.000000093626757) q[9],q[34];
cp(-0.000000046813379) q[8],q[34];
cp(-0.000000023406689) q[7],q[34];
cp(-0.000000011703345) q[6],q[34];
cp(-0.000000005851672) q[5],q[34];
cp(-0.000000002925836) q[4],q[34];
cp(-0.000000001462918) q[3],q[34];
cp(-0.000000000731459) q[2],q[34];
cp(-0.000000000365730) q[1],q[34];
cp(-0.000000000182865) q[0],q[34];
h q[33];
cp(-1.570796326794897) q[32],q[33];
cp(-0.785398163397448) q[31],q[33];
cp(-0.392699081698724) q[30],q[33];
cp(-0.196349540849362) q[29],q[33];
cp(-0.098174770424681) q[28],q[33];
cp(-0.049087385212341) q[27],q[33];
cp(-0.024543692606170) q[26],q[33];
cp(-0.012271846303085) q[25],q[33];
cp(-0.006135923151543) q[24],q[33];
cp(-0.003067961575771) q[23],q[33];
cp(-0.001533980787886) q[22],q[33];
cp(-0.000766990393943) q[21],q[33];
cp(-0.000383495196971) q[20],q[33];
cp(-0.000191747598486) q[19],q[33];
cp(-0.000095873799243) q[18],q[33];
cp(-0.000047936899621) q[17],q[33];
cp(-0.000023968449811) q[16],q[33];
cp(-0.000011984224905) q[15],q[33];
cp(-0.000005992112453) q[14],q[33];
cp(-0.000002996056226) q[13],q[33];
cp(-0.000001498028113) q[12],q[33];
cp(-0.000000749014057) q[11],q[33];
cp(-0.000000374507028) q[10],q[33];
cp(-0.000000187253514) q[9],q[33];
cp(-0.000000093626757) q[8],q[33];
cp(-0.000000046813379) q[7],q[33];
cp(-0.000000023406689) q[6],q[33];
cp(-0.000000011703345) q[5],q[33];
cp(-0.000000005851672) q[4],q[33];
cp(-0.000000002925836) q[3],q[33];
cp(-0.000000001462918) q[2],q[33];
cp(-0.000000000731459) q[1],q[33];
cp(-0.000000000365730) q[0],q[33];
h q[32];
cp(-1.570796326794897) q[31],q[32];
cp(-0.785398163397448) q[30],q[32];
cp(-0.392699081698724) q[29],q[32];
cp(-0.196349540849362) q[28],q[32];
cp(-0.098174770424681) q[27],q[32];
cp(-0.049087385212341) q[26],q[32];
cp(-0.024543692606170) q[25],q[32];
cp(-0.012271846303085) q[24],q[32];
cp(-0.006135923151543) q[23],q[32];
cp(-0.003067961575771) q[22],q[32];
cp(-0.001533980787886) q[21],q[32];
cp(-0.000766990393943) q[20],q[32];
cp(-0.000383495196971) q[19],q[32];
cp(-0.000191747598486) q[18],q[32];
cp(-0.000095873799243) q[17],q[32];
cp(-0.000047936899621) q[16],q[32];
cp(-0.000023968449811) q[15],q[32];
cp(-0.000011984224905) q[14],q[32];
cp(-0.000005992112453) q[13],q[32];
cp(-0.000002996056226) q[12],q[32];
cp(-0.000001498028113) q[11],q[32];
cp(-0.000000749014057) q[10],q[32];
cp(-0.000000374507028) q[9],q[32];
cp(-0.000000187253514) q[8],q[32];
cp(-0.000000093626757) q[7],q[32];
cp(-0.000000046813379) q[6],q[32];
cp(-0.000000023406689) q[5],q[32];
cp(-0.000000011703345) q[4],q[32];
cp(-0.000000005851672) q[3],q[32];
cp(-0.000000002925836) q[2],q[32];
cp(-0.000000001462918) q[1],q[32];
cp(-0.000000000731459) q[0],q[32];
h q[31];
cp(-1.570796326794897) q[30],q[31];
cp(-0.785398163397448) q[29],q[31];
cp(-0.392699081698724) q[28],q[31];
cp(-0.196349540849362) q[27],q[31];
cp(-0.098174770424681) q[26],q[31];
cp(-0.049087385212341) q[25],q[31];
cp(-0.024543692606170) q[24],q[31];
cp(-0.012271846303085) q[23],q[31];
cp(-0.006135923151543) q[22],q[31];
cp(-0.003067961575771) q[21],q[31];
cp(-0.001533980787886) q[20],q[31];
cp(-0.000766990393943) q[19],q[31];
cp(-0.000383495196971) q[18],q[31];
cp(-0.000191747598486) q[17],q[31];
cp(-0.000095873799243) q[16],q[31];
cp(-0.000047936899621) q[15],q[31];
cp(-0.000023968449811) q[14],q[31];
cp(-0.000011984224905) q[13],q[31];
cp(-0.000005992112453) q[12],q[31];
cp(-0.000002996056226) q[11],q[31];
cp(-0.000001498028113) q[10],q[31];
cp(-0.000000749014057) q[9],q[31];
cp(-0.000000374507028) q[8],q[31];
cp(-0.000000187253514) q[7],q[31];
cp(-0.000000093626757) q[6],q[31];
cp(-0.000000046813379) q[5],q[31];
cp(-0.000000023406689) q[4],q[31];
cp(-0.000000011703345) q[3],q[31];
cp(-0.000000005851672) q[2],q[31];
cp(-0.000000002925836) q[1],q[31];
cp(-0.000000001462918) q[0],q[31];
h q[30];
cp(-1.570796326794897) q[29],q[30];
cp(-0.785398163397448) q[28],q[30];
cp(-0.392699081698724) q[27],q[30];
cp(-0.196349540849362) q[26],q[30];
cp(-0.098174770424681) q[25],q[30];
cp(-0.049087385212341) q[24],q[30];
cp(-0.024543692606170) q[23],q[30];
cp(-0.012271846303085) q[22],q[30];
cp(-0.006135923151543) q[21],q[30];
cp(-0.003067961575771) q[20],q[30];
cp(-0.001533980787886) q[19],q[30];
cp(-0.000766990393943) q[18],q[30];
cp(-0.000383495196971) q[17],q[30];
cp(-0.000191747598486) q[16],q[30];
cp(-0.000095873799243) q[15],q[30];
cp(-0.000047936899621) q[14],q[30];
cp(-0.000023968449811) q[13],q[30];
cp(-0.000011984224905) q[12],q[30];
cp(-0.000005992112453) q[11],q[30];
cp(-0.000002996056226) q[10],q[30];
cp(-0.000001498028113) q[9],q[30];
cp(-0.000000749014057) q[8],q[30];
cp(-0.000000374507028) q[7],q[30];
cp(-0.000000187253514) q[6],q[30];
cp(-0.000000093626757) q[5],q[30];
cp(-0.000000046813379) q[4],q[30];
cp(-0.000000023406689) q[3],q[30];
cp(-0.000000011703345) q[2],q[30];
cp(-0.000000005851672) q[1],q[30];
cp(-0.000000002925836) q[0],q[30];
h q[29];
cp(-1.570796326794897) q[28],q[29];
cp(-0.785398163397448) q[27],q[29];
cp(-0.392699081698724) q[26],q[29];
cp(-0.196349540849362) q[25],q[29];
cp(-0.098174770424681) q[24],q[29];
cp(-0.049087385212341) q[23],q[29];
cp(-0.024543692606170) q[22],q[29];
cp(-0.012271846303085) q[21],q[29];
cp(-0.006135923151543) q[20],q[29];
cp(-0.003067961575771) q[19],q[29];
cp(-0.001533980787886) q[18],q[29];
cp(-0.000766990393943) q[17],q[29];
cp(-0.000383495196971) q[16],q[29];
cp(-0.000191747598486) q[15],q[29];
cp(-0.000095873799243) q[14],q[29];
cp(-0.000047936899621) q[13],q[29];
cp(-0.000023968449811) q[12],q[29];
cp(-0.000011984224905) q[11],q[29];
cp(-0.000005992112453) q[10],q[29];
cp(-0.000002996056226) q[9],q[29];
cp(-0.000001498028113) q[8],q[29];
cp(-0.000000749014057) q[7],q[29];
cp(-0.000000374507028) q[6],q[29];
cp(-0.000000187253514) q[5],q[29];
cp(-0.000000093626757) q[4],q[29];
cp(-0.000000046813379) q[3],q[29];
cp(-0.000000023406689) q[2],q[29];
cp(-0.000000011703345) q[1],q[29];
cp(-0.000000005851672) q[0],q[29];
h q[28];
cp(-1.570796326794897) q[27],q[28];
cp(-0.785398163397448) q[26],q[28];
cp(-0.392699081698724) q[25],q[28];
cp(-0.196349540849362) q[24],q[28];
cp(-0.098174770424681) q[23],q[28];
cp(-0.049087385212341) q[22],q[28];
cp(-0.024543692606170) q[21],q[28];
cp(-0.012271846303085) q[20],q[28];
cp(-0.006135923151543) q[19],q[28];
cp(-0.003067961575771) q[18],q[28];
cp(-0.001533980787886) q[17],q[28];
cp(-0.000766990393943) q[16],q[28];
cp(-0.000383495196971) q[15],q[28];
cp(-0.000191747598486) q[14],q[28];
cp(-0.000095873799243) q[13],q[28];
cp(-0.000047936899621) q[12],q[28];
cp(-0.000023968449811) q[11],q[28];
cp(-0.000011984224905) q[10],q[28];
cp(-0.000005992112453) q[9],q[28];
cp(-0.000002996056226) q[8],q[28];
cp(-0.000001498028113) q[7],q[28];
cp(-0.000000749014057) q[6],q[28];
cp(-0.000000374507028) q[5],q[28];
cp(-0.000000187253514) q[4],q[28];
cp(-0.000000093626757) q[3],q[28];
cp(-0.000000046813379) q[2],q[28];
cp(-0.000000023406689) q[1],q[28];
cp(-0.000000011703345) q[0],q[28];
h q[27];
cp(-1.570796326794897) q[26],q[27];
cp(-0.785398163397448) q[25],q[27];
cp(-0.392699081698724) q[24],q[27];
cp(-0.196349540849362) q[23],q[27];
cp(-0.098174770424681) q[22],q[27];
cp(-0.049087385212341) q[21],q[27];
cp(-0.024543692606170) q[20],q[27];
cp(-0.012271846303085) q[19],q[27];
cp(-0.006135923151543) q[18],q[27];
cp(-0.003067961575771) q[17],q[27];
cp(-0.001533980787886) q[16],q[27];
cp(-0.000766990393943) q[15],q[27];
cp(-0.000383495196971) q[14],q[27];
cp(-0.000191747598486) q[13],q[27];
cp(-0.000095873799243) q[12],q[27];
cp(-0.000047936899621) q[11],q[27];
cp(-0.000023968449811) q[10],q[27];
cp(-0.000011984224905) q[9],q[27];
cp(-0.000005992112453) q[8],q[27];
cp(-0.000002996056226) q[7],q[27];
cp(-0.000001498028113) q[6],q[27];
cp(-0.000000749014057) q[5],q[27];
cp(-0.000000374507028) q[4],q[27];
cp(-0.000000187253514) q[3],q[27];
cp(-0.000000093626757) q[2],q[27];
cp(-0.000000046813379) q[1],q[27];
cp(-0.000000023406689) q[0],q[27];
h q[26];
cp(-1.570796326794897) q[25],q[26];
cp(-0.785398163397448) q[24],q[26];
cp(-0.392699081698724) q[23],q[26];
cp(-0.196349540849362) q[22],q[26];
cp(-0.098174770424681) q[21],q[26];
cp(-0.049087385212341) q[20],q[26];
cp(-0.024543692606170) q[19],q[26];
cp(-0.012271846303085) q[18],q[26];
cp(-0.006135923151543) q[17],q[26];
cp(-0.003067961575771) q[16],q[26];
cp(-0.001533980787886) q[15],q[26];
cp(-0.000766990393943) q[14],q[26];
cp(-0.000383495196971) q[13],q[26];
cp(-0.000191747598486) q[12],q[26];
cp(-0.000095873799243) q[11],q[26];
cp(-0.000047936899621) q[10],q[26];
cp(-0.000023968449811) q[9],q[26];
cp(-0.000011984224905) q[8],q[26];
cp(-0.000005992112453) q[7],q[26];
cp(-0.000002996056226) q[6],q[26];
cp(-0.000001498028113) q[5],q[26];
cp(-0.000000749014057) q[4],q[26];
cp(-0.000000374507028) q[3],q[26];
cp(-0.000000187253514) q[2],q[26];
cp(-0.000000093626757) q[1],q[26];
cp(-0.000000046813379) q[0],q[26];
h q[25];
cp(-1.570796326794897) q[24],q[25];
cp(-0.785398163397448) q[23],q[25];
cp(-0.392699081698724) q[22],q[25];
cp(-0.196349540849362) q[21],q[25];
cp(-0.098174770424681) q[20],q[25];
cp(-0.049087385212341) q[19],q[25];
cp(-0.024543692606170) q[18],q[25];
cp(-0.012271846303085) q[17],q[25];
cp(-0.006135923151543) q[16],q[25];
cp(-0.003067961575771) q[15],q[25];
cp(-0.001533980787886) q[14],q[25];
cp(-0.000766990393943) q[13],q[25];
cp(-0.000383495196971) q[12],q[25];
cp(-0.000191747598486) q[11],q[25];
cp(-0.000095873799243) q[10],q[25];
cp(-0.000047936899621) q[9],q[25];
cp(-0.000023968449811) q[8],q[25];
cp(-0.000011984224905) q[7],q[25];
cp(-0.000005992112453) q[6],q[25];
cp(-0.000002996056226) q[5],q[25];
cp(-0.000001498028113) q[4],q[25];
cp(-0.000000749014057) q[3],q[25];
cp(-0.000000374507028) q[2],q[25];
cp(-0.000000187253514) q[1],q[25];
cp(-0.000000093626757) q[0],q[25];
h q[24];
cp(-1.570796326794897) q[23],q[24];
cp(-0.785398163397448) q[22],q[24];
cp(-0.392699081698724) q[21],q[24];
cp(-0.196349540849362) q[20],q[24];
cp(-0.098174770424681) q[19],q[24];
cp(-0.049087385212341) q[18],q[24];
cp(-0.024543692606170) q[17],q[24];
cp(-0.012271846303085) q[16],q[24];
cp(-0.006135923151543) q[15],q[24];
cp(-0.003067961575771) q[14],q[24];
cp(-0.001533980787886) q[13],q[24];
cp(-0.000766990393943) q[12],q[24];
cp(-0.000383495196971) q[11],q[24];
cp(-0.000191747598486) q[10],q[24];
cp(-0.000095873799243) q[9],q[24];
cp(-0.000047936899621) q[8],q[24];
cp(-0.000023968449811) q[7],q[24];
cp(-0.000011984224905) q[6],q[24];
cp(-0.000005992112453) q[5],q[24];
cp(-0.000002996056226) q[4],q[24];
cp(-0.000001498028113) q[3],q[24];
cp(-0.000000749014057) q[2],q[24];
cp(-0.000000374507028) q[1],q[24];
cp(-0.000000187253514) q[0],q[24];
h q[23];
cp(-1.570796326794897) q[22],q[23];
cp(-0.785398163397448) q[21],q[23];
cp(-0.392699081698724) q[20],q[23];
cp(-0.196349540849362) q[19],q[23];
cp(-0.098174770424681) q[18],q[23];
cp(-0.049087385212341) q[17],q[23];
cp(-0.024543692606170) q[16],q[23];
cp(-0.012271846303085) q[15],q[23];
cp(-0.006135923151543) q[14],q[23];
cp(-0.003067961575771) q[13],q[23];
cp(-0.001533980787886) q[12],q[23];
cp(-0.000766990393943) q[11],q[23];
cp(-0.000383495196971) q[10],q[23];
cp(-0.000191747598486) q[9],q[23];
cp(-0.000095873799243) q[8],q[23];
cp(-0.000047936899621) q[7],q[23];
cp(-0.000023968449811) q[6],q[23];
cp(-0.000011984224905) q[5],q[23];
cp(-0.000005992112453) q[4],q[23];
cp(-0.000002996056226) q[3],q[23];
cp(-0.000001498028113) q[2],q[23];
cp(-0.000000749014057) q[1],q[23];
cp(-0.000000374507028) q[0],q[23];
h q[22];
cp(-1.570796326794897) q[21],q[22];
cp(-0.785398163397448) q[20],q[22];
cp(-0.392699081698724) q[19],q[22];
cp(-0.196349540849362) q[18],q[22];
cp(-0.098174770424681) q[17],q[22];
cp(-0.049087385212341) q[16],q[22];
cp(-0.024543692606170) q[15],q[22];
cp(-0.012271846303085) q[14],q[22];
cp(-0.006135923151543) q[13],q[22];
cp(-0.003067961575771) q[12],q[22];
cp(-0.001533980787886) q[11],q[22];
cp(-0.000766990393943) q[10],q[22];
cp(-0.000383495196971) q[9],q[22];
cp(-0.000191747598486) q[8],q[22];
cp(-0.000095873799243) q[7],q[22];
cp(-0.000047936899621) q[6],q[22];
cp(-0.000023968449811) q[5],q[22];
cp(-0.000011984224905) q[4],q[22];
cp(-0.000005992112453) q[3],q[22];
cp(-0.000002996056226) q[2],q[22];
cp(-0.000001498028113) q[1],q[22];
cp(-0.000000749014057) q[0],q[22];
h q[21];
cp(-1.570796326794897) q[20],q[21];
cp(-0.785398163397448) q[19],q[21];
cp(-0.392699081698724) q[18],q[21];
cp(-0.196349540849362) q[17],q[21];
cp(-0.098174770424681) q[16],q[21];
cp(-0.049087385212341) q[15],q[21];
cp(-0.024543692606170) q[14],q[21];
cp(-0.012271846303085) q[13],q[21];
cp(-0.006135923151543) q[12],q[21];
cp(-0.003067961575771) q[11],q[21];
cp(-0.001533980787886) q[10],q[21];
cp(-0.000766990393943) q[9],q[21];
cp(-0.000383495196971) q[8],q[21];
cp(-0.000191747598486) q[7],q[21];
cp(-0.000095873799243) q[6],q[21];
cp(-0.000047936899621) q[5],q[21];
cp(-0.000023968449811) q[4],q[21];
cp(-0.000011984224905) q[3],q[21];
cp(-0.000005992112453) q[2],q[21];
cp(-0.000002996056226) q[1],q[21];
cp(-0.000001498028113) q[0],q[21];
h q[20];
cp(-1.570796326794897) q[19],q[20];
cp(-0.785398163397448) q[18],q[20];
cp(-0.392699081698724) q[17],q[20];
cp(-0.196349540849362) q[16],q[20];
cp(-0.098174770424681) q[15],q[20];
cp(-0.049087385212341) q[14],q[20];
cp(-0.024543692606170) q[13],q[20];
cp(-0.012271846303085) q[12],q[20];
cp(-0.006135923151543) q[11],q[20];
cp(-0.003067961575771) q[10],q[20];
cp(-0.001533980787886) q[9],q[20];
cp(-0.000766990393943) q[8],q[20];
cp(-0.000383495196971) q[7],q[20];
cp(-0.000191747598486) q[6],q[20];
cp(-0.000095873799243) q[5],q[20];
cp(-0.000047936899621) q[4],q[20];
cp(-0.000023968449811) q[3],q[20];
cp(-0.000011984224905) q[2],q[20];
cp(-0.000005992112453) q[1],q[20];
cp(-0.000002996056226) q[0],q[20];
h q[19];
cp(-1.570796326794897) q[18],q[19];
cp(-0.785398163397448) q[17],q[19];
cp(-0.392699081698724) q[16],q[19];
cp(-0.196349540849362) q[15],q[19];
cp(-0.098174770424681) q[14],q[19];
cp(-0.049087385212341) q[13],q[19];
cp(-0.024543692606170) q[12],q[19];
cp(-0.012271846303085) q[11],q[19];
cp(-0.006135923151543) q[10],q[19];
cp(-0.003067961575771) q[9],q[19];
cp(-0.001533980787886) q[8],q[19];
cp(-0.000766990393943) q[7],q[19];
cp(-0.000383495196971) q[6],q[19];
cp(-0.000191747598486) q[5],q[19];
cp(-0.000095873799243) q[4],q[19];
cp(-0.000047936899621) q[3],q[19];
cp(-0.000023968449811) q[2],q[19];
cp(-0.000011984224905) q[1],q[19];
cp(-0.000005992112453) q[0],q[19];
h q[18];
cp(-1.570796326794897) q[17],q[18];
cp(-0.785398163397448) q[16],q[18];
cp(-0.392699081698724) q[15],q[18];
cp(-0.196349540849362) q[14],q[18];
cp(-0.098174770424681) q[13],q[18];
cp(-0.049087385212341) q[12],q[18];
cp(-0.024543692606170) q[11],q[18];
cp(-0.012271846303085) q[10],q[18];
cp(-0.006135923151543) q[9],q[18];
cp(-0.003067961575771) q[8],q[18];
cp(-0.001533980787886) q[7],q[18];
cp(-0.000766990393943) q[6],q[18];
cp(-0.000383495196971) q[5],q[18];
cp(-0.000191747598486) q[4],q[18];
cp(-0.000095873799243) q[3],q[18];
cp(-0.000047936899621) q[2],q[18];
cp(-0.000023968449811) q[1],q[18];
cp(-0.000011984224905) q[0],q[18];
h q[17];
cp(-1.570796326794897) q[16],q[17];
cp(-0.785398163397448) q[15],q[17];
cp(-0.392699081698724) q[14],q[17];
cp(-0.196349540849362) q[13],q[17];
cp(-0.098174770424681) q[12],q[17];
cp(-0.049087385212341) q[11],q[17];
cp(-0.024543692606170) q[10],q[17];
cp(-0.012271846303085) q[9],q[17];
cp(-0.006135923151543) q[8],q[17];
cp(-0.003067961575771) q[7],q[17];
cp(-0.001533980787886) q[6],q[17];
cp(-0.000766990393943) q[5],q[17];
cp(-0.000383495196971) q[4],q[17];
cp(-0.000191747598486) q[3],q[17];
cp(-0.000095873799243) q[2],q[17];
cp(-0.000047936899621) q[1],q[17];
cp(-0.000023968449811) q[0],q[17];
h q[16];
cp(-1.570796326794897) q[15],q[16];
cp(-0.785398163397448) q[14],q[16];
cp(-0.392699081698724) q[13],q[16];
cp(-0.196349540849362) q[12],q[16];
cp(-0.098174770424681) q[11],q[16];
cp(-0.049087385212341) q[10],q[16];
cp(-0.024543692606170) q[9],q[16];
cp(-0.012271846303085) q[8],q[16];
cp(-0.006135923151543) q[7],q[16];
cp(-0.003067961575771) q[6],q[16];
cp(-0.001533980787886) q[5],q[16];
cp(-0.000766990393943) q[4],q[16];
cp(-0.000383495196971) q[3],q[16];
cp(-0.000191747598486) q[2],q[16];
cp(-0.000095873799243) q[1],q[16];
cp(-0.000047936899621) q[0],q[16];
h q[15];
cp(-1.570796326794897) q[14],q[15];
cp(-0.785398163397448) q[13],q[15];
cp(-0.392699081698724) q[12],q[15];
cp(-0.196349540849362) q[11],q[15];
cp(-0.098174770424681) q[10],q[15];
cp(-0.049087385212341) q[9],q[15];
cp(-0.024543692606170) q[8],q[15];
cp(-0.012271846303085) q[7],q[15];
cp(-0.006135923151543) q[6],q[15];
cp(-0.003067961575771) q[5],q[15];
cp(-0.001533980787886) q[4],q[15];
cp(-0.000766990393943) q[3],q[15];
cp(-0.000383495196971) q[2],q[15];
cp(-0.000191747598486) q[1],q[15];
cp(-0.000095873799243) q[0],q[15];
h q[14];
cp(-1.570796326794897) q[13],q[14];
cp(-0.785398163397448) q[12],q[14];
cp(-0.392699081698724) q[11],q[14];
cp(-0.196349540849362) q[10],q[14];
cp(-0.098174770424681) q[9],q[14];
cp(-0.049087385212341) q[8],q[14];
cp(-0.024543692606170) q[7],q[14];
cp(-0.012271846303085) q[6],q[14];
cp(-0.006135923151543) q[5],q[14];
cp(-0.003067961575771) q[4],q[14];
cp(-0.001533980787886) q[3],q[14];
cp(-0.000766990393943) q[2],q[14];
cp(-0.000383495196971) q[1],q[14];
cp(-0.000191747598486) q[0],q[14];
h q[13];
cp(-1.570796326794897) q[12],q[13];
cp(-0.785398163397448) q[11],q[13];
cp(-0.392699081698724) q[10],q[13];
cp(-0.196349540849362) q[9],q[13];
cp(-0.098174770424681) q[8],q[13];
cp(-0.049087385212341) q[7],q[13];
cp(-0.024543692606170) q[6],q[13];
cp(-0.012271846303085) q[5],q[13];
cp(-0.006135923151543) q[4],q[13];
cp(-0.003067961575771) q[3],q[13];
cp(-0.001533980787886) q[2],q[13];
cp(-0.000766990393943) q[1],q[13];
cp(-0.000383495196971) q[0],q[13];
h q[12];
cp(-1.570796326794897) q[11],q[12];
cp(-0.785398163397448) q[10],q[12];
cp(-0.392699081698724) q[9],q[12];
cp(-0.196349540849362) q[8],q[12];
cp(-0.098174770424681) q[7],q[12];
cp(-0.049087385212341) q[6],q[12];
cp(-0.024543692606170) q[5],q[12];
cp(-0.012271846303085) q[4],q[12];
cp(-0.006135923151543) q[3],q[12];
cp(-0.003067961575771) q[2],q[12];
cp(-0.001533980787886) q[1],q[12];
cp(-0.000766990393943) q[0],q[12];
h q[11];
cp(-1.570796326794897) q[10],q[11];
cp(-0.785398163397448) q[9],q[11];
cp(-0.392699081698724) q[8],q[11];
cp(-0.196349540849362) q[7],q[11];
cp(-0.098174770424681) q[6],q[11];
cp(-0.049087385212341) q[5],q[11];
cp(-0.024543692606170) q[4],q[11];
cp(-0.012271846303085) q[3],q[11];
cp(-0.006135923151543) q[2],q[11];
cp(-0.003067961575771) q[1],q[11];
cp(-0.001533980787886) q[0],q[11];
h q[10];
cp(-1.570796326794897) q[9],q[10];
cp(-0.785398163397448) q[8],q[10];
cp(-0.392699081698724) q[7],q[10];
cp(-0.196349540849362) q[6],q[10];
cp(-0.098174770424681) q[5],q[10];
cp(-0.049087385212341) q[4],q[10];
cp(-0.024543692606170) q[3],q[10];
cp(-0.012271846303085) q[2],q[10];
cp(-0.006135923151543) q[1],q[10];
cp(-0.003067961575771) q[0],q[10];
h q[9];
cp(-1.570796326794897) q[8],q[9];
cp(-0.785398163397448) q[7],q[9];
cp(-0.392699081698724) q[6],q[9];
cp(-0.196349540849362) q[5],q[9];
cp(-0.098174770424681) q[4],q[9];
cp(-0.049087385212341) q[3],q[9];
cp(-0.024543692606170) q[2],q[9];
cp(-0.012271846303085) q[1],q[9];
cp(-0.006135923151543) q[0],q[9];
h q[8];
cp(-1.570796326794897) q[7],q[8];
cp(-0.785398163397448) q[6],q[8];
cp(-0.392699081698724) q[5],q[8];
cp(-0.196349540849362) q[4],q[8];
cp(-0.098174770424681) q[3],q[8];
cp(-0.049087385212341) q[2],q[8];
cp(-0.024543692606170) q[1],q[8];
cp(-0.012271846303085) q[0],q[8];
h q[7];
cp(-1.570796326794897) q[6],q[7];
cp(-0.785398163397448) q[5],q[7];
cp(-0.392699081698724) q[4],q[7];
cp(-0.196349540849362) q[3],q[7];
cp(-0.098174770424681) q[2],q[7];
cp(-0.049087385212341) q[1],q[7];
cp(-0.024543692606170) q[0],q[7];
h q[6];
cp(-1.570796326794897) q[5],q[6];
cp(-0.785398163397448) q[4],q[6];
cp(-0.392699081698724) q[3],q[6];
cp(-0.196349540849362) q[2],q[6];
cp(-0.098174770424681) q[1],q[6];
cp(-0.049087385212341) q[0],q[6];
h q[5];
cp(-1.570796326794897) q[4],q[5];
cp(-0.785398163397448) q[3],q[5];
cp(-0.392699081698724) q[2],q[5];
cp(-0.196349540849362) q[1],q[5];
cp(-0.098174770424681) q[0],q[5];
h q[4];
cp(-1.570796326794897) q[3],q[4];
cp(-0.785398163397448) q[2],q[4];
cp(-0.392699081698724) q[1],q[4];
cp(-0.196349540849362) q[0],q[4];
h q[3];
cp(-1.570796326794897) q[2],q[3];
cp(-0.785398163397448) q[1],q[3];
cp(-0.392699081698724) q[0],q[3];
h q[2];
cp(-1.570796326794897) q[1],q[2];
cp(-0.785398163397448) q[0],q[2];
h q[1];
cp(-1.570796326794897) q[0],q[1];
h q[0];
u3(15930810540.216459274291992,0,0) q[35];
