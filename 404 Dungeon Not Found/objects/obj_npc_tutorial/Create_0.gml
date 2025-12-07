hp = 20;               // Small HP for tutorial
max_hp = 20;
vulnerable = false;

// Reference tutorial controller
tutorial = instance_exists(obj_tutorial_controller) ? instance_find(obj_tutorial_controller, 0) : noone;
