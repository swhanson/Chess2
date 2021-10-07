/// @description Insert description here
// You can write your code in this editor
king_x = (inst_friendlyking.x-64)/64
inst_kingmarker.x = inst_minimap.x+(4*king_x)-6
king_y = (inst_friendlyking.y-64)/64-6
inst_kingmarker.y = inst_minimap.y-(4*(16-king_y))+30