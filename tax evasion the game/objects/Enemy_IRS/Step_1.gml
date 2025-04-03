direction = point_direction(x , y, global.playerY, global.playerX); 
if direction > 0  and direction < 90{faces_of_evil = ENEMYLD}
if direction > 90 and direction < 180{faces_of_evil = ENEMYLU}
if direction > 180 and direction < 270{faces_of_evil = ENEMYRU}
if direction > 270 and direction < 360{faces_of_evil = ENEMYRD}
sprite_index = sprite[faces_of_evil]

speed = 1
global.enemy_dir = direction