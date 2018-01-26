//scr_dash_state

len = spd*4;

//axis
var xaxis = (right - left);
var yaxis = (down - up);


//move
hspd = round(lengthdir_x(len, dir));
vspd = round(lengthdir_y(len, dir));

phy_position_x += hspd;
phy_position_y += vspd;

//create effect 
var dashvar = instance_create(x,y,obj_dash);
dashvar.sprite_index = sprite_index;
