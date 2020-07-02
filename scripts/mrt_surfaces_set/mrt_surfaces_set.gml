///@desc mrt_surfaces_set

shader_set(shd_mrt_xor);
surface_set_target_ext(0,global.mrt_surf[0]);
surface_set_target_ext(1,global.mrt_surf[1]);
surface_set_target_ext(2,global.mrt_surf[2]);

draw_clear_alpha(0,0);
gpu_set_blendenable(0);