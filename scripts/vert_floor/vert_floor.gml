///@desc vert_floor
///@param x
///@param y
///@param z
///@param width
///@param color
///@param alpha
function vert_floor() {
	var X,Y,Z,W,C,A; 
	X = argument[0];
	Y = argument[1];
	Z = argument[2];
	W = argument[3];
	C = argument[4];
	A = argument[5];

	vert_begin();

	vertex_color(global.Buff,C,A);
	vertex_position_3d(global.Buff,X-W,Y-W,Z);
	vertex_normal(global.Buff,0,0,1);
	vertex_texcoord(global.Buff,0,0);
	vertex_color(global.Buff,C,A);
	vertex_position_3d(global.Buff,X+W,Y-W,Z);
	vertex_normal(global.Buff,0,0,1);
	vertex_texcoord(global.Buff,0,1);
	vertex_color(global.Buff,C,A);
	vertex_position_3d(global.Buff,X-W,Y+W,Z);
	vertex_normal(global.Buff,0,0,1);
	vertex_texcoord(global.Buff,1,0);

	vertex_color(global.Buff,C,A);
	vertex_position_3d(global.Buff,X+W,Y-W,Z);
	vertex_normal(global.Buff,0,0,1);
	vertex_texcoord(global.Buff,0,1);
	vertex_color(global.Buff,C,A);
	vertex_position_3d(global.Buff,X+W,Y+W,Z);
	vertex_normal(global.Buff,0,0,1);
	vertex_texcoord(global.Buff,1,1);
	vertex_color(global.Buff,C,A);
	vertex_position_3d(global.Buff,X-W,Y+W,Z);
	vertex_normal(global.Buff,0,0,1);
	vertex_texcoord(global.Buff,1,0);

	return vert_end();


}
