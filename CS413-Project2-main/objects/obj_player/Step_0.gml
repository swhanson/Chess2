/// @description Insert description here
// You can write your code in this editor


right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

x -= speed; // don't know why but we slide to right constantly without htis
x += (right-left)*speed;
y += (down-up)*speed;