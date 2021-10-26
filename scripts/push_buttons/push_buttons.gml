///push_buttons()

function push_buttons()
{
	push = max(keyboard_check_pressed(ord("Z")),
			   keyboard_check_pressed(vk_enter),
			   keyboard_check_pressed(vk_space),0)
}