///@desc Initialize scene:

mrt = mrt_system_create(1280,720);

#region Camera

gpu_set_ztestenable(1);
gpu_set_tex_mip_enable(1);

view = matrix_build_lookat(0,0,0,1,0,0,0,0,1);
proj = matrix_build_projection_perspective_fov(60,16/9,.001,10000);


dir_x = 0;
dir_y = 0;
radius = 10;
zoom = 0;

matrix_set(matrix_view,view);
matrix_set(matrix_projection,proj);

//mrt_surfaces_create(1280,720);
#endregion

#region Scene
vert_format();

scene = vert_begin();
//Floor:
vert_block(-10,-10,-10, 10,10,0, -1,1);
//Pillars:
vert_block(6,-10,0, 10,-6,10, -1,1);
vert_block(6,6,0,   10,10,10, -1,1);

vertex_end(scene);

tex_scene = sprite_get_texture(tex_stone_floor_diffuse,0);
#endregion