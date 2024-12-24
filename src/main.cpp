#include <raylib.h>

int main() {
    // Initialize the window
    const int screenWidth = 800;
    const int screenHeight = 450;
    InitWindow(screenWidth, screenHeight, "Raylib - Basic Window");

    // Set the target FPS (frames per second)
    SetTargetFPS(60);

    // Main game loop
    while (!WindowShouldClose()) { // Check if the window should close
        // Start drawing
        BeginDrawing();

        ClearBackground(RAYWHITE); // Clear the screen with a white color
        DrawText("Welcome to Raylib!", 190, 200, 20, LIGHTGRAY); // Draw some text

        EndDrawing(); // End drawing
    }

    // Close the window and clean up resources
    CloseWindow();

    return 0;
}
