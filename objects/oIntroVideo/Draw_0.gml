var _video_data = video_draw();
var _status = _video_data[0]; 
var current = _video_data[1];

if (_status == 0) {
    // Video is PLAYING perfectly
    draw_surface(current, x, y);
}

if (_status == -2) {
    draw_surface(current, 0, 0); // Draws the video at the top-left corner
}