right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
dash = keyboard_check(vk_shift);

//speed calculations
x_but_speed = (right_key - left_key) * movement_of_speed;
y_but_speed = (down_key - up_key) * movement_of_speed 

// wall

if place_meeting(x + x_but_speed, y + y_but_speed, object_wall) == true
	{
	x_but_speed = 0
	y_but_speed = 0
	}


//speededededed
x += x_but_speed
y += y_but_speed
