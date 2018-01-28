//scr_main_state

scr_input();

if(dash){
    if(right or left or up or down){
        state = scr_dash_state;
        alarm[0] = room_speed/5;
    }
}

if(melee){
    image_index = 0;
    state = scr_melee_state;
    alarm[0] = room_speed/6;
}

//axis
var xaxis = (right - left);
var yaxis = (down - up);

//Get dir
dir = point_direction(0, 0, xaxis, yaxis);

//get len
if (xaxis == 0 and yaxis == 0){
    len = 0;
} else {
    len = spd;
}

//move
hspd = round(lengthdir_x(len, dir));
vspd = round(lengthdir_y(len, dir));

phy_position_x += hspd;
phy_position_y += vspd;
