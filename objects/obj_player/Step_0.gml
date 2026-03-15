//controls
var up_key = keyboard_check(vk_up)
var down_key = keyboard_check(vk_down)
var left_key = keyboard_check(vk_left)
var right_key = keyboard_check(vk_right)

//movement
if (keyboard_check(vk_shift) or keyboard_check(ord("X"))){
	move_speed = run_speed
} else{
	move_speed = walk_speed
}

xspeed = (right_key - left_key) * move_speed
yspeed = (down_key - up_key) * move_speed
x += xspeed
y += yspeed

//animation
if (xspeed > 0){
	sprite_index = spr_friskwr
} else if (xspeed < 0){
	sprite_index = spr_friskwl
} else if (yspeed > 0){
	sprite_index = spr_friskwd
} else if (yspeed < 0){
	sprite_index = spr_friskwu
}

if (xspeed != 0 or yspeed != 0){
	image_speed = 1
} else{
	image_speed = 0
	image_index = 0
}