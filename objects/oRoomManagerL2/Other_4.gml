if (global.room == 2) {
	var _player_instance = instance_create_layer(50, 48, "Characters", global.player);

	function get_all_instances_on_layer(layer_name) {
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

	var _turret_instances  = get_all_instances_on_layer("Turrets");
	var shuffled_array = array_shuffle(_turret_instances); //

	// 3. Get the first two elements from the shuffled array
	var turret_instance_1 = shuffled_array[0];
	var turret_instance_2 = shuffled_array[1];



	var turret_1 = instance_create_layer(turret_instance_1.x, turret_instance_1.y, "Turrets", oTurret);
	if (turret_1.x > 450) {
		turret_1.image_xscale = -1;
		var bullet_1 = instance_create_layer(turret_1.x-50, turret_1.y, "Turrets", oBullet);
		bullet_1.speed = -8;
	} else {
		var bullet_1 = instance_create_layer(turret_1.x+50, turret_1.y, "Turrets", oBullet);
	}


	var turret_2 = instance_create_layer(turret_instance_2.x, turret_instance_2.y, "Turrets", oTurret);
	if (turret_2.x > 450) {
		turret_2.image_xscale = -1;
		var bullet_2 = instance_create_layer(turret_2.x-50, turret_2.y, "Turrets", oBullet);
		bullet_2.speed = -8;
	} else {
		var bullet_2 = instance_create_layer(turret_2.x+50, turret_2.y, "Turrets", oBullet);
	}

	
}

