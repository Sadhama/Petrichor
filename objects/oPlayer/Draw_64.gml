var health_percentage = (global.hp / global.max_hp) * 100; // Value must be between 0 and 100

// Define the bar's position and size (adjust coordinates as needed)
var x1 = global.player.x ; // Centers the bar above the object
var y1 = global.player.y - bar_height - 10; 
var x2 = global.player.x + bar_width / 2;
var y2 = global.player.y - 10;

// Draw the health bar
draw_healthbar(x1, y1, x2, y2, health_percentage, c_black, c_red, c_lime, 0, true, true);