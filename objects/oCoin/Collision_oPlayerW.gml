global.gold += 3;
rooms[global.room - 1].coins_collected += 3;
audio_play_sound(coinfx, 1, false);
instance_destroy();