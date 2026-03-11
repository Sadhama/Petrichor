key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;
vsp += grav;

//bounds
//if (x + hsp >= 990) {
//	while (x + sign(hsp) >= 990) {
//		x += sign(hsp)
//	}
//	x = 997
	
//} else if (x + hsp <= 3) {
//
//	while (x + sign(hsp) <= 3) {
//		x += sign(hsp)
//	}
//	x = 3;

//} else if (y + vsp <= 3) {
//
//	while (y + sign(vsp) <= 3) {
//		y += sign(vsp)
//	}
//	y = 3;
	//vsp = grav;
//}
if(x>= 990){
	 x=990;
}
if(place_meeting(x, y, oPortal1)){
	// level 2
			global.room++;
			room_goto(Platform5);
}
if(place_meeting(x, y, oPortal2)){
	global.room++;
	room_goto(choose(Platform1, Platform2, Platform3, Platform4));
}

// lava
if (place_meeting(x, y+vsp, oLava)) {
	while (!place_meeting(x, y+sign(vsp), oLava)) {
		y += sign(vsp);
	}
	game_restart()

}

if (place_meeting(x, y+3, oPlatform) && key_jump) {
	vsp = -10;
}
//Damage
if (lava_damage) {
	global.hp = max(0, global.hp - 5);
	lava_damage = false;
}

// horizontal collision
if (place_meeting(x+hsp, y, oPlatform)) {
	while (!place_meeting(x + sign(hsp), y, oPlatform)) {
		x += sign(hsp);
	}
	hsp = 0;
	
}
x += hsp;
// verticl collision
if (place_meeting(x, y+vsp, oPlatform)) {
	while (!place_meeting(x, y+sign(vsp), oPlatform)) {
		y += sign(vsp);
	}
	vsp = 0;

}
y += vsp;

//Animation

//if (!place_meeting(x, y+1, oPlatform)) {
//	image_speed = 0;
//} else {
//	image_speed = 1;
//	if (hsp == 0) {
///		sprite_index = sPlayer;
	//} else {
//		sprite_index = sPlayerW;
//	}
//}

//if (hsp != 0) {
//	image_xscale =  0.125 * sign(hsp);
//}