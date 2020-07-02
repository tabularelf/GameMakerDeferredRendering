///@desc mrt_surfaces_destroy

if surface_exists(global.mrt_surf[0]) surface_free(global.mrt_surf[0]);
if surface_exists(global.mrt_surf[1]) surface_free(global.mrt_surf[1]);
if surface_exists(global.mrt_surf[2]) surface_free(global.mrt_surf[2]);