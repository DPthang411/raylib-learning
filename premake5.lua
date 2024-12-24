workspace "RaylibProject"
    architecture "x64"
    configurations { "Debug", "Release" }

project "MainApp"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    targetdir "bin/%{cfg.buildcfg}"    -- Output directory
    objdir "bin-int/%{cfg.buildcfg}"  -- Intermediate directory

    files { "../src/main.cpp" } -- Path to your source and header files

    includedirs { "../library/raylib/include/**" } -- Path to raylib headers
    libdirs { "../library/raylib/lib/**" }        -- Path to raylib library files

    links { "raylib" } -- Link raylib
    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
