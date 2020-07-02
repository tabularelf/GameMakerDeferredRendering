///@desc vert_triangle
///@param x1
///@param y1
///@param z1
///@param x2
///@param y2
///@param z2
///@param x3
///@param y3
///@param z3
///@param color
///@param alpha

var X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3,C,A;
X1 = argument[0];
Y1 = argument[1];
Z1 = argument[2];
X2 = argument[3];
Y2 = argument[4];
Z2 = argument[5];
X3 = argument[6];
Y3 = argument[7];
Z3 = argument[8];
C  = argument[9];
A  = argument[10];

var NX,NY,NZ,NL;
NX = (Y1-Y2)*(Z1-Z3)-(Z1-Z2)*(Y1-Y3);
NY = (Z1-Z2)*(X1-X3)-(X1-X2)*(Z1-Z3);
NZ = (X1-X2)*(Y1-Y3)-(Y1-Y2)*(X1-X3);
NL = sqrt(NX*NX+NY*NY+NZ*NZ);
NX /= NL;NY /= NL;NZ /= NL;

vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y1,Z1);
vertex_normal(global.Buff,NX,NY,NZ);
vertex_texcoord(global.Buff,0,0);

vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y2,Z2);
vertex_normal(global.Buff,NX,NY,NZ);
vertex_texcoord(global.Buff,1,0);

vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X3,Y3,Z3);
vertex_normal(global.Buff,NX,NY,NZ);
vertex_texcoord(global.Buff,1,1);