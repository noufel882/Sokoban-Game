function  init_enviroment()
{
    gpu_set_texfilter(false);
    game_set_speed(30, gamespeed_fps);
    
    global.movement = {};
    global.movement[$ vk_left]  = -16;
    global.movement[$ vk_right] = 16;
    global.movement[$ vk_up]    = -16;
    global.movement[$ vk_down]  = 16;
}