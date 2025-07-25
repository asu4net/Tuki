is_key_down :: (input : SDL_Scancode) -> bool {
    numkeys : s32;
    state := SDL_GetKeyboardState(*numkeys);
    return state[input];
}