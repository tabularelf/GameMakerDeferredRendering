/// @description Insert description here
// You can write your code in this editor
surface_clear(surfA,surfB);

surface_set_target(surfA);
draw_circle(mouse_x,mouse_y,2,false);
surface_reset_target();
surface_set_target(surfB);
draw_circle(mouse_x,mouse_y,2,false);
surface_reset_target();

draw_surface_stretched(surfA,0,0,256,256);
draw_surface_stretched(surfA,256,0,256,256);