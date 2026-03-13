var collided_instance_platform = instance_place(x, y, oPlatform)
if (collided_instance_platform != noone) {
	with (collided_instance_platform) {
        // Code here runs in the scope of the collided instance
		//instance_create_layer(x, y, "Platform", oTrap);
        instance_destroy(); // Destroy the collided instance
    }
	instance_destroy();
}

if (place_meeting(x, y+vspeed, global.player)) {
	while (!place_meeting(x, y+sign(vspeed), global.player)) {
		y += sign(vspeed);
	}
	instance_destroy();
	global.hp -= 10;

}