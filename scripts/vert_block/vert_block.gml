///@desc vert_block
///@param x1
///@param y1
///@param z1
///@param x2
///@param y2
///@param z2
///@param color
///@param alpha
var X1,Y1,Z1,X2,Y2,Z2,C,A; 
X1 = argument[0];
Y1 = argument[1];
Z1 = argument[2];
X2 = argument[3];
Y2 = argument[4];
Z2 = argument[5];
C = argument[6];
A = argument[7];

//Quad X1
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y1,Z1);
vertex_normal(global.Buff,-1,0,0);
vertex_texcoord(global.Buff,0,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y1,Z2);
vertex_normal(global.Buff,-1,0,0);
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y2,Z1);
vertex_normal(global.Buff,-1,0,0);
vertex_texcoord(global.Buff,0,1);

vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y1,Z2);
vertex_normal(global.Buff,-1,0,0);
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y2,Z2);
vertex_normal(global.Buff,-1,0,0);
vertex_texcoord(global.Buff,1,1);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y2,Z1);
vertex_normal(global.Buff,-1,0,0);
vertex_texcoord(global.Buff,0,1);

//Quad X2
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y1,Z2);
vertex_normal(global.Buff,1,0,0);
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y1,Z1);
vertex_normal(global.Buff,1,0,0);
vertex_texcoord(global.Buff,0,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y2,Z1);
vertex_normal(global.Buff,1,0,0);
vertex_texcoord(global.Buff,0,1);

vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y2,Z2);
vertex_normal(global.Buff,1,0,0);
vertex_texcoord(global.Buff,1,1);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y1,Z2);
vertex_normal(global.Buff,1,0,0);
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y2,Z1);
vertex_normal(global.Buff,1,0,0);
vertex_texcoord(global.Buff,0,1);

//Quad Y1
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y1,Z2);
vertex_normal(global.Buff,0,-1,0);
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y1,Z1);
vertex_normal(global.Buff,0,-1,0);
vertex_texcoord(global.Buff,0,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y1,Z1);
vertex_normal(global.Buff,0,-1,0);
vertex_texcoord(global.Buff,0,1);

vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y1,Z2);
vertex_normal(global.Buff,0,-1,0);
vertex_texcoord(global.Buff,1,1);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y1,Z2);
vertex_normal(global.Buff,0,-1,0);;
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y1,Z1);
vertex_normal(global.Buff,0,-1,0);
vertex_texcoord(global.Buff,0,1);

//Quad Y2
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y2,Z1);
vertex_normal(global.Buff,0,1,0);
vertex_texcoord(global.Buff,0,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y2,Z2);
vertex_normal(global.Buff,0,1,0);
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y2,Z1);
vertex_normal(global.Buff,0,1,0);
vertex_texcoord(global.Buff,0,1);

vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y2,Z2);
vertex_normal(global.Buff,0,1,0);
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y2,Z2);
vertex_normal(global.Buff,0,1,0);
vertex_texcoord(global.Buff,1,1);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y2,Z1);
vertex_normal(global.Buff,0,1,0);
vertex_texcoord(global.Buff,0,1);

//Quad Z1
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y1,Z1);
vertex_normal(global.Buff,0,0,-1);
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y1,Z1);
vertex_normal(global.Buff,0,0,-1);
vertex_texcoord(global.Buff,0,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y2,Z1);
vertex_normal(global.Buff,0,0,-1);
vertex_texcoord(global.Buff,0,1);

vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y2,Z1);
vertex_normal(global.Buff,0,0,-1);
vertex_texcoord(global.Buff,1,1);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y1,Z1);
vertex_normal(global.Buff,0,0,-1);
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y2,Z1);
vertex_normal(global.Buff,0,0,-1);
vertex_texcoord(global.Buff,0,1);

//Quad Z2
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y1,Z2);
vertex_normal(global.Buff,0,0,1);
vertex_texcoord(global.Buff,0,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y1,Z2);
vertex_normal(global.Buff,0,0,1);
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y2,Z2);
vertex_normal(global.Buff,0,0,1);
vertex_texcoord(global.Buff,0,1);

vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y1,Z2);
vertex_normal(global.Buff,0,0,1);
vertex_texcoord(global.Buff,1,0);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X2,Y2,Z2);
vertex_normal(global.Buff,0,0,1);
vertex_texcoord(global.Buff,1,1);
vertex_color(global.Buff,C,A);
vertex_position_3d(global.Buff,X1,Y2,Z2);
vertex_normal(global.Buff,0,0,1);
vertex_texcoord(global.Buff,0,1);