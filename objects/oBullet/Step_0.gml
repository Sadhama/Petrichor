if(place_meeting(x, y, oBorder) || place_meeting(x, y, oPlatform)) {
		if (oBullet.speed > 0) {
			var b = instance_create_layer(startx, starty, "Turrets", oBullet);
			b.direction = 0;
			b.speed = 8;
			instance_destroy(self);
		} else {
			var b = instance_create_layer(startx, starty, "Turrets", oBullet);
			b.direction = 0;
			b.speed = -8;
			instance_destroy(self);
		}
		
	}

/*if (x > room_width || x< 0 || y > room_height || y < 0){
	instance_destroy();
}

*/

if (place_meeting(x, y, global.player)) {
	
		global.hp--;
		//flash = 3;
		if (oBullet.speed > 0) {
			var b = instance_create_layer(startx, starty, "Turrets", oBullet);
			b.direction = 0;
			b.speed = 8;
			instance_destroy(self);
		} else {
			var b = instance_create_layer(startx, starty, "Turrets", oBullet);
			b.direction = 0;
			b.speed = -8;
			instance_destroy(self);
		}
		//var b = instance_create_layer(startx, starty, "Turrets", oBullet);
		//b.direction = 0;
		//b.speed = 8;
		//instance_destroy(self);
		if (global.hp <= 0) {
			game_restart();
		}

		
	
}

