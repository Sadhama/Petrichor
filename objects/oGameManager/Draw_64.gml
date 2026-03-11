//coin
draw_set_color(c_white); // Set the text color to white
draw_set_font(fnt_ScoreFont); // Set a custom font (optional, create one first)
draw_set_halign(fa_left); // Align the text to the left (optional)
draw_text(20, 20, "Loot: " + string(global.player_score)); // Draw the text at position (20, 20)