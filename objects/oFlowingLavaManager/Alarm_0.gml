var _spawn_x = random_range(64, 848); 
var _spawn_y = -32; 
instance_create_layer(_spawn_x, _spawn_y, "Spawns", oFlowingLava);
alarm[0] = random_range(300, 360); 