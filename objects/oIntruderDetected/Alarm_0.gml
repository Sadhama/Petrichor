// Toggle visibility (using the built-in variable)
visible = !visible; 

// Continue blinking if the condition is true

if (isBlinking) {
    alarm[0] = room_speed // Blinks every 0.25 seconds (adjust '4' for speed)
} else {
    visible = true; // Ensure the object is visible when blinking stops
}