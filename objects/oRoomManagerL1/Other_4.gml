if (global.room == 1) {
var _player_instance = instance_create_layer(50, 48, "Characters", global.player);


	//coin
	var _rand_x = irandom_range(200, room_width-200);
	var _rand_y = irandom_range(100, room_height-100);
	if (!place_meeting(_rand_x, _rand_y, oPlatform)) {
		instance_create_layer(_rand_x, _rand_y, "Platform", oCoin);
	}
	//if (global.timeOver) {
	//	instance_create_layer(50, 48, "Characters", global.player);
	//}

}
