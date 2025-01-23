right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
dash = keyboard_check(vk_shift);
//i'm about to dust!!! i'm about tooo dusstnjnshdnsdd noooooooowuhehuhrwuorfewuhyyuw
function normalmovement()
{
//speed calculations
x_but_speed = (right_key - left_key) * movement_of_speed;
y_but_speed = (down_key - up_key) * movement_of_speed;
// wall colission
if place_meeting(x + x_but_speed, y, object_wall) == true
	{
		x_but_speed = 0
	}
if place_meeting(x, y + y_but_speed, object_wall) == true
	{
		y_but_speed = 0
	}
//dash calculation
if dash == true and dashcooldown <= 0
	{
		array_set(dashdirections,0,up_key)
		array_set(dashdirections,1,down_key)
		array_set(dashdirections,2,left_key)
		array_set(dashdirections,3,right_key)
		dashtime = 10
		dashcooldown = 40
	}
}

function dashmovement()
{
//speed calculations
x_but_speed = (dashdirections[3] - dashdirections[2]) * dashspeed;
y_but_speed = (dashdirections[1] - dashdirections[0]) * dashspeed;
// wall colission
if place_meeting(x + x_but_speed, y, object_wall) == true
	{
		x_but_speed = 0
	}
if place_meeting(x, y + y_but_speed, object_wall) == true
	{
		y_but_speed = 0
	}
//dash calculation
dashtime -= 1
}

if dashtime > 0 {
dashmovement()
}else{
normalmovement()
}

//speededededed
x += x_but_speed
y += y_but_speed
//dash cooldown calculation
if dashcooldown > 0 {
	dashcooldown -= 1
	}
	
	// CHAD COMMENT