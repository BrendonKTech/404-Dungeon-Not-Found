var target = instance_nearest(mouse_x, mouse_y, obj_enemy_parent);
if (instance_exists(target))
{
	target.hp -= 500
}