var bbox_side; 

key_right = keyboard_check(ord("D"))
key_left = keyboard_check(ord("A"))
key_jump = keyboard_check_pressed(vk_space)
 
hsp = (key_right - key_left) * walkspeed;
vsp = vsp + grav

if (place_meeting(x,y+1,obj_ground)) && (key_jump)
{
    vsp = -7;
}


//kolizje poziom
if (place_meeting(x+hsp,y,obj_ground))
{
    while (!place_meeting(x+sign(hsp),y,obj_ground))
 {
     x = x + sign(hsp);
 }
 hsp = 0;
}
x = x + hsp;

//kolizje pion
if (place_meeting(x,y+vsp,obj_ground))
{
    while (!place_meeting(x,y+sign(vsp),obj_ground))
 {
     y = y + sign(vsp);
 }
 vsp = 0;
}
y = y + vsp; 