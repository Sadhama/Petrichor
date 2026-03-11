global.player = undefined;
global.hp = 50;
global.max_hp = 50
global.timerOver = false;
global.gold = 0;

global.room = 1;

function drawPlayer() {
	with (global.player) {
		instance_destroy();
	}
	var _player_instance = instance_create_layer(50, 48, "Characters", global.player);
}