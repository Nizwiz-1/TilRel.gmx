///scr_input
right = (keyboard_check(vk_right));
left = (keyboard_check(vk_left));
up = (keyboard_check(vk_up));
down = (keyboard_check(vk_down));
dash = (keyboard_check_pressed(ord('C')));
melee = (keyboard_check_pressed(ord('D')));

//axis
var xaxis = (right - left);
var yaxis = (down - up);

//check for gp
if(gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    melee = gamepad_button_check_pressed(0, gp_face2)
}


