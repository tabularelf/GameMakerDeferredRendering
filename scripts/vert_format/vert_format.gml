///@desc vert_format

vertex_format_begin();
vertex_format_add_color();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
global.Format = vertex_format_end();
global.Buff = -1;