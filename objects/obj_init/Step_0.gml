///@desc Update camera

dir_x = dir_x*.9+.1*(window_mouse_get_x()-window_get_width()/2)/5;
dir_y = dir_y*.9+.1*(window_mouse_get_y()-window_get_height()/2)/5;

zoom = zoom*.8+.2*(mouse_wheel_down()-mouse_wheel_up());
radius *= 1+zoom*.1;