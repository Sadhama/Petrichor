function get_all_instances_on_layer(layer_name) {
		global.gold -= coins_collected;
	    var _layer_id = layer_get_id(layer_name); // Get the layer ID
	    var _elements = layer_get_all_elements(_layer_id); // Get all elements on the layer
	    var _instances = []; // Array to store the instance IDs

	    for (var i = 0; i < array_length(_elements); i++) {
	        var _element_id = _elements[i];
        
	        // Check if the element is an instance type
	        if (layer_get_element_type(_element_id) == layerelementtype_instance) {
	            // Get the actual instance ID from the layer element ID
	            var _inst = layer_instance_get_instance(_element_id); 
	            array_push(_instances, _inst);
	        }
	    }
    
	    return _instances; // Return the array of instances
}

if (global.room == 1) {
	var _player_instance = instance_create_layer(50, 48, "Characters", global.player);
	var _platform_instances = get_all_instances_on_layer("Platform");
	var shuffled_array = array_shuffle(_platform_instances);
	
	var coin_instance_1 = shuffled_array[0];
	var coin_instance_2 = shuffled_array[1];
	var coin_instance_3 = shuffled_array[2];
	var coin_instance_4 = shuffled_array[3];
	var coin_instance_5 = shuffled_array[4];
	
	for (var i = 0; i < 4; i++) {
		instance_create_layer(shuffled_array[i].x, shuffled_array[i].y - 16, "Spawns", oCoin);
	}
}
	//var coin_1 = instance_create_layer(coin_instance_1.x, coin_instance_1.y, "Spawns", oCoin);
	//var coin_2 = instance_create_layer(coin_instance_2.x, coin_instance_2.y, "Spawns", oCoin);
	//var coin_3 = instance_create_layer(coin_instance_3.x, coin_instance_3.y, "Spawns", oCoin);
	//var coin_5 = instance_create_layer(coin_instance_4.x, coin_instance_4.y, "Spawns", oCoin);
	//var coin_1 = instance_create_layer(coin_instance_5.x, coin_instance_5.y, "Spawns", oCoin);
	
	//if (global.room == 2) {
	
	//}
		

