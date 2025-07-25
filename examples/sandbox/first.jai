Basic  :: #import "Basic"()(MEMORY_DEBUGGER = DEBUG);
System :: #import "System";
String :: #import "String";
Math   :: #import "Math"; #import "Math";
Tuki   :: #import "Tuki" (DEBUG = DEBUG, IMGUI = IMGUI);

#if IMGUI
then ImGui :: #import "ImGui";

main :: () {
    Tuki.run();
    defer Tuki.shutdown();
    
    while Tuki.keep_running() {
        Tuki.draw_circle(pos = Tuki.ONE_2D);
        Tuki.draw_gui_quad();
        Tuki.draw_gui_quad(Tuki.make_matrix(pos = Tuki.RIGHT_2D * 300), tint = Tuki.LIGHT_RED);
        #if IMGUI {
            ImGui.Begin("Buenas tardes!");
            ImGui.End();
        }
    }
}