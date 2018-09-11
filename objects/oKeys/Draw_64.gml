/// @description Insert description here
// You can write your code in this editor
var _leftX = 12;
var _midX = 34;
var _rightX = 56;
var _Y = 36;
draw_sprite(sprKeys, 0, _leftX, _Y);
draw_sprite(sprKeys, 4, _midX, (_Y/2)-4);
draw_sprite(sprKeys, 2, _rightX, _Y);
draw_sprite(sprKeys, 6, _midX, _Y);
if keyboard_check(movement_inputs[0]) {
	draw_sprite(sprKeys, 1, _leftX, _Y);
}
if keyboard_check(movement_inputs[1]) {
	draw_sprite(sprKeys, 3, _rightX, _Y);
}
if keyboard_check(movement_inputs[2]) {
	draw_sprite(sprKeys, 5, _midX, (_Y/2)-4);
}
if keyboard_check(movement_inputs[3]) {
	draw_sprite(sprKeys, 7, _midX, _Y);
}