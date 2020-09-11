///@desc Render scene

var cx,cy,sx,sy;
cx = dcos(dir_x);
cy = dcos(dir_y);
sx = dsin(dir_x);
sy = dsin(dir_y);

view = matrix_build_lookat(-cx*cy*radius,-sx*cy*radius,max(2-sy*radius,.1),1,0,2,0,0,os_type == os_windows ? 1 : -1);
matrix_set(matrix_projection,proj);

mrt_system_set(mrt);
//mrt_surfaces_set();
matrix_set(matrix_view,view);
matrix_set(matrix_projection,proj);

vertex_submit(scene,pr_trianglelist,tex_scene);
mrt_system_reset();
//mrt_surfaces_reset();